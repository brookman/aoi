import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:aoi/aoi.dart';

// If you are running this example locally, you will need to run
// `cargo build -r` in to root dir to generate the needed dylib.
Future<void> main() async {
  await Aoi.init();

  final adapters = await AoiAdapter.getAdapters();
  final adapter = adapters.first;

  final peripheral = await (await adapter.startScan())
      .first
      .timeout(const Duration(seconds: 10));

  print('Found peripheral: ${peripheral.prettyPrint()}');

  print('Stopping scan...');
  await adapter.stopScan();
  print('Scan stopped');

  AoiConnectedPeripheral connectedPeripheral;
  try {
    print('Connecting...');
    connectedPeripheral = await peripheral.connect();
    print('Connected');
  } catch (e) {
    print('Could not connect: $e');
    return;
  }

  print(
      'connectedPeripheral characteristics: ${connectedPeripheral.characteristics}');

  for (final c in connectedPeripheral.characteristics) {
    print('Characteristic: ${c.prettyPrint()}');

    if (c.hasProperty(AoiCharacteristicProperty.read)) {
      print('Trying to read it...');
      try {
        final data = await connectedPeripheral
            .read(characteristic: c)
            .timeout(const Duration(seconds: 10));
        print('Data: $data');
        try {
          print('Data as string: ${const Utf8Decoder().convert(data)}');
        } catch (e) {
          print('Not a valid string');
        }
      } catch (e) {
        print('Error while reading characteristic: $e');
      }
    }

    if (c.hasProperty(AoiCharacteristicProperty.write)) {
      print('Trying to write it...');
      try {
        await connectedPeripheral
            .write(characteristic: c, data: Uint8List.fromList([0x42, 0x42]))
            .timeout(const Duration(seconds: 10));
      } catch (e) {
        print('Error while writing characteristic: $e');
      }
    }

    print('Trying to read it...');
    try {
      final data = await connectedPeripheral
          .read(characteristic: c)
          .timeout(const Duration(seconds: 10));
      print('Data: $data');
      try {
        print('Data as string: ${const Utf8Decoder().convert(data)}');
      } catch (e) {
        print('Not a valid string');
      }
    } catch (e) {
      print('Error while reading characteristic: $e');
    }
  }

  print('Disconnect');
  await connectedPeripheral.disconnect();

  print('Done');
}

DynamicLibrary createDynamicLibrary() {
  const libName = 'embedded_aoi';
  final libPrefix = {
    Platform.isWindows: '',
    Platform.isMacOS: 'lib',
    Platform.isLinux: 'lib',
  }[true]!;
  final libSuffix = {
    Platform.isWindows: 'dll',
    Platform.isMacOS: 'dylib',
    Platform.isLinux: 'so',
  }[true]!;
  final dylibPath = '../../../target/release/$libPrefix$libName.$libSuffix';
  return DynamicLibrary.open(dylibPath);
}

Directory getTmpDir() => Directory.systemTemp.createTempSync();
