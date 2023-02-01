use super::*;
// Section: wire functions

#[no_mangle]
pub extern "C" fn wire_platform(port_: i64) {
    wire_platform_impl(port_)
}

#[no_mangle]
pub extern "C" fn wire_rust_release_mode(port_: i64) {
    wire_rust_release_mode_impl(port_)
}

#[no_mangle]
pub extern "C" fn wire_find_ble_devices(
    port_: i64,
    search_criteria: *mut wire_list_search_criteria,
    search_duration: i64,
) {
    wire_find_ble_devices_impl(port_, search_criteria, search_duration)
}

// Section: allocate functions

#[no_mangle]
pub extern "C" fn new_list_search_criteria_0(len: i32) -> *mut wire_list_search_criteria {
    let wrap = wire_list_search_criteria {
        ptr: support::new_leak_vec_ptr(<wire_SearchCriteria>::new_with_null_ptr(), len),
        len,
    };
    support::new_leak_box_ptr(wrap)
}

#[no_mangle]
pub extern "C" fn new_list_search_criterion_0(len: i32) -> *mut wire_list_search_criterion {
    let wrap = wire_list_search_criterion {
        ptr: support::new_leak_vec_ptr(<wire_SearchCriterion>::new_with_null_ptr(), len),
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

impl Wire2Api<chrono::Duration> for i64 {
    fn wire2api(self) -> chrono::Duration {
        chrono::Duration::microseconds(self)
    }
}
impl Wire2Api<String> for *mut wire_uint_8_list {
    fn wire2api(self) -> String {
        let vec: Vec<u8> = self.wire2api();
        String::from_utf8_lossy(&vec).into_owned()
    }
}
impl Wire2Api<uuid::Uuid> for *mut wire_uint_8_list {
    fn wire2api(self) -> uuid::Uuid {
        let single: Vec<u8> = self.wire2api();
        wire2api_uuid_ref(single.as_slice())
    }
}

impl Wire2Api<Vec<SearchCriteria>> for *mut wire_list_search_criteria {
    fn wire2api(self) -> Vec<SearchCriteria> {
        let vec = unsafe {
            let wrap = support::box_from_leak_ptr(self);
            support::vec_from_leak_ptr(wrap.ptr, wrap.len)
        };
        vec.into_iter().map(Wire2Api::wire2api).collect()
    }
}
impl Wire2Api<Vec<SearchCriterion>> for *mut wire_list_search_criterion {
    fn wire2api(self) -> Vec<SearchCriterion> {
        let vec = unsafe {
            let wrap = support::box_from_leak_ptr(self);
            support::vec_from_leak_ptr(wrap.ptr, wrap.len)
        };
        vec.into_iter().map(Wire2Api::wire2api).collect()
    }
}
impl Wire2Api<SearchCriteria> for wire_SearchCriteria {
    fn wire2api(self) -> SearchCriteria {
        match self.tag {
            0 => unsafe {
                let ans = support::box_from_leak_ptr(self.kind);
                let ans = support::box_from_leak_ptr(ans.Any);
                SearchCriteria::Any(ans.field0.wire2api())
            },
            1 => unsafe {
                let ans = support::box_from_leak_ptr(self.kind);
                let ans = support::box_from_leak_ptr(ans.All);
                SearchCriteria::All(ans.field0.wire2api())
            },
            _ => unreachable!(),
        }
    }
}
impl Wire2Api<SearchCriterion> for wire_SearchCriterion {
    fn wire2api(self) -> SearchCriterion {
        match self.tag {
            0 => unsafe {
                let ans = support::box_from_leak_ptr(self.kind);
                let ans = support::box_from_leak_ptr(ans.WithService);
                SearchCriterion::WithService(ans.field0.wire2api())
            },
            1 => unsafe {
                let ans = support::box_from_leak_ptr(self.kind);
                let ans = support::box_from_leak_ptr(ans.NameMatchesExactly);
                SearchCriterion::NameMatchesExactly(ans.field0.wire2api())
            },
            2 => unsafe {
                let ans = support::box_from_leak_ptr(self.kind);
                let ans = support::box_from_leak_ptr(ans.NameContains);
                SearchCriterion::NameContains(ans.field0.wire2api())
            },
            _ => unreachable!(),
        }
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
pub struct wire_list_search_criteria {
    ptr: *mut wire_SearchCriteria,
    len: i32,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_list_search_criterion {
    ptr: *mut wire_SearchCriterion,
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
pub struct wire_SearchCriteria {
    tag: i32,
    kind: *mut SearchCriteriaKind,
}

#[repr(C)]
pub union SearchCriteriaKind {
    Any: *mut wire_SearchCriteria_Any,
    All: *mut wire_SearchCriteria_All,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_SearchCriteria_Any {
    field0: *mut wire_list_search_criterion,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_SearchCriteria_All {
    field0: *mut wire_list_search_criterion,
}
#[repr(C)]
#[derive(Clone)]
pub struct wire_SearchCriterion {
    tag: i32,
    kind: *mut SearchCriterionKind,
}

#[repr(C)]
pub union SearchCriterionKind {
    WithService: *mut wire_SearchCriterion_WithService,
    NameMatchesExactly: *mut wire_SearchCriterion_NameMatchesExactly,
    NameContains: *mut wire_SearchCriterion_NameContains,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_SearchCriterion_WithService {
    field0: *mut wire_uint_8_list,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_SearchCriterion_NameMatchesExactly {
    field0: *mut wire_uint_8_list,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_SearchCriterion_NameContains {
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

impl NewWithNullPtr for wire_SearchCriteria {
    fn new_with_null_ptr() -> Self {
        Self {
            tag: -1,
            kind: core::ptr::null_mut(),
        }
    }
}

#[no_mangle]
pub extern "C" fn inflate_SearchCriteria_Any() -> *mut SearchCriteriaKind {
    support::new_leak_box_ptr(SearchCriteriaKind {
        Any: support::new_leak_box_ptr(wire_SearchCriteria_Any {
            field0: core::ptr::null_mut(),
        }),
    })
}

#[no_mangle]
pub extern "C" fn inflate_SearchCriteria_All() -> *mut SearchCriteriaKind {
    support::new_leak_box_ptr(SearchCriteriaKind {
        All: support::new_leak_box_ptr(wire_SearchCriteria_All {
            field0: core::ptr::null_mut(),
        }),
    })
}

impl NewWithNullPtr for wire_SearchCriterion {
    fn new_with_null_ptr() -> Self {
        Self {
            tag: -1,
            kind: core::ptr::null_mut(),
        }
    }
}

#[no_mangle]
pub extern "C" fn inflate_SearchCriterion_WithService() -> *mut SearchCriterionKind {
    support::new_leak_box_ptr(SearchCriterionKind {
        WithService: support::new_leak_box_ptr(wire_SearchCriterion_WithService {
            field0: core::ptr::null_mut(),
        }),
    })
}

#[no_mangle]
pub extern "C" fn inflate_SearchCriterion_NameMatchesExactly() -> *mut SearchCriterionKind {
    support::new_leak_box_ptr(SearchCriterionKind {
        NameMatchesExactly: support::new_leak_box_ptr(wire_SearchCriterion_NameMatchesExactly {
            field0: core::ptr::null_mut(),
        }),
    })
}

#[no_mangle]
pub extern "C" fn inflate_SearchCriterion_NameContains() -> *mut SearchCriterionKind {
    support::new_leak_box_ptr(SearchCriterionKind {
        NameContains: support::new_leak_box_ptr(wire_SearchCriterion_NameContains {
            field0: core::ptr::null_mut(),
        }),
    })
}

// Section: sync execution mode utility

#[no_mangle]
pub extern "C" fn free_WireSyncReturn(ptr: support::WireSyncReturn) {
    unsafe {
        let _ = support::box_from_leak_ptr(ptr);
    };
}
