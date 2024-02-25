import 'bridge_generated.dart';

enum AoiCharacteristicProperty {
  broadcast(0x01),
  read(0x02),
  writeWithoutResponse(0x04),
  write(0x08),
  notify(0x10),
  indicate(0x20),
  authenticatedSignedWrites(0x40),
  extendedProperties(0x80);

  final int bit;

  const AoiCharacteristicProperty(this.bit);
}

extension AoiCharacteristicExtensions on AoiCharacteristic {
  bool hasProperty(AoiCharacteristicProperty property) =>
      property.bit & propertiesBits != 0;

  Set<AoiCharacteristicProperty> get properties =>
      AoiCharacteristicProperty.values.where(hasProperty).toSet();

  String prettyPrint() {
    return 'AoiCharacteristic{uuid: $uuid, serviceUuid: $serviceUuid, properties: $properties}';
  }
}

extension AoiPeripheralExtensions on AoiPeripheral {
  String prettyPrint() {
    final data = manufacturerData.map((m) => m.prettyPrint()).toList();
    return 'AoiPeripheral{name: $name, address: $address, services: $services, manufacturerData: $data';
  }
}

extension AoiManufacturerDataExtensions on AoiManufacturerData {
  String prettyPrint() {
    return 'AoiManufacturerData{manufacturerId: $manufacturerId, data: $data}';
  }
}
