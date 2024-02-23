#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
typedef struct _Dart_Handle* Dart_Handle;

typedef struct DartCObject DartCObject;

typedef int64_t DartPort;

typedef bool (*DartPostCObjectFnType)(DartPort port_id, void *message);

typedef struct wire_AoiAdapter {
  uintptr_t index;
} wire_AoiAdapter;

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_FilterCriterion_HasServiceUuid {
  struct wire_uint_8_list *field0;
} wire_FilterCriterion_HasServiceUuid;

typedef struct wire_FilterCriterion_NameMatchesExactly {
  struct wire_uint_8_list *field0;
} wire_FilterCriterion_NameMatchesExactly;

typedef struct wire_FilterCriterion_NameContains {
  struct wire_uint_8_list *field0;
} wire_FilterCriterion_NameContains;

typedef struct wire_FilterCriterion_ManufacturerId {
  uint16_t field0;
} wire_FilterCriterion_ManufacturerId;

typedef struct wire_FilterCriterion_ManufacturerData {
  uint16_t field0;
  struct wire_uint_8_list *field1;
} wire_FilterCriterion_ManufacturerData;

typedef union FilterCriterionKind {
  struct wire_FilterCriterion_HasServiceUuid *HasServiceUuid;
  struct wire_FilterCriterion_NameMatchesExactly *NameMatchesExactly;
  struct wire_FilterCriterion_NameContains *NameContains;
  struct wire_FilterCriterion_ManufacturerId *ManufacturerId;
  struct wire_FilterCriterion_ManufacturerData *ManufacturerData;
} FilterCriterionKind;

typedef struct wire_FilterCriterion {
  int32_t tag;
  union FilterCriterionKind *kind;
} wire_FilterCriterion;

typedef struct wire_list_filter_criterion {
  struct wire_FilterCriterion *ptr;
  int32_t len;
} wire_list_filter_criterion;

typedef struct wire_FilterCriteria_Any {
  struct wire_list_filter_criterion *field0;
} wire_FilterCriteria_Any;

typedef struct wire_FilterCriteria_All {
  struct wire_list_filter_criterion *field0;
} wire_FilterCriteria_All;

typedef union FilterCriteriaKind {
  struct wire_FilterCriteria_Any *Any;
  struct wire_FilterCriteria_All *All;
} FilterCriteriaKind;

typedef struct wire_FilterCriteria {
  int32_t tag;
  union FilterCriteriaKind *kind;
} wire_FilterCriteria;

typedef struct wire_AoiPeripheralAddress_MacAddress {
  struct wire_uint_8_list *field0;
} wire_AoiPeripheralAddress_MacAddress;

typedef struct wire_AoiPeripheralAddress_Uuid {
  struct wire_uint_8_list *field0;
} wire_AoiPeripheralAddress_Uuid;

typedef union AoiPeripheralAddressKind {
  struct wire_AoiPeripheralAddress_MacAddress *MacAddress;
  struct wire_AoiPeripheralAddress_Uuid *Uuid;
} AoiPeripheralAddressKind;

typedef struct wire_AoiPeripheralAddress {
  int32_t tag;
  union AoiPeripheralAddressKind *kind;
} wire_AoiPeripheralAddress;

typedef struct wire_StringList {
  struct wire_uint_8_list **ptr;
  int32_t len;
} wire_StringList;

typedef struct wire_AoiManufacturerData {
  uint16_t manufacturer_id;
  struct wire_uint_8_list *data;
} wire_AoiManufacturerData;

typedef struct wire_list_aoi_manufacturer_data {
  struct wire_AoiManufacturerData *ptr;
  int32_t len;
} wire_list_aoi_manufacturer_data;

typedef struct wire_AoiPeripheral {
  struct wire_AoiAdapter *adapter;
  struct wire_uint_8_list *name;
  struct wire_AoiPeripheralAddress *address;
  struct wire_StringList *services;
  struct wire_list_aoi_manufacturer_data *manufacturer_data;
} wire_AoiPeripheral;

typedef struct wire_AoiDescriptor {
  struct wire_uint_8_list *uuid;
  struct wire_uint_8_list *service_uuid;
  struct wire_uint_8_list *characteristic_uuid;
} wire_AoiDescriptor;

typedef struct wire_list_aoi_descriptor {
  struct wire_AoiDescriptor *ptr;
  int32_t len;
} wire_list_aoi_descriptor;

typedef struct wire_AoiCharacteristic {
  struct wire_uint_8_list *uuid;
  struct wire_uint_8_list *service_uuid;
  uint8_t properties_bits;
  struct wire_list_aoi_descriptor *descriptors;
} wire_AoiCharacteristic;

typedef struct wire_list_aoi_characteristic {
  struct wire_AoiCharacteristic *ptr;
  int32_t len;
} wire_list_aoi_characteristic;

typedef struct wire_AoiConnectedPeripheral {
  struct wire_AoiPeripheral *peripheral;
  struct wire_list_aoi_characteristic *characteristics;
} wire_AoiConnectedPeripheral;

typedef struct DartCObject *WireSyncReturn;

void store_dart_post_cobject(DartPostCObjectFnType ptr);

Dart_Handle get_dart_object(uintptr_t ptr);

void drop_dart_object(uintptr_t ptr);

uintptr_t new_dart_opaque(Dart_Handle handle);

intptr_t init_frb_dart_api_dl(void *obj);

void wire_get_adapters__static_method__AoiAdapter(int64_t port_);

void wire_start_scan__method__AoiAdapter(int64_t port_,
                                         struct wire_AoiAdapter *that,
                                         struct wire_FilterCriteria *filter);

void wire_stop_scan__method__AoiAdapter(int64_t port_, struct wire_AoiAdapter *that);

void wire_connect__method__AoiPeripheral(int64_t port_, struct wire_AoiPeripheral *that);

void wire_read__method__AoiConnectedPeripheral(int64_t port_,
                                               struct wire_AoiConnectedPeripheral *that,
                                               struct wire_AoiCharacteristic *characteristic);

void wire_write__method__AoiConnectedPeripheral(int64_t port_,
                                                struct wire_AoiConnectedPeripheral *that,
                                                struct wire_AoiCharacteristic *characteristic,
                                                struct wire_uint_8_list *data);

void wire_write_without_response__method__AoiConnectedPeripheral(int64_t port_,
                                                                 struct wire_AoiConnectedPeripheral *that,
                                                                 struct wire_AoiCharacteristic *characteristic,
                                                                 struct wire_uint_8_list *data);

void wire_disconnect__method__AoiConnectedPeripheral(int64_t port_,
                                                     struct wire_AoiConnectedPeripheral *that);

struct wire_StringList *new_StringList_0(int32_t len);

struct wire_AoiAdapter *new_box_aoi_adapter_0(void);

struct wire_AoiPeripheral *new_box_aoi_peripheral_0(void);

struct wire_AoiPeripheralAddress *new_box_aoi_peripheral_address_0(void);

struct wire_AoiAdapter *new_box_autoadd_aoi_adapter_0(void);

struct wire_AoiCharacteristic *new_box_autoadd_aoi_characteristic_0(void);

struct wire_AoiConnectedPeripheral *new_box_autoadd_aoi_connected_peripheral_0(void);

struct wire_AoiPeripheral *new_box_autoadd_aoi_peripheral_0(void);

struct wire_FilterCriteria *new_box_autoadd_filter_criteria_0(void);

struct wire_list_aoi_characteristic *new_list_aoi_characteristic_0(int32_t len);

struct wire_list_aoi_descriptor *new_list_aoi_descriptor_0(int32_t len);

struct wire_list_aoi_manufacturer_data *new_list_aoi_manufacturer_data_0(int32_t len);

struct wire_list_filter_criterion *new_list_filter_criterion_0(int32_t len);

struct wire_uint_8_list *new_uint_8_list_0(int32_t len);

union AoiPeripheralAddressKind *inflate_AoiPeripheralAddress_MacAddress(void);

union AoiPeripheralAddressKind *inflate_AoiPeripheralAddress_Uuid(void);

union FilterCriteriaKind *inflate_FilterCriteria_Any(void);

union FilterCriteriaKind *inflate_FilterCriteria_All(void);

union FilterCriterionKind *inflate_FilterCriterion_HasServiceUuid(void);

union FilterCriterionKind *inflate_FilterCriterion_NameMatchesExactly(void);

union FilterCriterionKind *inflate_FilterCriterion_NameContains(void);

union FilterCriterionKind *inflate_FilterCriterion_ManufacturerId(void);

union FilterCriterionKind *inflate_FilterCriterion_ManufacturerData(void);

void free_WireSyncReturn(WireSyncReturn ptr);

static int64_t dummy_method_to_enforce_bundling(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) wire_get_adapters__static_method__AoiAdapter);
    dummy_var ^= ((int64_t) (void*) wire_start_scan__method__AoiAdapter);
    dummy_var ^= ((int64_t) (void*) wire_stop_scan__method__AoiAdapter);
    dummy_var ^= ((int64_t) (void*) wire_connect__method__AoiPeripheral);
    dummy_var ^= ((int64_t) (void*) wire_read__method__AoiConnectedPeripheral);
    dummy_var ^= ((int64_t) (void*) wire_write__method__AoiConnectedPeripheral);
    dummy_var ^= ((int64_t) (void*) wire_write_without_response__method__AoiConnectedPeripheral);
    dummy_var ^= ((int64_t) (void*) wire_disconnect__method__AoiConnectedPeripheral);
    dummy_var ^= ((int64_t) (void*) new_StringList_0);
    dummy_var ^= ((int64_t) (void*) new_box_aoi_adapter_0);
    dummy_var ^= ((int64_t) (void*) new_box_aoi_peripheral_0);
    dummy_var ^= ((int64_t) (void*) new_box_aoi_peripheral_address_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_aoi_adapter_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_aoi_characteristic_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_aoi_connected_peripheral_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_aoi_peripheral_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_filter_criteria_0);
    dummy_var ^= ((int64_t) (void*) new_list_aoi_characteristic_0);
    dummy_var ^= ((int64_t) (void*) new_list_aoi_descriptor_0);
    dummy_var ^= ((int64_t) (void*) new_list_aoi_manufacturer_data_0);
    dummy_var ^= ((int64_t) (void*) new_list_filter_criterion_0);
    dummy_var ^= ((int64_t) (void*) new_uint_8_list_0);
    dummy_var ^= ((int64_t) (void*) inflate_AoiPeripheralAddress_MacAddress);
    dummy_var ^= ((int64_t) (void*) inflate_AoiPeripheralAddress_Uuid);
    dummy_var ^= ((int64_t) (void*) inflate_FilterCriteria_Any);
    dummy_var ^= ((int64_t) (void*) inflate_FilterCriteria_All);
    dummy_var ^= ((int64_t) (void*) inflate_FilterCriterion_HasServiceUuid);
    dummy_var ^= ((int64_t) (void*) inflate_FilterCriterion_NameMatchesExactly);
    dummy_var ^= ((int64_t) (void*) inflate_FilterCriterion_NameContains);
    dummy_var ^= ((int64_t) (void*) inflate_FilterCriterion_ManufacturerId);
    dummy_var ^= ((int64_t) (void*) inflate_FilterCriterion_ManufacturerData);
    dummy_var ^= ((int64_t) (void*) free_WireSyncReturn);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    dummy_var ^= ((int64_t) (void*) get_dart_object);
    dummy_var ^= ((int64_t) (void*) drop_dart_object);
    dummy_var ^= ((int64_t) (void*) new_dart_opaque);
    return dummy_var;
}
