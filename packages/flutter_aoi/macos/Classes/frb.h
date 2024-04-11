#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
// EXTRA BEGIN
typedef struct DartCObject *WireSyncRust2DartDco;
typedef struct WireSyncRust2DartSse {
  uint8_t *ptr;
  int32_t len;
} WireSyncRust2DartSse;

typedef int64_t DartPort;
typedef bool (*DartPostCObjectFnType)(DartPort port_id, void *message);
void store_dart_post_cobject(DartPostCObjectFnType ptr);
// EXTRA END
typedef struct _Dart_Handle* Dart_Handle;

typedef struct wire_cst_aoi_adapter {
  uintptr_t index;
} wire_cst_aoi_adapter;

typedef struct wire_cst_list_prim_u_8_strict {
  uint8_t *ptr;
  int32_t len;
} wire_cst_list_prim_u_8_strict;

typedef struct wire_cst_FilterCriterion_HasServiceUuid {
  struct wire_cst_list_prim_u_8_strict *field0;
} wire_cst_FilterCriterion_HasServiceUuid;

typedef struct wire_cst_FilterCriterion_NameMatchesExactly {
  struct wire_cst_list_prim_u_8_strict *field0;
} wire_cst_FilterCriterion_NameMatchesExactly;

typedef struct wire_cst_FilterCriterion_NameContains {
  struct wire_cst_list_prim_u_8_strict *field0;
} wire_cst_FilterCriterion_NameContains;

typedef struct wire_cst_FilterCriterion_ManufacturerId {
  uint16_t field0;
} wire_cst_FilterCriterion_ManufacturerId;

typedef struct wire_cst_FilterCriterion_ManufacturerData {
  uint16_t field0;
  struct wire_cst_list_prim_u_8_strict *field1;
} wire_cst_FilterCriterion_ManufacturerData;

typedef union FilterCriterionKind {
  struct wire_cst_FilterCriterion_HasServiceUuid HasServiceUuid;
  struct wire_cst_FilterCriterion_NameMatchesExactly NameMatchesExactly;
  struct wire_cst_FilterCriterion_NameContains NameContains;
  struct wire_cst_FilterCriterion_ManufacturerId ManufacturerId;
  struct wire_cst_FilterCriterion_ManufacturerData ManufacturerData;
} FilterCriterionKind;

typedef struct wire_cst_filter_criterion {
  int32_t tag;
  union FilterCriterionKind kind;
} wire_cst_filter_criterion;

typedef struct wire_cst_list_filter_criterion {
  struct wire_cst_filter_criterion *ptr;
  int32_t len;
} wire_cst_list_filter_criterion;

typedef struct wire_cst_FilterCriteria_Any {
  struct wire_cst_list_filter_criterion *field0;
} wire_cst_FilterCriteria_Any;

typedef struct wire_cst_FilterCriteria_All {
  struct wire_cst_list_filter_criterion *field0;
} wire_cst_FilterCriteria_All;

typedef union FilterCriteriaKind {
  struct wire_cst_FilterCriteria_Any Any;
  struct wire_cst_FilterCriteria_All All;
} FilterCriteriaKind;

typedef struct wire_cst_filter_criteria {
  int32_t tag;
  union FilterCriteriaKind kind;
} wire_cst_filter_criteria;

typedef struct wire_cst_AoiPeripheralAddress_MacAddress {
  struct wire_cst_list_prim_u_8_strict *field0;
} wire_cst_AoiPeripheralAddress_MacAddress;

typedef struct wire_cst_AoiPeripheralAddress_Uuid {
  struct wire_cst_list_prim_u_8_strict *field0;
} wire_cst_AoiPeripheralAddress_Uuid;

typedef struct wire_cst_AoiPeripheralAddress_DeviceId {
  struct wire_cst_list_prim_u_8_strict *field0;
} wire_cst_AoiPeripheralAddress_DeviceId;

typedef union AoiPeripheralAddressKind {
  struct wire_cst_AoiPeripheralAddress_MacAddress MacAddress;
  struct wire_cst_AoiPeripheralAddress_Uuid Uuid;
  struct wire_cst_AoiPeripheralAddress_DeviceId DeviceId;
} AoiPeripheralAddressKind;

typedef struct wire_cst_aoi_peripheral_address {
  int32_t tag;
  union AoiPeripheralAddressKind kind;
} wire_cst_aoi_peripheral_address;

typedef struct wire_cst_list_String {
  struct wire_cst_list_prim_u_8_strict **ptr;
  int32_t len;
} wire_cst_list_String;

typedef struct wire_cst_aoi_manufacturer_data {
  uint16_t manufacturer_id;
  struct wire_cst_list_prim_u_8_strict *data;
} wire_cst_aoi_manufacturer_data;

typedef struct wire_cst_list_aoi_manufacturer_data {
  struct wire_cst_aoi_manufacturer_data *ptr;
  int32_t len;
} wire_cst_list_aoi_manufacturer_data;

typedef struct wire_cst_aoi_peripheral {
  struct wire_cst_aoi_adapter *adapter;
  struct wire_cst_list_prim_u_8_strict *name;
  struct wire_cst_aoi_peripheral_address *address;
  struct wire_cst_list_String *services;
  struct wire_cst_list_aoi_manufacturer_data *manufacturer_data;
} wire_cst_aoi_peripheral;

typedef struct wire_cst_aoi_descriptor {
  struct wire_cst_list_prim_u_8_strict *uuid;
  struct wire_cst_list_prim_u_8_strict *service_uuid;
  struct wire_cst_list_prim_u_8_strict *characteristic_uuid;
} wire_cst_aoi_descriptor;

typedef struct wire_cst_list_aoi_descriptor {
  struct wire_cst_aoi_descriptor *ptr;
  int32_t len;
} wire_cst_list_aoi_descriptor;

typedef struct wire_cst_aoi_characteristic {
  struct wire_cst_list_prim_u_8_strict *uuid;
  struct wire_cst_list_prim_u_8_strict *service_uuid;
  uint8_t properties_bits;
  struct wire_cst_list_aoi_descriptor *descriptors;
} wire_cst_aoi_characteristic;

typedef struct wire_cst_list_aoi_characteristic {
  struct wire_cst_aoi_characteristic *ptr;
  int32_t len;
} wire_cst_list_aoi_characteristic;

typedef struct wire_cst_aoi_connected_peripheral {
  struct wire_cst_aoi_peripheral *peripheral;
  struct wire_cst_list_aoi_characteristic *characteristics;
} wire_cst_aoi_connected_peripheral;

typedef struct wire_cst_list_prim_u_8_loose {
  uint8_t *ptr;
  int32_t len;
} wire_cst_list_prim_u_8_loose;

typedef struct wire_cst_list_aoi_adapter {
  struct wire_cst_aoi_adapter *ptr;
  int32_t len;
} wire_cst_list_aoi_adapter;

void frbgen_aoi_wire_aoi_adapter_get_adapters(int64_t port_);

void frbgen_aoi_wire_aoi_adapter_start_scan(int64_t port_,
                                            struct wire_cst_aoi_adapter *that,
                                            struct wire_cst_filter_criteria *filter,
                                            struct wire_cst_list_prim_u_8_strict *sink);

void frbgen_aoi_wire_aoi_adapter_stop_scan(int64_t port_, struct wire_cst_aoi_adapter *that);

void frbgen_aoi_wire_aoi_connected_peripheral_disconnect(int64_t port_,
                                                         struct wire_cst_aoi_connected_peripheral *that);

void frbgen_aoi_wire_aoi_connected_peripheral_read(int64_t port_,
                                                   struct wire_cst_aoi_connected_peripheral *that,
                                                   struct wire_cst_aoi_characteristic *characteristic);

void frbgen_aoi_wire_aoi_connected_peripheral_write(int64_t port_,
                                                    struct wire_cst_aoi_connected_peripheral *that,
                                                    struct wire_cst_aoi_characteristic *characteristic,
                                                    struct wire_cst_list_prim_u_8_loose *data);

void frbgen_aoi_wire_aoi_connected_peripheral_write_without_response(int64_t port_,
                                                                     struct wire_cst_aoi_connected_peripheral *that,
                                                                     struct wire_cst_aoi_characteristic *characteristic,
                                                                     struct wire_cst_list_prim_u_8_loose *data);

void frbgen_aoi_wire_aoi_peripheral_connect(int64_t port_, struct wire_cst_aoi_peripheral *that);

struct wire_cst_aoi_adapter *frbgen_aoi_cst_new_box_aoi_adapter(void);

struct wire_cst_aoi_peripheral *frbgen_aoi_cst_new_box_aoi_peripheral(void);

struct wire_cst_aoi_peripheral_address *frbgen_aoi_cst_new_box_aoi_peripheral_address(void);

struct wire_cst_aoi_adapter *frbgen_aoi_cst_new_box_autoadd_aoi_adapter(void);

struct wire_cst_aoi_characteristic *frbgen_aoi_cst_new_box_autoadd_aoi_characteristic(void);

struct wire_cst_aoi_connected_peripheral *frbgen_aoi_cst_new_box_autoadd_aoi_connected_peripheral(void);

struct wire_cst_aoi_peripheral *frbgen_aoi_cst_new_box_autoadd_aoi_peripheral(void);

struct wire_cst_filter_criteria *frbgen_aoi_cst_new_box_autoadd_filter_criteria(void);

struct wire_cst_list_String *frbgen_aoi_cst_new_list_String(int32_t len);

struct wire_cst_list_aoi_adapter *frbgen_aoi_cst_new_list_aoi_adapter(int32_t len);

struct wire_cst_list_aoi_characteristic *frbgen_aoi_cst_new_list_aoi_characteristic(int32_t len);

struct wire_cst_list_aoi_descriptor *frbgen_aoi_cst_new_list_aoi_descriptor(int32_t len);

struct wire_cst_list_aoi_manufacturer_data *frbgen_aoi_cst_new_list_aoi_manufacturer_data(int32_t len);

struct wire_cst_list_filter_criterion *frbgen_aoi_cst_new_list_filter_criterion(int32_t len);

struct wire_cst_list_prim_u_8_loose *frbgen_aoi_cst_new_list_prim_u_8_loose(int32_t len);

struct wire_cst_list_prim_u_8_strict *frbgen_aoi_cst_new_list_prim_u_8_strict(int32_t len);
static int64_t dummy_method_to_enforce_bundling(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_cst_new_box_aoi_adapter);
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_cst_new_box_aoi_peripheral);
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_cst_new_box_aoi_peripheral_address);
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_cst_new_box_autoadd_aoi_adapter);
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_cst_new_box_autoadd_aoi_characteristic);
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_cst_new_box_autoadd_aoi_connected_peripheral);
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_cst_new_box_autoadd_aoi_peripheral);
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_cst_new_box_autoadd_filter_criteria);
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_cst_new_list_String);
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_cst_new_list_aoi_adapter);
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_cst_new_list_aoi_characteristic);
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_cst_new_list_aoi_descriptor);
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_cst_new_list_aoi_manufacturer_data);
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_cst_new_list_filter_criterion);
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_cst_new_list_prim_u_8_loose);
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_cst_new_list_prim_u_8_strict);
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_wire_aoi_adapter_get_adapters);
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_wire_aoi_adapter_start_scan);
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_wire_aoi_adapter_stop_scan);
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_wire_aoi_connected_peripheral_disconnect);
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_wire_aoi_connected_peripheral_read);
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_wire_aoi_connected_peripheral_write);
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_wire_aoi_connected_peripheral_write_without_response);
    dummy_var ^= ((int64_t) (void*) frbgen_aoi_wire_aoi_peripheral_connect);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    return dummy_var;
}
