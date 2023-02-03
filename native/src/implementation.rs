use std::str::FromStr;

use bitflags::bitflags;

use flutter_rust_bridge::StreamSink;
use once_cell::sync::OnceCell;

use btleplug::{
    api::{
        BDAddr, Central, CentralEvent, CharPropFlags, Characteristic, Manager as _, Peripheral,
        ScanFilter, WriteType,
    },
    platform::{Adapter, Manager, PeripheralId},
};
use futures::Future;
use tokio::runtime::Runtime;
use uuid::Uuid;

use crate::api::*;

use anyhow::{Context, Error, Result};
use futures::stream::StreamExt;

// Infra: ------------------------------------------------------------
pub struct AdapterWithIndex {
    pub adapter: Adapter,
    pub index: usize,
}

fn global_runtime() -> &'static Runtime {
    static INSTANCE: OnceCell<Runtime> = OnceCell::new();
    INSTANCE.get_or_init(|| Runtime::new().unwrap())
}

fn run_blocking<F: Future>(future: F) -> F::Output {
    global_runtime().block_on(future)
}

fn global_adapters() -> &'static Vec<AdapterWithIndex> {
    static INSTANCE: OnceCell<Vec<AdapterWithIndex>> = OnceCell::new();
    INSTANCE.get_or_init(|| {
        run_blocking(async {
            let manager = Manager::new().await.unwrap();
            let adapters = manager.adapters().await.unwrap();
            adapters
                .into_iter()
                .enumerate()
                .map(|(i, a)| AdapterWithIndex {
                    adapter: a,
                    index: i,
                })
                .collect()
        })
    })
}

fn get_adapter_unsafe(index: usize) -> &'static AdapterWithIndex {
    &global_adapters()[index]
}

// Impl: ------------------------------------------------------------

impl AoiAdapter {
    pub fn get_adapters_impl() -> Vec<AoiAdapter> {
        global_adapters().iter().map(|a| a.into()).collect()
    }

    pub fn start_scan_impl(
        &self,
        filter: Option<FilterCriteria>,
        sink: StreamSink<AoiPeripheral>,
    ) -> Result<()> {
        let adapter = get_adapter_unsafe(self.index);
        run_blocking(async {
            adapter.adapter.start_scan(ScanFilter::default()).await?;

            let mut events = adapter.adapter.events().await?;

            while let Some(event) = events.next().await {
                let id = match event {
                    CentralEvent::DeviceDiscovered(id) => id,
                    CentralEvent::DeviceUpdated(id) => id,
                    CentralEvent::DeviceConnected(id) => id,
                    CentralEvent::DeviceDisconnected(id) => id,
                    CentralEvent::ManufacturerDataAdvertisement {
                        id,
                        manufacturer_data: _,
                    } => id,
                    CentralEvent::ServiceDataAdvertisement {
                        id,
                        service_data: _,
                    } => id,
                    CentralEvent::ServicesAdvertisement { id, services: _ } => id,
                };

                if let Some(peripheral) = AoiPeripheral::create(adapter, &id).await {
                    if Self::filter(&peripheral, &filter) {
                        sink.add(peripheral);
                    }
                }
            }

            sink.close();
            Ok(())
        })
    }

    fn filter(perpheral: &AoiPeripheral, filter: &Option<FilterCriteria>) -> bool {
        if let Some(criteria) = filter {
            match criteria {
                FilterCriteria::Any(any) => {
                    return any.iter().any(|c| Self::matches_criterion(perpheral, c))
                }
                FilterCriteria::All(all) => {
                    return all.iter().all(|c| Self::matches_criterion(perpheral, c))
                }
            }
        }
        true
    }

    fn matches_criterion(perpheral: &AoiPeripheral, criterion: &FilterCriterion) -> bool {
        match criterion {
            FilterCriterion::HasServiceUuid(service) => perpheral
                .services
                .iter()
                .any(|s| s.to_lowercase() == service.to_lowercase()),
            FilterCriterion::NameMatchesExactly(name) => perpheral.name == Some(name.to_string()),
            FilterCriterion::NameContains(name_subset) => {
                if let Some(n) = &perpheral.name {
                    n.contains(name_subset)
                } else {
                    false
                }
            }
            FilterCriterion::ManufacturerDataMatches(data) => &perpheral.manufacturer_data == data,
        }
    }

    pub fn stop_scan_impl(&self) -> Result<()> {
        let adapter = get_adapter_unsafe(self.index);
        run_blocking(async {
            adapter.adapter.stop_scan().await?;
            Ok(())
        })
    }
}

impl AoiPeripheral {
    pub fn connect_impl(&self) -> Result<AoiConnectedPeripheral> {
        run_blocking(async {
            let peripheral = self.into_peripheral().await;
            peripheral.connect().await?;
            peripheral.discover_services().await?;

            let characteristics = peripheral
                .characteristics()
                .iter()
                .to_owned()
                .map(|c| c.into())
                .collect();

            Ok(AoiConnectedPeripheral {
                peripheral: Box::new(self.clone()),
                characteristics: characteristics,
            })
        })
    }
}

impl AoiConnectedPeripheral {
    pub fn read_impl(&self, characteristic: AoiCharacteristic) -> Result<Vec<u8>> {
        run_blocking(async {
            let peripheral = self.peripheral.into_peripheral().await;
            Ok(peripheral.read(&characteristic.try_into()?).await?)
        })
    }

    pub fn write_impl(&self, characteristic: AoiCharacteristic, data: Vec<u8>) -> Result<()> {
        run_blocking(async {
            let peripheral = self.peripheral.into_peripheral().await;
            peripheral
                .write(&characteristic.try_into()?, &data, WriteType::WithResponse)
                .await?;
            Ok(())
        })
    }

    pub fn disconnect_impl(&self) -> Result<()> {
        run_blocking(async {
            let peripheral = self.peripheral.into_peripheral().await;
            peripheral.disconnect().await?;
            Ok(())
        })
    }
}

bitflags! {
    #[derive(Debug, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub struct AoiCharPropFlags: u8 {
        const BROADCAST = 0x01;
        const READ = 0x02;
        const WRITE_WITHOUT_RESPONSE = 0x04;
        const WRITE = 0x08;
        const NOTIFY = 0x10;
        const INDICATE = 0x20;
        const AUTHENTICATED_SIGNED_WRITES = 0x40;
        const EXTENDED_PROPERTIES = 0x80;
    }
}

impl AoiCharacteristic {
    pub fn get_properties_impl(&self) -> Vec<i32> {
        AoiCharPropFlags::all()
            .iter()
            .filter(|p| p.bits() & self.properties > 0)
            .enumerate()
            .map(|(i, _)| i as i32)
            .collect()
    }
}

// Mapping: ------------------------------------------------------------

impl From<AoiAdapter> for &AdapterWithIndex {
    fn from(a: AoiAdapter) -> Self {
        get_adapter_unsafe(a.index)
    }
}

impl From<&AdapterWithIndex> for AoiAdapter {
    fn from(adapter: &AdapterWithIndex) -> Self {
        global_adapters()
            .iter()
            .enumerate()
            .filter(|(i, _)| *i == adapter.index)
            .map(|(i, _)| AoiAdapter { index: i })
            .next()
            .unwrap()
    }
}

impl AoiPeripheral {
    pub async fn create(adapter: &AdapterWithIndex, id: &PeripheralId) -> Option<AoiPeripheral> {
        if let Ok(peripheral) = adapter.adapter.peripheral(id).await {
            if let Ok(Some(properties)) = peripheral.properties().await {
                let name = properties.local_name;
                let services = properties.services.iter().map(|u| u.to_string()).collect();
                // let manufacturer_data = properties.manufacturer_data.into_values().collect::<Vec<u8>>();

                return Some(AoiPeripheral {
                    adapter: Box::new(adapter.into()),
                    name,
                    address: Box::new(Self::into_address(&peripheral)),
                    services,
                    manufacturer_data: vec![], // TODO
                });
            } else {
                return Some(AoiPeripheral {
                    adapter: Box::new(adapter.into()),
                    name: None,
                    address: Box::new(Self::into_address(&peripheral)),
                    services: vec![],
                    manufacturer_data: vec![], // TODO
                });
            }
        }
        None
    }

    #[cfg(target_os = "windows")]
    fn into_address(peripheral: &impl Peripheral) -> AoiPeripheralAddress {
        AoiPeripheralAddress::MacAddress(peripheral.address().into_inner())
    }

    #[cfg(any(target_os = "macos", target_os = "ios"))]
    fn into_address(peripheral: &impl Peripheral) -> AoiPeripheralAddress {
        AoiPeripheralAddress::Uuid(peripheral.id().into())
    }
}

impl AoiPeripheral {
    pub async fn into_peripheral(&self) -> impl Peripheral {
        let adapter = get_adapter_unsafe(self.adapter.index);
        adapter.adapter.peripheral(&self.get_id()).await.unwrap()
    }

    fn get_id(&self) -> PeripheralId {
        self.address.as_ref().into()
    }
}

#[cfg(target_os = "windows")]
impl From<&AoiPeripheralAddress> for PeripheralId {
    fn from(address: &AoiPeripheralAddress) -> Self {
        match address {
            AoiPeripheralAddress::MacAddress(mac) => {
                let addr: BDAddr = (*mac).into();
                addr.into()
            }
            AoiPeripheralAddress::Uuid(_) => panic!("Expected mac address on windows but got UUID"),
        }
    }
}

#[cfg(any(target_os = "macos", target_os = "ios"))]
impl From<&AoiPeripheralAddress> for PeripheralId {
    fn from(address: &AoiPeripheralAddress) -> Self {
        match address {
            AoiPeripheralAddress::MacAddress(mac) => {
                panic!("Expect UUID on mac/ios and but got mac address")
            }
            AoiPeripheralAddress::Uuid(uuid_string) => {
                let uuid = Uuid::from_str(uuid_string.as_str());
                uuid.into()
            }
        }
    }
}

impl From<&Characteristic> for AoiCharacteristic {
    fn from(c: &Characteristic) -> Self {
        AoiCharacteristic {
            uuid: c.uuid.to_string(),
            service_uuid: c.service_uuid.to_string(),
            properties: c.properties.bits(),
        }
    }
}

impl TryFrom<AoiCharacteristic> for Characteristic {
    type Error = Error;

    fn try_from(c: AoiCharacteristic) -> Result<Self, Self::Error> {
        Ok(Characteristic {
            uuid: Uuid::from_str(c.uuid.as_str())?,
            service_uuid: Uuid::from_str(c.service_uuid.as_str())?,
            properties: CharPropFlags::from_bits(c.properties).context("invalid flags")?,
        })
    }
}
