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

class NativePlatform extends FlutterRustBridgeBase<NativeWire> with FlutterRustBridgeSetupMixin {
  NativePlatform(FutureOr<WasmModule> dylib) : super(NativeWire(dylib)) {
    setupMixinConstructor();
  }
  Future<void> setup() => inner.init;

// Section: api2wire

  @protected
  String api2wire_String(String raw) {
    return raw;
  }

  @protected
  List<String> api2wire_StringList(List<String> raw) {
    return raw;
  }

  @protected
  List<dynamic> api2wire_aoi_adapter(AoiAdapter raw) {
    return [api2wire_usize(raw.index)];
  }

  @protected
  List<dynamic> api2wire_aoi_characteristic(AoiCharacteristic raw) {
    return [api2wire_String(raw.uuid), api2wire_String(raw.serviceUuid), api2wire_u8(raw.properties)];
  }

  @protected
  List<dynamic> api2wire_aoi_connected_peripheral(AoiConnectedPeripheral raw) {
    return [api2wire_box_aoi_peripheral(raw.peripheral), api2wire_list_aoi_characteristic(raw.characteristics)];
  }

  @protected
  List<dynamic> api2wire_aoi_peripheral(AoiPeripheral raw) {
    return [
      api2wire_box_aoi_adapter(raw.adapter),
      api2wire_opt_String(raw.name),
      api2wire_box_aoi_peripheral_address(raw.address),
      api2wire_StringList(raw.services),
      api2wire_uint_8_list(raw.manufacturerData)
    ];
  }

  @protected
  List<dynamic> api2wire_aoi_peripheral_address(AoiPeripheralAddress raw) {
    if (raw is AoiPeripheralAddress_MacAddress) {
      return [0, api2wire_u8_array_6(raw.field0)];
    }
    if (raw is AoiPeripheralAddress_Uuid) {
      return [1, api2wire_String(raw.field0)];
    }

    throw Exception('unreachable');
  }

  @protected
  List<dynamic> api2wire_box_aoi_adapter(AoiAdapter raw) {
    return api2wire_aoi_adapter(raw);
  }

  @protected
  List<dynamic> api2wire_box_aoi_peripheral(AoiPeripheral raw) {
    return api2wire_aoi_peripheral(raw);
  }

  @protected
  List<dynamic> api2wire_box_aoi_peripheral_address(AoiPeripheralAddress raw) {
    return api2wire_aoi_peripheral_address(raw);
  }

  @protected
  List<dynamic> api2wire_box_autoadd_aoi_adapter(AoiAdapter raw) {
    return api2wire_aoi_adapter(raw);
  }

  @protected
  List<dynamic> api2wire_box_autoadd_aoi_characteristic(AoiCharacteristic raw) {
    return api2wire_aoi_characteristic(raw);
  }

  @protected
  List<dynamic> api2wire_box_autoadd_aoi_connected_peripheral(AoiConnectedPeripheral raw) {
    return api2wire_aoi_connected_peripheral(raw);
  }

  @protected
  List<dynamic> api2wire_box_autoadd_aoi_peripheral(AoiPeripheral raw) {
    return api2wire_aoi_peripheral(raw);
  }

  @protected
  List<dynamic> api2wire_box_autoadd_filter_criteria(FilterCriteria raw) {
    return api2wire_filter_criteria(raw);
  }

  @protected
  List<dynamic> api2wire_filter_criteria(FilterCriteria raw) {
    if (raw is FilterCriteria_Any) {
      return [0, api2wire_list_filter_criterion(raw.field0)];
    }
    if (raw is FilterCriteria_All) {
      return [1, api2wire_list_filter_criterion(raw.field0)];
    }

    throw Exception('unreachable');
  }

  @protected
  List<dynamic> api2wire_filter_criterion(FilterCriterion raw) {
    if (raw is FilterCriterion_HasServiceUuid) {
      return [0, api2wire_String(raw.field0)];
    }
    if (raw is FilterCriterion_NameMatchesExactly) {
      return [1, api2wire_String(raw.field0)];
    }
    if (raw is FilterCriterion_NameContains) {
      return [2, api2wire_String(raw.field0)];
    }
    if (raw is FilterCriterion_ManufacturerDataMatches) {
      return [3, api2wire_uint_8_list(raw.field0)];
    }

    throw Exception('unreachable');
  }

  @protected
  List<dynamic> api2wire_list_aoi_characteristic(List<AoiCharacteristic> raw) {
    return raw.map(api2wire_aoi_characteristic).toList();
  }

  @protected
  List<dynamic> api2wire_list_filter_criterion(List<FilterCriterion> raw) {
    return raw.map(api2wire_filter_criterion).toList();
  }

  @protected
  String? api2wire_opt_String(String? raw) {
    return raw == null ? null : api2wire_String(raw);
  }

  @protected
  List<dynamic>? api2wire_opt_box_autoadd_filter_criteria(FilterCriteria? raw) {
    return raw == null ? null : api2wire_box_autoadd_filter_criteria(raw);
  }

  @protected
  Uint8List api2wire_u8_array_6(U8Array6 raw) {
    return Uint8List.fromList(raw);
  }

  @protected
  Uint8List api2wire_uint_8_list(Uint8List raw) {
    return raw;
  }

// Section: finalizer
}

// Section: WASM wire module

@JS('wasm_bindgen')
external NativeWasmModule get wasmModule;

@JS()
@anonymous
class NativeWasmModule implements WasmModule {
  external Object /* Promise */ call([String? moduleName]);
  external NativeWasmModule bind(dynamic thisArg, String moduleName);
  external dynamic /* void */ wire_get_adapters__static_method__AoiAdapter(NativePortType port_);

  external dynamic /* void */ wire_start_scan__method__AoiAdapter(
      NativePortType port_, List<dynamic> that, List<dynamic>? filter);

  external dynamic /* void */ wire_stop_scan__method__AoiAdapter(NativePortType port_, List<dynamic> that);

  external dynamic /* void */ wire_connect__method__AoiPeripheral(NativePortType port_, List<dynamic> that);

  external dynamic /* void */ wire_read__method__AoiConnectedPeripheral(
      NativePortType port_, List<dynamic> that, List<dynamic> characteristic);

  external dynamic /* void */ wire_write__method__AoiConnectedPeripheral(
      NativePortType port_, List<dynamic> that, List<dynamic> characteristic, Uint8List data);

  external dynamic /* void */ wire_disconnect__method__AoiConnectedPeripheral(NativePortType port_, List<dynamic> that);

  external dynamic /* void */ wire_get_properties__method__AoiCharacteristic(NativePortType port_, List<dynamic> that);
}

// Section: WASM wire connector

class NativeWire extends FlutterRustBridgeWasmWireBase<NativeWasmModule> {
  NativeWire(FutureOr<WasmModule> module) : super(WasmModule.cast<NativeWasmModule>(module));

  void wire_get_adapters__static_method__AoiAdapter(NativePortType port_) =>
      wasmModule.wire_get_adapters__static_method__AoiAdapter(port_);

  void wire_start_scan__method__AoiAdapter(NativePortType port_, List<dynamic> that, List<dynamic>? filter) =>
      wasmModule.wire_start_scan__method__AoiAdapter(port_, that, filter);

  void wire_stop_scan__method__AoiAdapter(NativePortType port_, List<dynamic> that) =>
      wasmModule.wire_stop_scan__method__AoiAdapter(port_, that);

  void wire_connect__method__AoiPeripheral(NativePortType port_, List<dynamic> that) =>
      wasmModule.wire_connect__method__AoiPeripheral(port_, that);

  void wire_read__method__AoiConnectedPeripheral(
          NativePortType port_, List<dynamic> that, List<dynamic> characteristic) =>
      wasmModule.wire_read__method__AoiConnectedPeripheral(port_, that, characteristic);

  void wire_write__method__AoiConnectedPeripheral(
          NativePortType port_, List<dynamic> that, List<dynamic> characteristic, Uint8List data) =>
      wasmModule.wire_write__method__AoiConnectedPeripheral(port_, that, characteristic, data);

  void wire_disconnect__method__AoiConnectedPeripheral(NativePortType port_, List<dynamic> that) =>
      wasmModule.wire_disconnect__method__AoiConnectedPeripheral(port_, that);

  void wire_get_properties__method__AoiCharacteristic(NativePortType port_, List<dynamic> that) =>
      wasmModule.wire_get_properties__method__AoiCharacteristic(port_, that);
}
