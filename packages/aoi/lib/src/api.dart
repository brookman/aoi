// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.31.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import 'frb_generated.dart';
import 'package:collection/collection.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part 'api.freezed.dart';

class AoiAdapter {
  final int index;

  const AoiAdapter({
    required this.index,
  });

  static Future<List<AoiAdapter>> getAdapters({dynamic hint}) =>
      RustLib.instance.api.aoiAdapterGetAdapters(hint: hint);

  Future<Stream<AoiPeripheral>> startScan(
          {FilterCriteria? filter, dynamic hint}) =>
      RustLib.instance.api
          .aoiAdapterStartScan(that: this, filter: filter, hint: hint);

  Future<void> stopScan({dynamic hint}) =>
      RustLib.instance.api.aoiAdapterStopScan(that: this, hint: hint);

  @override
  int get hashCode => index.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AoiAdapter &&
          runtimeType == other.runtimeType &&
          index == other.index;
}

class AoiCharacteristic {
  final String uuid;
  final String serviceUuid;
  final int propertiesBits;
  final List<AoiDescriptor> descriptors;

  const AoiCharacteristic({
    required this.uuid,
    required this.serviceUuid,
    required this.propertiesBits,
    required this.descriptors,
  });

  @override
  int get hashCode =>
      uuid.hashCode ^
      serviceUuid.hashCode ^
      propertiesBits.hashCode ^
      descriptors.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AoiCharacteristic &&
          runtimeType == other.runtimeType &&
          uuid == other.uuid &&
          serviceUuid == other.serviceUuid &&
          propertiesBits == other.propertiesBits &&
          descriptors == other.descriptors;
}

class AoiConnectedPeripheral {
  final AoiPeripheral peripheral;
  final List<AoiCharacteristic> characteristics;

  const AoiConnectedPeripheral({
    required this.peripheral,
    required this.characteristics,
  });

  Future<void> disconnect({dynamic hint}) => RustLib.instance.api
      .aoiConnectedPeripheralDisconnect(that: this, hint: hint);

  Future<Uint8List> read(
          {required AoiCharacteristic characteristic, dynamic hint}) =>
      RustLib.instance.api.aoiConnectedPeripheralRead(
          that: this, characteristic: characteristic, hint: hint);

  Future<void> write(
          {required AoiCharacteristic characteristic,
          required List<int> data,
          dynamic hint}) =>
      RustLib.instance.api.aoiConnectedPeripheralWrite(
          that: this, characteristic: characteristic, data: data, hint: hint);

  Future<void> writeWithoutResponse(
          {required AoiCharacteristic characteristic,
          required List<int> data,
          dynamic hint}) =>
      RustLib.instance.api.aoiConnectedPeripheralWriteWithoutResponse(
          that: this, characteristic: characteristic, data: data, hint: hint);

  @override
  int get hashCode => peripheral.hashCode ^ characteristics.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AoiConnectedPeripheral &&
          runtimeType == other.runtimeType &&
          peripheral == other.peripheral &&
          characteristics == other.characteristics;
}

class AoiDescriptor {
  final String uuid;
  final String serviceUuid;
  final String characteristicUuid;

  const AoiDescriptor({
    required this.uuid,
    required this.serviceUuid,
    required this.characteristicUuid,
  });

  @override
  int get hashCode =>
      uuid.hashCode ^ serviceUuid.hashCode ^ characteristicUuid.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AoiDescriptor &&
          runtimeType == other.runtimeType &&
          uuid == other.uuid &&
          serviceUuid == other.serviceUuid &&
          characteristicUuid == other.characteristicUuid;
}

class AoiManufacturerData {
  final int manufacturerId;
  final Uint8List data;

  const AoiManufacturerData({
    required this.manufacturerId,
    required this.data,
  });

  @override
  int get hashCode => manufacturerId.hashCode ^ data.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AoiManufacturerData &&
          runtimeType == other.runtimeType &&
          manufacturerId == other.manufacturerId &&
          data == other.data;
}

class AoiPeripheral {
  final AoiAdapter adapter;
  final String? name;
  final AoiPeripheralAddress address;
  final List<String> services;
  final List<AoiManufacturerData> manufacturerData;

  const AoiPeripheral({
    required this.adapter,
    this.name,
    required this.address,
    required this.services,
    required this.manufacturerData,
  });

  Future<AoiConnectedPeripheral> connect({dynamic hint}) =>
      RustLib.instance.api.aoiPeripheralConnect(that: this, hint: hint);

  @override
  int get hashCode =>
      adapter.hashCode ^
      name.hashCode ^
      address.hashCode ^
      services.hashCode ^
      manufacturerData.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AoiPeripheral &&
          runtimeType == other.runtimeType &&
          adapter == other.adapter &&
          name == other.name &&
          address == other.address &&
          services == other.services &&
          manufacturerData == other.manufacturerData;
}

@freezed
sealed class AoiPeripheralAddress with _$AoiPeripheralAddress {
  const AoiPeripheralAddress._();

  const factory AoiPeripheralAddress.macAddress(
    U8Array6 field0,
  ) = AoiPeripheralAddress_MacAddress;
  const factory AoiPeripheralAddress.uuid(
    String field0,
  ) = AoiPeripheralAddress_Uuid;
  const factory AoiPeripheralAddress.deviceId(
    String field0,
  ) = AoiPeripheralAddress_DeviceId;
}

@freezed
sealed class FilterCriteria with _$FilterCriteria {
  const FilterCriteria._();

  const factory FilterCriteria.any(
    List<FilterCriterion> field0,
  ) = FilterCriteria_Any;
  const factory FilterCriteria.all(
    List<FilterCriterion> field0,
  ) = FilterCriteria_All;
}

@freezed
sealed class FilterCriterion with _$FilterCriterion {
  const FilterCriterion._();

  const factory FilterCriterion.hasServiceUuid(
    String field0,
  ) = FilterCriterion_HasServiceUuid;
  const factory FilterCriterion.nameMatchesExactly(
    String field0,
  ) = FilterCriterion_NameMatchesExactly;
  const factory FilterCriterion.nameContains(
    String field0,
  ) = FilterCriterion_NameContains;
  const factory FilterCriterion.manufacturerId(
    int field0,
  ) = FilterCriterion_ManufacturerId;
  const factory FilterCriterion.manufacturerData(
    int field0,
    Uint8List field1,
  ) = FilterCriterion_ManufacturerData;
}

class U8Array6 extends NonGrowableListView<int> {
  static const arraySize = 6;

  @internal
  Uint8List get inner => _inner;
  final Uint8List _inner;

  U8Array6(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  U8Array6.init() : this(Uint8List(arraySize));
}
