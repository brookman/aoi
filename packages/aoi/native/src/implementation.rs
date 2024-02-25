use flutter_rust_bridge::StreamSink;
use once_cell::sync::{Lazy, OnceCell};
use std::{
    collections::{BTreeSet, HashSet},
    str::FromStr,
    sync::Mutex,
    time::Duration,
};

use btleplug::{
    api::{
        Central, CentralEvent, CharPropFlags, Characteristic, Descriptor, Manager as _, Peripheral,
        ScanFilter, WriteType,
    },
    platform::{Adapter, Manager, PeripheralId},
};

#[cfg(not(any(target_os = "macos", target_os = "ios")))]
use btleplug::api::BDAddr;

use futures::Future;
use tokio::{runtime::Runtime, time::timeout};
use uuid::Uuid;

use crate::api::*;

use anyhow::{Context, Error, Result};
use futures::stream::StreamExt;

// Infra: ------------------------------------------------------------
const READ_WRITE_TIMEOUT: Duration = Duration::from_secs(5);

pub struct AdapterWithIndex {
    pub adapter: Adapter,
    pub index: usize,
}

static SCAN_STATUS: Lazy<Mutex<HashSet<usize>>> = Lazy::new(|| Mutex::new(HashSet::new()));

fn global_adapter_scanning(adapter_index: &usize) -> bool {
    SCAN_STATUS.lock().unwrap().contains(adapter_index)
}

fn global_set_adapter_scanning(adapter_index: usize, value: bool) {
    if value {
        SCAN_STATUS.lock().unwrap().insert(adapter_index);
    } else {
        SCAN_STATUS.lock().unwrap().remove(&adapter_index);
    }
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
            global_set_adapter_scanning(self.index, true);

            let mut events = adapter.adapter.events().await?;

            while global_adapter_scanning(&self.index) {
                let maybe_event = timeout(Duration::from_secs(1), events.next()).await;
                if let Ok(Some(event)) = maybe_event {
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
            FilterCriterion::ManufacturerId(id) => perpheral
                .manufacturer_data
                .iter()
                .any(|m| m.manufacturer_id == *id),
            FilterCriterion::ManufacturerData(id, data) => perpheral
                .manufacturer_data
                .iter()
                .any(|m| m.manufacturer_id == *id && m.data == *data),
        }
    }

    pub fn stop_scan_impl(&self) -> Result<()> {
        let adapter = get_adapter_unsafe(self.index);
        run_blocking(async {
            global_set_adapter_scanning(self.index, false);
            adapter.adapter.stop_scan().await?;
            Ok(())
        })
    }
}

impl AoiPeripheral {
    pub fn connect_impl(&self) -> Result<AoiConnectedPeripheral> {
        run_blocking(async {
            let peripheral = self.as_peripheral().await?;
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
                characteristics,
            })
        })
    }
}

impl AoiConnectedPeripheral {
    pub fn read_impl(&self, characteristic: AoiCharacteristic) -> Result<Vec<u8>> {
        run_blocking(async {
            let peripheral = self.peripheral.as_peripheral().await?;
            let characteristic: Characteristic = characteristic.try_into()?;
            let read_future = peripheral.read(&characteristic);
            let result = timeout(READ_WRITE_TIMEOUT, read_future).await?;
            result.context("Could not read characteristic")
        })
    }

    pub fn write_impl(&self, characteristic: AoiCharacteristic, data: Vec<u8>) -> Result<()> {
        run_blocking(async {
            self.write_internal(characteristic, data, WriteType::WithResponse)
                .await
        })
    }

    pub fn write_without_response_impl(
        &self,
        characteristic: AoiCharacteristic,
        data: Vec<u8>,
    ) -> Result<()> {
        run_blocking(async {
            self.write_internal(characteristic, data, WriteType::WithoutResponse)
                .await
        })
    }

    async fn write_internal(
        &self,
        characteristic: AoiCharacteristic,
        data: Vec<u8>,
        write_type: WriteType,
    ) -> Result<()> {
        let peripheral = self.peripheral.as_peripheral().await?;
        let characteristic: Characteristic = characteristic.try_into()?;
        let write_future = peripheral.write(&characteristic, &data, write_type);
        let result = timeout(READ_WRITE_TIMEOUT, write_future).await?;
        result.context("Could not write characteristic")
    }

    pub fn disconnect_impl(&self) -> Result<()> {
        run_blocking(async {
            let peripheral = self.peripheral.as_peripheral().await?;
            peripheral.disconnect().await?;
            Ok(())
        })
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
                let manufacturer_data = properties
                    .manufacturer_data
                    .into_iter()
                    .map(|(manufacturer_id, data)| AoiManufacturerData {
                        manufacturer_id,
                        data,
                    })
                    .collect::<Vec<_>>();

                return Some(AoiPeripheral {
                    adapter: Box::new(adapter.into()),
                    name,
                    address: Box::new(Self::into_address(&peripheral)),
                    services,
                    manufacturer_data,
                });
            } else {
                return Some(AoiPeripheral {
                    adapter: Box::new(adapter.into()),
                    name: None,
                    address: Box::new(Self::into_address(&peripheral)),
                    services: vec![],
                    manufacturer_data: vec![],
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
        let id_string = format!("{:?}", &peripheral.id()); // TODO: Get rid of this workaround
        let id_str = id_string.as_str();
        let uuid_string = id_str[13..49].to_string();
        AoiPeripheralAddress::Uuid(uuid_string)
    }

    #[cfg(target_os = "linux")]
    fn into_address(peripheral: &impl Peripheral) -> AoiPeripheralAddress {
        let id_string = format!("/org/bluez/{}", &peripheral.id());
        AoiPeripheralAddress::DeviceId(id_string)
    }
}

impl AoiPeripheral {
    pub async fn as_peripheral(&self) -> Result<impl Peripheral> {
        let adapter = get_adapter_unsafe(self.adapter.index);
        adapter
            .adapter
            .peripheral(&self.get_id())
            .await
            .context("Could not get peripheral")
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
            AoiPeripheralAddress::Uuid(_) => {
                panic!("Expected mac address on Windows but got UUID")
            }
            AoiPeripheralAddress::DeviceId(_) => {
                panic!("Expected mac address on Windows but got DeviceId")
            }
        }
    }
}

#[cfg(any(target_os = "macos", target_os = "ios"))]
impl From<&AoiPeripheralAddress> for PeripheralId {
    fn from(address: &AoiPeripheralAddress) -> Self {
        match address {
            AoiPeripheralAddress::MacAddress(_) => {
                panic!("Expect UUID on mac/ios and but got mac address")
            }
            AoiPeripheralAddress::Uuid(uuid_string) => {
                let uuid = Uuid::from_str(uuid_string.as_str()).unwrap();
                uuid.into()
            }
            AoiPeripheralAddress::DeviceId(_) => {
                panic!("Expect UUID on mac/ios and but got DeviceId")
            }
        }
    }
}

#[cfg(target_os = "linux")]
impl From<&AoiPeripheralAddress> for PeripheralId {
    fn from(address: &AoiPeripheralAddress) -> Self {
        match address {
            AoiPeripheralAddress::MacAddress(mac) => {
                panic!("Expected DeviceId on Linux but got mac address")
            }
            AoiPeripheralAddress::Uuid(_) => {
                panic!("Expected DeviceId on Linux but got UUID")
            }
            AoiPeripheralAddress::DeviceId(_) => {
                todo!("Not implemented yet")
            }
        }
    }
}

impl From<&Characteristic> for AoiCharacteristic {
    fn from(c: &Characteristic) -> Self {
        AoiCharacteristic {
            uuid: c.uuid.to_string(),
            service_uuid: c.service_uuid.to_string(),
            properties_bits: c.properties.bits(),
            descriptors: c
                .descriptors
                .iter()
                .map(|d| AoiDescriptor {
                    uuid: d.uuid.to_string(),
                    service_uuid: d.service_uuid.to_string(),
                    characteristic_uuid: d.characteristic_uuid.to_string(),
                })
                .collect::<Vec<_>>(),
        }
    }
}

impl TryFrom<AoiCharacteristic> for Characteristic {
    type Error = Error;

    fn try_from(c: AoiCharacteristic) -> Result<Self, Self::Error> {
        Ok(Characteristic {
            uuid: Uuid::from_str(c.uuid.as_str())?,
            service_uuid: Uuid::from_str(c.service_uuid.as_str())?,
            properties: CharPropFlags::from_bits(c.properties_bits).context("invalid bits")?,
            descriptors: c
                .descriptors
                .iter()
                .map(|d| Descriptor {
                    uuid: Uuid::from_str(d.uuid.as_str()).unwrap(),
                    service_uuid: Uuid::from_str(d.service_uuid.as_str()).unwrap(),
                    characteristic_uuid: Uuid::from_str(d.characteristic_uuid.as_str()).unwrap(),
                })
                .collect::<BTreeSet<_>>(),
        })
    }
}
