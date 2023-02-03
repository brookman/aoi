use super::*;
// Section: wire functions

#[wasm_bindgen]
pub fn wire_get_adapters__static_method__AoiAdapter(port_: MessagePort) {
    wire_get_adapters__static_method__AoiAdapter_impl(port_)
}

#[wasm_bindgen]
pub fn wire_start_scan__method__AoiAdapter(port_: MessagePort, that: JsValue, filter: JsValue) {
    wire_start_scan__method__AoiAdapter_impl(port_, that, filter)
}

#[wasm_bindgen]
pub fn wire_stop_scan__method__AoiAdapter(port_: MessagePort, that: JsValue) {
    wire_stop_scan__method__AoiAdapter_impl(port_, that)
}

#[wasm_bindgen]
pub fn wire_connect__method__AoiPeripheral(port_: MessagePort, that: JsValue) {
    wire_connect__method__AoiPeripheral_impl(port_, that)
}

#[wasm_bindgen]
pub fn wire_read__method__AoiConnectedPeripheral(
    port_: MessagePort,
    that: JsValue,
    characteristic: JsValue,
) {
    wire_read__method__AoiConnectedPeripheral_impl(port_, that, characteristic)
}

#[wasm_bindgen]
pub fn wire_write__method__AoiConnectedPeripheral(
    port_: MessagePort,
    that: JsValue,
    characteristic: JsValue,
    data: Box<[u8]>,
) {
    wire_write__method__AoiConnectedPeripheral_impl(port_, that, characteristic, data)
}

#[wasm_bindgen]
pub fn wire_disconnect__method__AoiConnectedPeripheral(port_: MessagePort, that: JsValue) {
    wire_disconnect__method__AoiConnectedPeripheral_impl(port_, that)
}

#[wasm_bindgen]
pub fn wire_get_properties__method__AoiCharacteristic(port_: MessagePort, that: JsValue) {
    wire_get_properties__method__AoiCharacteristic_impl(port_, that)
}

// Section: allocate functions

// Section: related functions

// Section: impl Wire2Api

impl Wire2Api<String> for String {
    fn wire2api(self) -> String {
        self
    }
}
impl Wire2Api<Vec<String>> for JsValue {
    fn wire2api(self) -> Vec<String> {
        self.dyn_into::<JsArray>()
            .unwrap()
            .iter()
            .map(Wire2Api::wire2api)
            .collect()
    }
}
impl Wire2Api<AoiAdapter> for JsValue {
    fn wire2api(self) -> AoiAdapter {
        let self_ = self.dyn_into::<JsArray>().unwrap();
        assert_eq!(
            self_.length(),
            1,
            "Expected 1 elements, got {}",
            self_.length()
        );
        AoiAdapter {
            index: self_.get(0).wire2api(),
        }
    }
}
impl Wire2Api<AoiCharacteristic> for JsValue {
    fn wire2api(self) -> AoiCharacteristic {
        let self_ = self.dyn_into::<JsArray>().unwrap();
        assert_eq!(
            self_.length(),
            3,
            "Expected 3 elements, got {}",
            self_.length()
        );
        AoiCharacteristic {
            uuid: self_.get(0).wire2api(),
            service_uuid: self_.get(1).wire2api(),
            properties: self_.get(2).wire2api(),
        }
    }
}
impl Wire2Api<AoiConnectedPeripheral> for JsValue {
    fn wire2api(self) -> AoiConnectedPeripheral {
        let self_ = self.dyn_into::<JsArray>().unwrap();
        assert_eq!(
            self_.length(),
            2,
            "Expected 2 elements, got {}",
            self_.length()
        );
        AoiConnectedPeripheral {
            peripheral: self_.get(0).wire2api(),
            characteristics: self_.get(1).wire2api(),
        }
    }
}
impl Wire2Api<AoiPeripheral> for JsValue {
    fn wire2api(self) -> AoiPeripheral {
        let self_ = self.dyn_into::<JsArray>().unwrap();
        assert_eq!(
            self_.length(),
            5,
            "Expected 5 elements, got {}",
            self_.length()
        );
        AoiPeripheral {
            adapter: self_.get(0).wire2api(),
            name: self_.get(1).wire2api(),
            address: self_.get(2).wire2api(),
            services: self_.get(3).wire2api(),
            manufacturer_data: self_.get(4).wire2api(),
        }
    }
}

impl Wire2Api<FilterCriteria> for JsValue {
    fn wire2api(self) -> FilterCriteria {
        let self_ = self.unchecked_into::<JsArray>();
        match self_.get(0).unchecked_into_f64() as _ {
            0 => FilterCriteria::Any(self_.get(1).wire2api()),
            1 => FilterCriteria::All(self_.get(1).wire2api()),
            _ => unreachable!(),
        }
    }
}
impl Wire2Api<FilterCriterion> for JsValue {
    fn wire2api(self) -> FilterCriterion {
        let self_ = self.unchecked_into::<JsArray>();
        match self_.get(0).unchecked_into_f64() as _ {
            0 => FilterCriterion::HasServiceUuid(self_.get(1).wire2api()),
            1 => FilterCriterion::NameMatchesExactly(self_.get(1).wire2api()),
            2 => FilterCriterion::NameContains(self_.get(1).wire2api()),
            3 => FilterCriterion::ManufacturerDataMatches(self_.get(1).wire2api()),
            _ => unreachable!(),
        }
    }
}
impl Wire2Api<Vec<AoiCharacteristic>> for JsValue {
    fn wire2api(self) -> Vec<AoiCharacteristic> {
        self.dyn_into::<JsArray>()
            .unwrap()
            .iter()
            .map(Wire2Api::wire2api)
            .collect()
    }
}
impl Wire2Api<Vec<FilterCriterion>> for JsValue {
    fn wire2api(self) -> Vec<FilterCriterion> {
        self.dyn_into::<JsArray>()
            .unwrap()
            .iter()
            .map(Wire2Api::wire2api)
            .collect()
    }
}
impl Wire2Api<Option<String>> for Option<String> {
    fn wire2api(self) -> Option<String> {
        self.map(Wire2Api::wire2api)
    }
}
impl Wire2Api<Option<FilterCriteria>> for JsValue {
    fn wire2api(self) -> Option<FilterCriteria> {
        (!self.is_undefined() && !self.is_null()).then(|| self.wire2api())
    }
}

impl Wire2Api<[u8; 6]> for Box<[u8]> {
    fn wire2api(self) -> [u8; 6] {
        let vec: Vec<u8> = self.wire2api();
        support::from_vec_to_array(vec)
    }
}
impl Wire2Api<Vec<u8>> for Box<[u8]> {
    fn wire2api(self) -> Vec<u8> {
        self.into_vec()
    }
}

// Section: impl Wire2Api for JsValue

impl Wire2Api<String> for JsValue {
    fn wire2api(self) -> String {
        self.as_string().expect("non-UTF-8 string, or not a string")
    }
}
impl Wire2Api<Box<AoiAdapter>> for JsValue {
    fn wire2api(self) -> Box<AoiAdapter> {
        Box::new(self.wire2api())
    }
}
impl Wire2Api<Box<AoiPeripheral>> for JsValue {
    fn wire2api(self) -> Box<AoiPeripheral> {
        Box::new(self.wire2api())
    }
}
impl Wire2Api<Option<String>> for JsValue {
    fn wire2api(self) -> Option<String> {
        (!self.is_undefined() && !self.is_null()).then(|| self.wire2api())
    }
}
impl Wire2Api<u8> for JsValue {
    fn wire2api(self) -> u8 {
        self.unchecked_into_f64() as _
    }
}
impl Wire2Api<[u8; 6]> for JsValue {
    fn wire2api(self) -> [u8; 6] {
        let vec: Vec<u8> = self.wire2api();
        support::from_vec_to_array(vec)
    }
}
impl Wire2Api<Vec<u8>> for JsValue {
    fn wire2api(self) -> Vec<u8> {
        self.unchecked_into::<js_sys::Uint8Array>().to_vec().into()
    }
}
impl Wire2Api<usize> for JsValue {
    fn wire2api(self) -> usize {
        self.unchecked_into_f64() as _
    }
}
