use anyhow::Result;
use flutter_rust_bridge::StreamSink;

#[derive(Debug, Clone)]
pub enum FilterCriteria {
    Any(Vec<FilterCriterion>),
    All(Vec<FilterCriterion>),
}

#[derive(Debug, Clone)]
pub enum FilterCriterion {
    HasServiceUuid(String),
    NameMatchesExactly(String),
    NameContains(String),
    ManufacturerDataMatches(Vec<u8>),
}

#[derive(Debug, Clone)]
pub struct AoiAdapter {
    pub index: usize,
}

#[derive(Debug, Clone)]
pub struct AoiPeripheral {
    pub adapter: Box<AoiAdapter>,
    pub name: Option<String>,
    pub address: [u8; 6],
    pub services: Vec<String>,
    pub manufacturer_data: Vec<u8>,
}

#[derive(Debug, Clone)]
pub struct AoiConnectedPeripheral {
    pub peripheral: Box<AoiPeripheral>,
    pub characteristics: Vec<AoiCharacteristic>,
}

#[derive(Debug, Clone)]
pub struct AoiCharacteristic {
    pub uuid: String,
    pub service_uuid: String,
    pub properties: u8,
}

impl AoiAdapter {
    pub fn get_adapters() -> Vec<AoiAdapter> {
        Self::get_adapters_impl()
    }

    pub fn start_scan(
        &self,
        filter: Option<FilterCriteria>,
        sink: StreamSink<AoiPeripheral>,
    ) -> Result<()> {
        self.start_scan_impl(filter, sink)
    }

    pub fn stop_scan(&self) -> Result<()> {
        self.stop_scan_impl()
    }
}

impl AoiPeripheral {
    pub fn connect(&self) -> Result<AoiConnectedPeripheral> {
        self.connect_impl()
    }
}

impl AoiConnectedPeripheral {
    pub fn read(&self, characteristic: AoiCharacteristic) -> Result<Vec<u8>> {
        self.read_impl(characteristic)
    }

    pub fn write(&self, characteristic: AoiCharacteristic, data: Vec<u8>) -> Result<()> {
        self.write_impl(characteristic, data)
    }

    pub fn disconnect(&self) -> Result<()> {
        self.disconnect_impl()
    }
}

impl AoiCharacteristic {
    pub fn get_properties(&self) -> Vec<i32> {
        self.get_properties_impl()
    }
}
