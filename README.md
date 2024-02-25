<p align="center">
<a href="https://github.com/brookman/aoi/actions"><img src="https://github.com/brookman/aoi/actions/workflows/build.yml/badge.svg" alt="Build Status"></a>
<a href="https://github.com/brookman/aoi"><img src="https://img.shields.io/github/stars/brookman/aoi.svg?style=flat&logo=github&colorB=deeppink&label=stars" alt="Github Stars"></a>
<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="MIT License"></a>
</p>

<p align="center">
<img src="https://github.com/brookman/aoi/blob/main/assets/banner.jpg?raw=true" width="100%" alt="Aoi Banner" />
</p>

# AOI - Bluetooth Low Energy (BLE) library

An experimental Dart/Flutter wrapper for https://github.com/deviceplug/btleplug

🚧 This is a work in progress: Do not use in production. 🚧

---

## Features
- Access BLE adapters
- Scan for peripherals
- Filter by:
  - Name
  - Manufacturer ID
  - Manufacturer data
  - Having Service UUID
- Connect to peripheral
- List, read and write characteristics

## Supported platforms (for now)
- iOS
- MacOS
- Windows

## Getting Started
- With Flutter, run `flutter pub add aoi flutter_aoi`
- For Dart-only, run `dart pub add aoi`