// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.62.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import "bridge_definitions.dart";
import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';
import 'bridge_generated.dart';
export 'bridge_generated.dart';
import 'dart:ffi' as ffi;

class NativePlatform extends FlutterRustBridgeBase<NativeWire> {
  NativePlatform(ffi.DynamicLibrary dylib) : super(NativeWire(dylib));

// Section: api2wire

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<wire_StringList> api2wire_StringList(List<String> raw) {
    final ans = inner.new_StringList_0(raw.length);
    for (var i = 0; i < raw.length; i++) {
      ans.ref.ptr[i] = api2wire_String(raw[i]);
    }
    return ans;
  }

  @protected
  ffi.Pointer<wire_AoiAdapter> api2wire_box_aoi_adapter(AoiAdapter raw) {
    final ptr = inner.new_box_aoi_adapter_0();
    _api_fill_to_wire_aoi_adapter(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_AoiPeripheral> api2wire_box_aoi_peripheral(AoiPeripheral raw) {
    final ptr = inner.new_box_aoi_peripheral_0();
    _api_fill_to_wire_aoi_peripheral(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_AoiAdapter> api2wire_box_autoadd_aoi_adapter(AoiAdapter raw) {
    final ptr = inner.new_box_autoadd_aoi_adapter_0();
    _api_fill_to_wire_aoi_adapter(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_AoiCharacteristic> api2wire_box_autoadd_aoi_characteristic(AoiCharacteristic raw) {
    final ptr = inner.new_box_autoadd_aoi_characteristic_0();
    _api_fill_to_wire_aoi_characteristic(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_AoiConnectedPeripheral> api2wire_box_autoadd_aoi_connected_peripheral(AoiConnectedPeripheral raw) {
    final ptr = inner.new_box_autoadd_aoi_connected_peripheral_0();
    _api_fill_to_wire_aoi_connected_peripheral(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_AoiPeripheral> api2wire_box_autoadd_aoi_peripheral(AoiPeripheral raw) {
    final ptr = inner.new_box_autoadd_aoi_peripheral_0();
    _api_fill_to_wire_aoi_peripheral(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_FilterCriteria> api2wire_box_autoadd_filter_criteria(FilterCriteria raw) {
    final ptr = inner.new_box_autoadd_filter_criteria_0();
    _api_fill_to_wire_filter_criteria(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_list_aoi_characteristic> api2wire_list_aoi_characteristic(List<AoiCharacteristic> raw) {
    final ans = inner.new_list_aoi_characteristic_0(raw.length);
    for (var i = 0; i < raw.length; ++i) {
      _api_fill_to_wire_aoi_characteristic(raw[i], ans.ref.ptr[i]);
    }
    return ans;
  }

  @protected
  ffi.Pointer<wire_list_filter_criterion> api2wire_list_filter_criterion(List<FilterCriterion> raw) {
    final ans = inner.new_list_filter_criterion_0(raw.length);
    for (var i = 0; i < raw.length; ++i) {
      _api_fill_to_wire_filter_criterion(raw[i], ans.ref.ptr[i]);
    }
    return ans;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_opt_String(String? raw) {
    return raw == null ? ffi.nullptr : api2wire_String(raw);
  }

  @protected
  ffi.Pointer<wire_FilterCriteria> api2wire_opt_box_autoadd_filter_criteria(FilterCriteria? raw) {
    return raw == null ? ffi.nullptr : api2wire_box_autoadd_filter_criteria(raw);
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_u8_array_6(U8Array6 raw) {
    final ans = inner.new_uint_8_list_0(6);
    ans.ref.ptr.asTypedList(6).setAll(0, raw);
    return ans;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }

// Section: finalizer

// Section: api_fill_to_wire

  void _api_fill_to_wire_aoi_adapter(AoiAdapter apiObj, wire_AoiAdapter wireObj) {
    wireObj.index = api2wire_usize(apiObj.index);
  }

  void _api_fill_to_wire_aoi_characteristic(AoiCharacteristic apiObj, wire_AoiCharacteristic wireObj) {
    wireObj.uuid = api2wire_String(apiObj.uuid);
    wireObj.service_uuid = api2wire_String(apiObj.serviceUuid);
    wireObj.properties = api2wire_u8(apiObj.properties);
  }

  void _api_fill_to_wire_aoi_connected_peripheral(AoiConnectedPeripheral apiObj, wire_AoiConnectedPeripheral wireObj) {
    wireObj.peripheral = api2wire_box_aoi_peripheral(apiObj.peripheral);
    wireObj.characteristics = api2wire_list_aoi_characteristic(apiObj.characteristics);
  }

  void _api_fill_to_wire_aoi_peripheral(AoiPeripheral apiObj, wire_AoiPeripheral wireObj) {
    wireObj.adapter = api2wire_box_aoi_adapter(apiObj.adapter);
    wireObj.name = api2wire_opt_String(apiObj.name);
    wireObj.address = api2wire_u8_array_6(apiObj.address);
    wireObj.services = api2wire_StringList(apiObj.services);
    wireObj.manufacturer_data = api2wire_uint_8_list(apiObj.manufacturerData);
  }

  void _api_fill_to_wire_box_aoi_adapter(AoiAdapter apiObj, ffi.Pointer<wire_AoiAdapter> wireObj) {
    _api_fill_to_wire_aoi_adapter(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_aoi_peripheral(AoiPeripheral apiObj, ffi.Pointer<wire_AoiPeripheral> wireObj) {
    _api_fill_to_wire_aoi_peripheral(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_aoi_adapter(AoiAdapter apiObj, ffi.Pointer<wire_AoiAdapter> wireObj) {
    _api_fill_to_wire_aoi_adapter(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_aoi_characteristic(
      AoiCharacteristic apiObj, ffi.Pointer<wire_AoiCharacteristic> wireObj) {
    _api_fill_to_wire_aoi_characteristic(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_aoi_connected_peripheral(
      AoiConnectedPeripheral apiObj, ffi.Pointer<wire_AoiConnectedPeripheral> wireObj) {
    _api_fill_to_wire_aoi_connected_peripheral(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_aoi_peripheral(AoiPeripheral apiObj, ffi.Pointer<wire_AoiPeripheral> wireObj) {
    _api_fill_to_wire_aoi_peripheral(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_filter_criteria(FilterCriteria apiObj, ffi.Pointer<wire_FilterCriteria> wireObj) {
    _api_fill_to_wire_filter_criteria(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_filter_criteria(FilterCriteria apiObj, wire_FilterCriteria wireObj) {
    if (apiObj is FilterCriteria_Any) {
      var pre_field0 = api2wire_list_filter_criterion(apiObj.field0);
      wireObj.tag = 0;
      wireObj.kind = inner.inflate_FilterCriteria_Any();
      wireObj.kind.ref.Any.ref.field0 = pre_field0;
      return;
    }
    if (apiObj is FilterCriteria_All) {
      var pre_field0 = api2wire_list_filter_criterion(apiObj.field0);
      wireObj.tag = 1;
      wireObj.kind = inner.inflate_FilterCriteria_All();
      wireObj.kind.ref.All.ref.field0 = pre_field0;
      return;
    }
  }

  void _api_fill_to_wire_filter_criterion(FilterCriterion apiObj, wire_FilterCriterion wireObj) {
    if (apiObj is FilterCriterion_HasServiceUuid) {
      var pre_field0 = api2wire_String(apiObj.field0);
      wireObj.tag = 0;
      wireObj.kind = inner.inflate_FilterCriterion_HasServiceUuid();
      wireObj.kind.ref.HasServiceUuid.ref.field0 = pre_field0;
      return;
    }
    if (apiObj is FilterCriterion_NameMatchesExactly) {
      var pre_field0 = api2wire_String(apiObj.field0);
      wireObj.tag = 1;
      wireObj.kind = inner.inflate_FilterCriterion_NameMatchesExactly();
      wireObj.kind.ref.NameMatchesExactly.ref.field0 = pre_field0;
      return;
    }
    if (apiObj is FilterCriterion_NameContains) {
      var pre_field0 = api2wire_String(apiObj.field0);
      wireObj.tag = 2;
      wireObj.kind = inner.inflate_FilterCriterion_NameContains();
      wireObj.kind.ref.NameContains.ref.field0 = pre_field0;
      return;
    }
    if (apiObj is FilterCriterion_ManufacturerDataMatches) {
      var pre_field0 = api2wire_uint_8_list(apiObj.field0);
      wireObj.tag = 3;
      wireObj.kind = inner.inflate_FilterCriterion_ManufacturerDataMatches();
      wireObj.kind.ref.ManufacturerDataMatches.ref.field0 = pre_field0;
      return;
    }
  }

  void _api_fill_to_wire_opt_box_autoadd_filter_criteria(
      FilterCriteria? apiObj, ffi.Pointer<wire_FilterCriteria> wireObj) {
    if (apiObj != null) _api_fill_to_wire_box_autoadd_filter_criteria(apiObj, wireObj);
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class NativeWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  NativeWire(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  NativeWire.fromLookup(ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) lookup) : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>('store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr.asFunction<void Function(DartPostCObjectFnType)>();

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr = _lookup<ffi.NativeFunction<ffi.Handle Function(ffi.UintPtr)>>('get_dart_object');
  late final _get_dart_object = _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>('drop_dart_object');
  late final _drop_dart_object = _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr = _lookup<ffi.NativeFunction<ffi.UintPtr Function(ffi.Handle)>>('new_dart_opaque');
  late final _new_dart_opaque = _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr =
      _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>('init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr.asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  void wire_get_adapters__static_method__AoiAdapter(
    int port_,
  ) {
    return _wire_get_adapters__static_method__AoiAdapter(
      port_,
    );
  }

  late final _wire_get_adapters__static_method__AoiAdapterPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>('wire_get_adapters__static_method__AoiAdapter');
  late final _wire_get_adapters__static_method__AoiAdapter =
      _wire_get_adapters__static_method__AoiAdapterPtr.asFunction<void Function(int)>();

  void wire_start_scan__method__AoiAdapter(
    int port_,
    ffi.Pointer<wire_AoiAdapter> that,
    ffi.Pointer<wire_FilterCriteria> filter,
  ) {
    return _wire_start_scan__method__AoiAdapter(
      port_,
      that,
      filter,
    );
  }

  late final _wire_start_scan__method__AoiAdapterPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_AoiAdapter>,
              ffi.Pointer<wire_FilterCriteria>)>>('wire_start_scan__method__AoiAdapter');
  late final _wire_start_scan__method__AoiAdapter = _wire_start_scan__method__AoiAdapterPtr
      .asFunction<void Function(int, ffi.Pointer<wire_AoiAdapter>, ffi.Pointer<wire_FilterCriteria>)>();

  void wire_stop_scan__method__AoiAdapter(
    int port_,
    ffi.Pointer<wire_AoiAdapter> that,
  ) {
    return _wire_stop_scan__method__AoiAdapter(
      port_,
      that,
    );
  }

  late final _wire_stop_scan__method__AoiAdapterPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Pointer<wire_AoiAdapter>)>>(
          'wire_stop_scan__method__AoiAdapter');
  late final _wire_stop_scan__method__AoiAdapter =
      _wire_stop_scan__method__AoiAdapterPtr.asFunction<void Function(int, ffi.Pointer<wire_AoiAdapter>)>();

  void wire_connect__method__AoiPeripheral(
    int port_,
    ffi.Pointer<wire_AoiPeripheral> that,
  ) {
    return _wire_connect__method__AoiPeripheral(
      port_,
      that,
    );
  }

  late final _wire_connect__method__AoiPeripheralPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Pointer<wire_AoiPeripheral>)>>(
          'wire_connect__method__AoiPeripheral');
  late final _wire_connect__method__AoiPeripheral =
      _wire_connect__method__AoiPeripheralPtr.asFunction<void Function(int, ffi.Pointer<wire_AoiPeripheral>)>();

  void wire_read__method__AoiConnectedPeripheral(
    int port_,
    ffi.Pointer<wire_AoiConnectedPeripheral> that,
    ffi.Pointer<wire_AoiCharacteristic> characteristic,
  ) {
    return _wire_read__method__AoiConnectedPeripheral(
      port_,
      that,
      characteristic,
    );
  }

  late final _wire_read__method__AoiConnectedPeripheralPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_AoiConnectedPeripheral>,
              ffi.Pointer<wire_AoiCharacteristic>)>>('wire_read__method__AoiConnectedPeripheral');
  late final _wire_read__method__AoiConnectedPeripheral = _wire_read__method__AoiConnectedPeripheralPtr
      .asFunction<void Function(int, ffi.Pointer<wire_AoiConnectedPeripheral>, ffi.Pointer<wire_AoiCharacteristic>)>();

  void wire_write__method__AoiConnectedPeripheral(
    int port_,
    ffi.Pointer<wire_AoiConnectedPeripheral> that,
    ffi.Pointer<wire_AoiCharacteristic> characteristic,
    ffi.Pointer<wire_uint_8_list> data,
  ) {
    return _wire_write__method__AoiConnectedPeripheral(
      port_,
      that,
      characteristic,
      data,
    );
  }

  late final _wire_write__method__AoiConnectedPeripheralPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_AoiConnectedPeripheral>, ffi.Pointer<wire_AoiCharacteristic>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_write__method__AoiConnectedPeripheral');
  late final _wire_write__method__AoiConnectedPeripheral = _wire_write__method__AoiConnectedPeripheralPtr.asFunction<
      void Function(int, ffi.Pointer<wire_AoiConnectedPeripheral>, ffi.Pointer<wire_AoiCharacteristic>,
          ffi.Pointer<wire_uint_8_list>)>();

  void wire_disconnect__method__AoiConnectedPeripheral(
    int port_,
    ffi.Pointer<wire_AoiConnectedPeripheral> that,
  ) {
    return _wire_disconnect__method__AoiConnectedPeripheral(
      port_,
      that,
    );
  }

  late final _wire_disconnect__method__AoiConnectedPeripheralPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Pointer<wire_AoiConnectedPeripheral>)>>(
          'wire_disconnect__method__AoiConnectedPeripheral');
  late final _wire_disconnect__method__AoiConnectedPeripheral = _wire_disconnect__method__AoiConnectedPeripheralPtr
      .asFunction<void Function(int, ffi.Pointer<wire_AoiConnectedPeripheral>)>();

  void wire_get_properties__method__AoiCharacteristic(
    int port_,
    ffi.Pointer<wire_AoiCharacteristic> that,
  ) {
    return _wire_get_properties__method__AoiCharacteristic(
      port_,
      that,
    );
  }

  late final _wire_get_properties__method__AoiCharacteristicPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Pointer<wire_AoiCharacteristic>)>>(
          'wire_get_properties__method__AoiCharacteristic');
  late final _wire_get_properties__method__AoiCharacteristic = _wire_get_properties__method__AoiCharacteristicPtr
      .asFunction<void Function(int, ffi.Pointer<wire_AoiCharacteristic>)>();

  ffi.Pointer<wire_StringList> new_StringList_0(
    int len,
  ) {
    return _new_StringList_0(
      len,
    );
  }

  late final _new_StringList_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_StringList> Function(ffi.Int32)>>('new_StringList_0');
  late final _new_StringList_0 = _new_StringList_0Ptr.asFunction<ffi.Pointer<wire_StringList> Function(int)>();

  ffi.Pointer<wire_AoiAdapter> new_box_aoi_adapter_0() {
    return _new_box_aoi_adapter_0();
  }

  late final _new_box_aoi_adapter_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_AoiAdapter> Function()>>('new_box_aoi_adapter_0');
  late final _new_box_aoi_adapter_0 = _new_box_aoi_adapter_0Ptr.asFunction<ffi.Pointer<wire_AoiAdapter> Function()>();

  ffi.Pointer<wire_AoiPeripheral> new_box_aoi_peripheral_0() {
    return _new_box_aoi_peripheral_0();
  }

  late final _new_box_aoi_peripheral_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_AoiPeripheral> Function()>>('new_box_aoi_peripheral_0');
  late final _new_box_aoi_peripheral_0 =
      _new_box_aoi_peripheral_0Ptr.asFunction<ffi.Pointer<wire_AoiPeripheral> Function()>();

  ffi.Pointer<wire_AoiAdapter> new_box_autoadd_aoi_adapter_0() {
    return _new_box_autoadd_aoi_adapter_0();
  }

  late final _new_box_autoadd_aoi_adapter_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_AoiAdapter> Function()>>('new_box_autoadd_aoi_adapter_0');
  late final _new_box_autoadd_aoi_adapter_0 =
      _new_box_autoadd_aoi_adapter_0Ptr.asFunction<ffi.Pointer<wire_AoiAdapter> Function()>();

  ffi.Pointer<wire_AoiCharacteristic> new_box_autoadd_aoi_characteristic_0() {
    return _new_box_autoadd_aoi_characteristic_0();
  }

  late final _new_box_autoadd_aoi_characteristic_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_AoiCharacteristic> Function()>>(
          'new_box_autoadd_aoi_characteristic_0');
  late final _new_box_autoadd_aoi_characteristic_0 =
      _new_box_autoadd_aoi_characteristic_0Ptr.asFunction<ffi.Pointer<wire_AoiCharacteristic> Function()>();

  ffi.Pointer<wire_AoiConnectedPeripheral> new_box_autoadd_aoi_connected_peripheral_0() {
    return _new_box_autoadd_aoi_connected_peripheral_0();
  }

  late final _new_box_autoadd_aoi_connected_peripheral_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_AoiConnectedPeripheral> Function()>>(
          'new_box_autoadd_aoi_connected_peripheral_0');
  late final _new_box_autoadd_aoi_connected_peripheral_0 =
      _new_box_autoadd_aoi_connected_peripheral_0Ptr.asFunction<ffi.Pointer<wire_AoiConnectedPeripheral> Function()>();

  ffi.Pointer<wire_AoiPeripheral> new_box_autoadd_aoi_peripheral_0() {
    return _new_box_autoadd_aoi_peripheral_0();
  }

  late final _new_box_autoadd_aoi_peripheral_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_AoiPeripheral> Function()>>('new_box_autoadd_aoi_peripheral_0');
  late final _new_box_autoadd_aoi_peripheral_0 =
      _new_box_autoadd_aoi_peripheral_0Ptr.asFunction<ffi.Pointer<wire_AoiPeripheral> Function()>();

  ffi.Pointer<wire_FilterCriteria> new_box_autoadd_filter_criteria_0() {
    return _new_box_autoadd_filter_criteria_0();
  }

  late final _new_box_autoadd_filter_criteria_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_FilterCriteria> Function()>>('new_box_autoadd_filter_criteria_0');
  late final _new_box_autoadd_filter_criteria_0 =
      _new_box_autoadd_filter_criteria_0Ptr.asFunction<ffi.Pointer<wire_FilterCriteria> Function()>();

  ffi.Pointer<wire_list_aoi_characteristic> new_list_aoi_characteristic_0(
    int len,
  ) {
    return _new_list_aoi_characteristic_0(
      len,
    );
  }

  late final _new_list_aoi_characteristic_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_list_aoi_characteristic> Function(ffi.Int32)>>(
          'new_list_aoi_characteristic_0');
  late final _new_list_aoi_characteristic_0 =
      _new_list_aoi_characteristic_0Ptr.asFunction<ffi.Pointer<wire_list_aoi_characteristic> Function(int)>();

  ffi.Pointer<wire_list_filter_criterion> new_list_filter_criterion_0(
    int len,
  ) {
    return _new_list_filter_criterion_0(
      len,
    );
  }

  late final _new_list_filter_criterion_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_list_filter_criterion> Function(ffi.Int32)>>(
          'new_list_filter_criterion_0');
  late final _new_list_filter_criterion_0 =
      _new_list_filter_criterion_0Ptr.asFunction<ffi.Pointer<wire_list_filter_criterion> Function(int)>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_uint_8_list> Function(ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr.asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  ffi.Pointer<FilterCriteriaKind> inflate_FilterCriteria_Any() {
    return _inflate_FilterCriteria_Any();
  }

  late final _inflate_FilterCriteria_AnyPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<FilterCriteriaKind> Function()>>('inflate_FilterCriteria_Any');
  late final _inflate_FilterCriteria_Any =
      _inflate_FilterCriteria_AnyPtr.asFunction<ffi.Pointer<FilterCriteriaKind> Function()>();

  ffi.Pointer<FilterCriteriaKind> inflate_FilterCriteria_All() {
    return _inflate_FilterCriteria_All();
  }

  late final _inflate_FilterCriteria_AllPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<FilterCriteriaKind> Function()>>('inflate_FilterCriteria_All');
  late final _inflate_FilterCriteria_All =
      _inflate_FilterCriteria_AllPtr.asFunction<ffi.Pointer<FilterCriteriaKind> Function()>();

  ffi.Pointer<FilterCriterionKind> inflate_FilterCriterion_HasServiceUuid() {
    return _inflate_FilterCriterion_HasServiceUuid();
  }

  late final _inflate_FilterCriterion_HasServiceUuidPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<FilterCriterionKind> Function()>>(
          'inflate_FilterCriterion_HasServiceUuid');
  late final _inflate_FilterCriterion_HasServiceUuid =
      _inflate_FilterCriterion_HasServiceUuidPtr.asFunction<ffi.Pointer<FilterCriterionKind> Function()>();

  ffi.Pointer<FilterCriterionKind> inflate_FilterCriterion_NameMatchesExactly() {
    return _inflate_FilterCriterion_NameMatchesExactly();
  }

  late final _inflate_FilterCriterion_NameMatchesExactlyPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<FilterCriterionKind> Function()>>(
          'inflate_FilterCriterion_NameMatchesExactly');
  late final _inflate_FilterCriterion_NameMatchesExactly =
      _inflate_FilterCriterion_NameMatchesExactlyPtr.asFunction<ffi.Pointer<FilterCriterionKind> Function()>();

  ffi.Pointer<FilterCriterionKind> inflate_FilterCriterion_NameContains() {
    return _inflate_FilterCriterion_NameContains();
  }

  late final _inflate_FilterCriterion_NameContainsPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<FilterCriterionKind> Function()>>('inflate_FilterCriterion_NameContains');
  late final _inflate_FilterCriterion_NameContains =
      _inflate_FilterCriterion_NameContainsPtr.asFunction<ffi.Pointer<FilterCriterionKind> Function()>();

  ffi.Pointer<FilterCriterionKind> inflate_FilterCriterion_ManufacturerDataMatches() {
    return _inflate_FilterCriterion_ManufacturerDataMatches();
  }

  late final _inflate_FilterCriterion_ManufacturerDataMatchesPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<FilterCriterionKind> Function()>>(
          'inflate_FilterCriterion_ManufacturerDataMatches');
  late final _inflate_FilterCriterion_ManufacturerDataMatches =
      _inflate_FilterCriterion_ManufacturerDataMatchesPtr.asFunction<ffi.Pointer<FilterCriterionKind> Function()>();

  void free_WireSyncReturn(
    WireSyncReturn ptr,
  ) {
    return _free_WireSyncReturn(
      ptr,
    );
  }

  late final _free_WireSyncReturnPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturn)>>('free_WireSyncReturn');
  late final _free_WireSyncReturn = _free_WireSyncReturnPtr.asFunction<void Function(WireSyncReturn)>();
}

class _Dart_Handle extends ffi.Opaque {}

class wire_AoiAdapter extends ffi.Struct {
  @ffi.UintPtr()
  external int index;
}

class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

class wire_FilterCriterion_HasServiceUuid extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> field0;
}

class wire_FilterCriterion_NameMatchesExactly extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> field0;
}

class wire_FilterCriterion_NameContains extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> field0;
}

class wire_FilterCriterion_ManufacturerDataMatches extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> field0;
}

class FilterCriterionKind extends ffi.Union {
  external ffi.Pointer<wire_FilterCriterion_HasServiceUuid> HasServiceUuid;

  external ffi.Pointer<wire_FilterCriterion_NameMatchesExactly> NameMatchesExactly;

  external ffi.Pointer<wire_FilterCriterion_NameContains> NameContains;

  external ffi.Pointer<wire_FilterCriterion_ManufacturerDataMatches> ManufacturerDataMatches;
}

class wire_FilterCriterion extends ffi.Struct {
  @ffi.Int32()
  external int tag;

  external ffi.Pointer<FilterCriterionKind> kind;
}

class wire_list_filter_criterion extends ffi.Struct {
  external ffi.Pointer<wire_FilterCriterion> ptr;

  @ffi.Int32()
  external int len;
}

class wire_FilterCriteria_Any extends ffi.Struct {
  external ffi.Pointer<wire_list_filter_criterion> field0;
}

class wire_FilterCriteria_All extends ffi.Struct {
  external ffi.Pointer<wire_list_filter_criterion> field0;
}

class FilterCriteriaKind extends ffi.Union {
  external ffi.Pointer<wire_FilterCriteria_Any> Any;

  external ffi.Pointer<wire_FilterCriteria_All> All;
}

class wire_FilterCriteria extends ffi.Struct {
  @ffi.Int32()
  external int tag;

  external ffi.Pointer<FilterCriteriaKind> kind;
}

class wire_StringList extends ffi.Struct {
  external ffi.Pointer<ffi.Pointer<wire_uint_8_list>> ptr;

  @ffi.Int32()
  external int len;
}

class wire_AoiPeripheral extends ffi.Struct {
  external ffi.Pointer<wire_AoiAdapter> adapter;

  external ffi.Pointer<wire_uint_8_list> name;

  external ffi.Pointer<wire_uint_8_list> address;

  external ffi.Pointer<wire_StringList> services;

  external ffi.Pointer<wire_uint_8_list> manufacturer_data;
}

class wire_AoiCharacteristic extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> uuid;

  external ffi.Pointer<wire_uint_8_list> service_uuid;

  @ffi.Uint8()
  external int properties;
}

class wire_list_aoi_characteristic extends ffi.Struct {
  external ffi.Pointer<wire_AoiCharacteristic> ptr;

  @ffi.Int32()
  external int len;
}

class wire_AoiConnectedPeripheral extends ffi.Struct {
  external ffi.Pointer<wire_AoiPeripheral> peripheral;

  external ffi.Pointer<wire_list_aoi_characteristic> characteristics;
}

typedef DartPostCObjectFnType = ffi.Pointer<ffi.NativeFunction<ffi.Bool Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;
