use super::*;
// Section: wire functions

#[no_mangle]
pub extern "C" fn wire_get_adapters__static_method__AoiAdapter(port_: i64) {
    wire_get_adapters__static_method__AoiAdapter_impl(port_)
}

#[no_mangle]
pub extern "C" fn wire_start_scan__method__AoiAdapter(
    port_: i64,
    that: *mut wire_AoiAdapter,
    filter: *mut wire_FilterCriteria,
) {
    wire_start_scan__method__AoiAdapter_impl(port_, that, filter)
}

#[no_mangle]
pub extern "C" fn wire_stop_scan__method__AoiAdapter(port_: i64, that: *mut wire_AoiAdapter) {
    wire_stop_scan__method__AoiAdapter_impl(port_, that)
}

#[no_mangle]
pub extern "C" fn wire_connect__method__AoiPeripheral(port_: i64, that: *mut wire_AoiPeripheral) {
    wire_connect__method__AoiPeripheral_impl(port_, that)
}

#[no_mangle]
pub extern "C" fn wire_read__method__AoiConnectedPeripheral(
    port_: i64,
    that: *mut wire_AoiConnectedPeripheral,
    characteristic: *mut wire_AoiCharacteristic,
) {
    wire_read__method__AoiConnectedPeripheral_impl(port_, that, characteristic)
}

#[no_mangle]
pub extern "C" fn wire_write__method__AoiConnectedPeripheral(
    port_: i64,
    that: *mut wire_AoiConnectedPeripheral,
    characteristic: *mut wire_AoiCharacteristic,
    data: *mut wire_uint_8_list,
) {
    wire_write__method__AoiConnectedPeripheral_impl(port_, that, characteristic, data)
}

#[no_mangle]
pub extern "C" fn wire_disconnect__method__AoiConnectedPeripheral(
    port_: i64,
    that: *mut wire_AoiConnectedPeripheral,
) {
    wire_disconnect__method__AoiConnectedPeripheral_impl(port_, that)
}

#[no_mangle]
pub extern "C" fn wire_get_properties__method__AoiCharacteristic(
    port_: i64,
    that: *mut wire_AoiCharacteristic,
) {
    wire_get_properties__method__AoiCharacteristic_impl(port_, that)
}

// Section: allocate functions

#[no_mangle]
pub extern "C" fn new_StringList_0(len: i32) -> *mut wire_StringList {
    let wrap = wire_StringList {
        ptr: support::new_leak_vec_ptr(<*mut wire_uint_8_list>::new_with_null_ptr(), len),
        len,
    };
    support::new_leak_box_ptr(wrap)
}

#[no_mangle]
pub extern "C" fn new_box_aoi_adapter_0() -> *mut wire_AoiAdapter {
    support::new_leak_box_ptr(wire_AoiAdapter::new_with_null_ptr())
}

#[no_mangle]
pub extern "C" fn new_box_aoi_peripheral_0() -> *mut wire_AoiPeripheral {
    support::new_leak_box_ptr(wire_AoiPeripheral::new_with_null_ptr())
}

#[no_mangle]
pub extern "C" fn new_box_autoadd_aoi_adapter_0() -> *mut wire_AoiAdapter {
    support::new_leak_box_ptr(wire_AoiAdapter::new_with_null_ptr())
}

#[no_mangle]
pub extern "C" fn new_box_autoadd_aoi_characteristic_0() -> *mut wire_AoiCharacteristic {
    support::new_leak_box_ptr(wire_AoiCharacteristic::new_with_null_ptr())
}

#[no_mangle]
pub extern "C" fn new_box_autoadd_aoi_connected_peripheral_0() -> *mut wire_AoiConnectedPeripheral {
    support::new_leak_box_ptr(wire_AoiConnectedPeripheral::new_with_null_ptr())
}

#[no_mangle]
pub extern "C" fn new_box_autoadd_aoi_peripheral_0() -> *mut wire_AoiPeripheral {
    support::new_leak_box_ptr(wire_AoiPeripheral::new_with_null_ptr())
}

#[no_mangle]
pub extern "C" fn new_box_autoadd_filter_criteria_0() -> *mut wire_FilterCriteria {
    support::new_leak_box_ptr(wire_FilterCriteria::new_with_null_ptr())
}

#[no_mangle]
pub extern "C" fn new_list_aoi_characteristic_0(len: i32) -> *mut wire_list_aoi_characteristic {
    let wrap = wire_list_aoi_characteristic {
        ptr: support::new_leak_vec_ptr(<wire_AoiCharacteristic>::new_with_null_ptr(), len),
        len,
    };
    support::new_leak_box_ptr(wrap)
}

#[no_mangle]
pub extern "C" fn new_list_filter_criterion_0(len: i32) -> *mut wire_list_filter_criterion {
    let wrap = wire_list_filter_criterion {
        ptr: support::new_leak_vec_ptr(<wire_FilterCriterion>::new_with_null_ptr(), len),
        len,
    };
    support::new_leak_box_ptr(wrap)
}

#[no_mangle]
pub extern "C" fn new_uint_8_list_0(len: i32) -> *mut wire_uint_8_list {
    let ans = wire_uint_8_list {
        ptr: support::new_leak_vec_ptr(Default::default(), len),
        len,
    };
    support::new_leak_box_ptr(ans)
}

// Section: related functions

// Section: impl Wire2Api

impl Wire2Api<String> for *mut wire_uint_8_list {
    fn wire2api(self) -> String {
        let vec: Vec<u8> = self.wire2api();
        String::from_utf8_lossy(&vec).into_owned()
    }
}
impl Wire2Api<Vec<String>> for *mut wire_StringList {
    fn wire2api(self) -> Vec<String> {
        let vec = unsafe {
            let wrap = support::box_from_leak_ptr(self);
            support::vec_from_leak_ptr(wrap.ptr, wrap.len)
        };
        vec.into_iter().map(Wire2Api::wire2api).collect()
    }
}
impl Wire2Api<AoiAdapter> for wire_AoiAdapter {
    fn wire2api(self) -> AoiAdapter {
        AoiAdapter {
            index: self.index.wire2api(),
        }
    }
}
impl Wire2Api<AoiCharacteristic> for wire_AoiCharacteristic {
    fn wire2api(self) -> AoiCharacteristic {
        AoiCharacteristic {
            uuid: self.uuid.wire2api(),
            service_uuid: self.service_uuid.wire2api(),
            properties: self.properties.wire2api(),
        }
    }
}
impl Wire2Api<AoiConnectedPeripheral> for wire_AoiConnectedPeripheral {
    fn wire2api(self) -> AoiConnectedPeripheral {
        AoiConnectedPeripheral {
            peripheral: self.peripheral.wire2api(),
            characteristics: self.characteristics.wire2api(),
        }
    }
}
impl Wire2Api<AoiPeripheral> for wire_AoiPeripheral {
    fn wire2api(self) -> AoiPeripheral {
        AoiPeripheral {
            adapter: self.adapter.wire2api(),
            name: self.name.wire2api(),
            address: self.address.wire2api(),
            services: self.services.wire2api(),
            manufacturer_data: self.manufacturer_data.wire2api(),
        }
    }
}
impl Wire2Api<Box<AoiAdapter>> for *mut wire_AoiAdapter {
    fn wire2api(self) -> Box<AoiAdapter> {
        let wrap = unsafe { support::box_from_leak_ptr(self) };
        Wire2Api::<AoiAdapter>::wire2api(*wrap).into()
    }
}
impl Wire2Api<Box<AoiPeripheral>> for *mut wire_AoiPeripheral {
    fn wire2api(self) -> Box<AoiPeripheral> {
        let wrap = unsafe { support::box_from_leak_ptr(self) };
        Wire2Api::<AoiPeripheral>::wire2api(*wrap).into()
    }
}
impl Wire2Api<AoiAdapter> for *mut wire_AoiAdapter {
    fn wire2api(self) -> AoiAdapter {
        let wrap = unsafe { support::box_from_leak_ptr(self) };
        Wire2Api::<AoiAdapter>::wire2api(*wrap).into()
    }
}
impl Wire2Api<AoiCharacteristic> for *mut wire_AoiCharacteristic {
    fn wire2api(self) -> AoiCharacteristic {
        let wrap = unsafe { support::box_from_leak_ptr(self) };
        Wire2Api::<AoiCharacteristic>::wire2api(*wrap).into()
    }
}
impl Wire2Api<AoiConnectedPeripheral> for *mut wire_AoiConnectedPeripheral {
    fn wire2api(self) -> AoiConnectedPeripheral {
        let wrap = unsafe { support::box_from_leak_ptr(self) };
        Wire2Api::<AoiConnectedPeripheral>::wire2api(*wrap).into()
    }
}
impl Wire2Api<AoiPeripheral> for *mut wire_AoiPeripheral {
    fn wire2api(self) -> AoiPeripheral {
        let wrap = unsafe { support::box_from_leak_ptr(self) };
        Wire2Api::<AoiPeripheral>::wire2api(*wrap).into()
    }
}
impl Wire2Api<FilterCriteria> for *mut wire_FilterCriteria {
    fn wire2api(self) -> FilterCriteria {
        let wrap = unsafe { support::box_from_leak_ptr(self) };
        Wire2Api::<FilterCriteria>::wire2api(*wrap).into()
    }
}
impl Wire2Api<FilterCriteria> for wire_FilterCriteria {
    fn wire2api(self) -> FilterCriteria {
        match self.tag {
            0 => unsafe {
                let ans = support::box_from_leak_ptr(self.kind);
                let ans = support::box_from_leak_ptr(ans.Any);
                FilterCriteria::Any(ans.field0.wire2api())
            },
            1 => unsafe {
                let ans = support::box_from_leak_ptr(self.kind);
                let ans = support::box_from_leak_ptr(ans.All);
                FilterCriteria::All(ans.field0.wire2api())
            },
            _ => unreachable!(),
        }
    }
}
impl Wire2Api<FilterCriterion> for wire_FilterCriterion {
    fn wire2api(self) -> FilterCriterion {
        match self.tag {
            0 => unsafe {
                let ans = support::box_from_leak_ptr(self.kind);
                let ans = support::box_from_leak_ptr(ans.HasServiceUuid);
                FilterCriterion::HasServiceUuid(ans.field0.wire2api())
            },
            1 => unsafe {
                let ans = support::box_from_leak_ptr(self.kind);
                let ans = support::box_from_leak_ptr(ans.NameMatchesExactly);
                FilterCriterion::NameMatchesExactly(ans.field0.wire2api())
            },
            2 => unsafe {
                let ans = support::box_from_leak_ptr(self.kind);
                let ans = support::box_from_leak_ptr(ans.NameContains);
                FilterCriterion::NameContains(ans.field0.wire2api())
            },
            3 => unsafe {
                let ans = support::box_from_leak_ptr(self.kind);
                let ans = support::box_from_leak_ptr(ans.ManufacturerDataMatches);
                FilterCriterion::ManufacturerDataMatches(ans.field0.wire2api())
            },
            _ => unreachable!(),
        }
    }
}
impl Wire2Api<Vec<AoiCharacteristic>> for *mut wire_list_aoi_characteristic {
    fn wire2api(self) -> Vec<AoiCharacteristic> {
        let vec = unsafe {
            let wrap = support::box_from_leak_ptr(self);
            support::vec_from_leak_ptr(wrap.ptr, wrap.len)
        };
        vec.into_iter().map(Wire2Api::wire2api).collect()
    }
}
impl Wire2Api<Vec<FilterCriterion>> for *mut wire_list_filter_criterion {
    fn wire2api(self) -> Vec<FilterCriterion> {
        let vec = unsafe {
            let wrap = support::box_from_leak_ptr(self);
            support::vec_from_leak_ptr(wrap.ptr, wrap.len)
        };
        vec.into_iter().map(Wire2Api::wire2api).collect()
    }
}

impl Wire2Api<[u8; 6]> for *mut wire_uint_8_list {
    fn wire2api(self) -> [u8; 6] {
        let vec: Vec<u8> = self.wire2api();
        support::from_vec_to_array(vec)
    }
}
impl Wire2Api<Vec<u8>> for *mut wire_uint_8_list {
    fn wire2api(self) -> Vec<u8> {
        unsafe {
            let wrap = support::box_from_leak_ptr(self);
            support::vec_from_leak_ptr(wrap.ptr, wrap.len)
        }
    }
}

// Section: wire structs

#[repr(C)]
#[derive(Clone)]
pub struct wire_StringList {
    ptr: *mut *mut wire_uint_8_list,
    len: i32,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_AoiAdapter {
    index: usize,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_AoiCharacteristic {
    uuid: *mut wire_uint_8_list,
    service_uuid: *mut wire_uint_8_list,
    properties: u8,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_AoiConnectedPeripheral {
    peripheral: *mut wire_AoiPeripheral,
    characteristics: *mut wire_list_aoi_characteristic,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_AoiPeripheral {
    adapter: *mut wire_AoiAdapter,
    name: *mut wire_uint_8_list,
    address: *mut wire_uint_8_list,
    services: *mut wire_StringList,
    manufacturer_data: *mut wire_uint_8_list,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_list_aoi_characteristic {
    ptr: *mut wire_AoiCharacteristic,
    len: i32,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_list_filter_criterion {
    ptr: *mut wire_FilterCriterion,
    len: i32,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_uint_8_list {
    ptr: *mut u8,
    len: i32,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_FilterCriteria {
    tag: i32,
    kind: *mut FilterCriteriaKind,
}

#[repr(C)]
pub union FilterCriteriaKind {
    Any: *mut wire_FilterCriteria_Any,
    All: *mut wire_FilterCriteria_All,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_FilterCriteria_Any {
    field0: *mut wire_list_filter_criterion,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_FilterCriteria_All {
    field0: *mut wire_list_filter_criterion,
}
#[repr(C)]
#[derive(Clone)]
pub struct wire_FilterCriterion {
    tag: i32,
    kind: *mut FilterCriterionKind,
}

#[repr(C)]
pub union FilterCriterionKind {
    HasServiceUuid: *mut wire_FilterCriterion_HasServiceUuid,
    NameMatchesExactly: *mut wire_FilterCriterion_NameMatchesExactly,
    NameContains: *mut wire_FilterCriterion_NameContains,
    ManufacturerDataMatches: *mut wire_FilterCriterion_ManufacturerDataMatches,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_FilterCriterion_HasServiceUuid {
    field0: *mut wire_uint_8_list,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_FilterCriterion_NameMatchesExactly {
    field0: *mut wire_uint_8_list,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_FilterCriterion_NameContains {
    field0: *mut wire_uint_8_list,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_FilterCriterion_ManufacturerDataMatches {
    field0: *mut wire_uint_8_list,
}

// Section: impl NewWithNullPtr

pub trait NewWithNullPtr {
    fn new_with_null_ptr() -> Self;
}

impl<T> NewWithNullPtr for *mut T {
    fn new_with_null_ptr() -> Self {
        std::ptr::null_mut()
    }
}

impl NewWithNullPtr for wire_AoiAdapter {
    fn new_with_null_ptr() -> Self {
        Self {
            index: Default::default(),
        }
    }
}

impl NewWithNullPtr for wire_AoiCharacteristic {
    fn new_with_null_ptr() -> Self {
        Self {
            uuid: core::ptr::null_mut(),
            service_uuid: core::ptr::null_mut(),
            properties: Default::default(),
        }
    }
}

impl NewWithNullPtr for wire_AoiConnectedPeripheral {
    fn new_with_null_ptr() -> Self {
        Self {
            peripheral: core::ptr::null_mut(),
            characteristics: core::ptr::null_mut(),
        }
    }
}

impl NewWithNullPtr for wire_AoiPeripheral {
    fn new_with_null_ptr() -> Self {
        Self {
            adapter: core::ptr::null_mut(),
            name: core::ptr::null_mut(),
            address: core::ptr::null_mut(),
            services: core::ptr::null_mut(),
            manufacturer_data: core::ptr::null_mut(),
        }
    }
}

impl NewWithNullPtr for wire_FilterCriteria {
    fn new_with_null_ptr() -> Self {
        Self {
            tag: -1,
            kind: core::ptr::null_mut(),
        }
    }
}

#[no_mangle]
pub extern "C" fn inflate_FilterCriteria_Any() -> *mut FilterCriteriaKind {
    support::new_leak_box_ptr(FilterCriteriaKind {
        Any: support::new_leak_box_ptr(wire_FilterCriteria_Any {
            field0: core::ptr::null_mut(),
        }),
    })
}

#[no_mangle]
pub extern "C" fn inflate_FilterCriteria_All() -> *mut FilterCriteriaKind {
    support::new_leak_box_ptr(FilterCriteriaKind {
        All: support::new_leak_box_ptr(wire_FilterCriteria_All {
            field0: core::ptr::null_mut(),
        }),
    })
}

impl NewWithNullPtr for wire_FilterCriterion {
    fn new_with_null_ptr() -> Self {
        Self {
            tag: -1,
            kind: core::ptr::null_mut(),
        }
    }
}

#[no_mangle]
pub extern "C" fn inflate_FilterCriterion_HasServiceUuid() -> *mut FilterCriterionKind {
    support::new_leak_box_ptr(FilterCriterionKind {
        HasServiceUuid: support::new_leak_box_ptr(wire_FilterCriterion_HasServiceUuid {
            field0: core::ptr::null_mut(),
        }),
    })
}

#[no_mangle]
pub extern "C" fn inflate_FilterCriterion_NameMatchesExactly() -> *mut FilterCriterionKind {
    support::new_leak_box_ptr(FilterCriterionKind {
        NameMatchesExactly: support::new_leak_box_ptr(wire_FilterCriterion_NameMatchesExactly {
            field0: core::ptr::null_mut(),
        }),
    })
}

#[no_mangle]
pub extern "C" fn inflate_FilterCriterion_NameContains() -> *mut FilterCriterionKind {
    support::new_leak_box_ptr(FilterCriterionKind {
        NameContains: support::new_leak_box_ptr(wire_FilterCriterion_NameContains {
            field0: core::ptr::null_mut(),
        }),
    })
}

#[no_mangle]
pub extern "C" fn inflate_FilterCriterion_ManufacturerDataMatches() -> *mut FilterCriterionKind {
    support::new_leak_box_ptr(FilterCriterionKind {
        ManufacturerDataMatches: support::new_leak_box_ptr(
            wire_FilterCriterion_ManufacturerDataMatches {
                field0: core::ptr::null_mut(),
            },
        ),
    })
}

// Section: sync execution mode utility

#[no_mangle]
pub extern "C" fn free_WireSyncReturn(ptr: support::WireSyncReturn) {
    unsafe {
        let _ = support::box_from_leak_ptr(ptr);
    };
}
