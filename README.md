# Aoi

A Flutter wrapper for [btleplug](https://github.com/deviceplug/btleplug), the Rust Bluetooth Low Energy (BLE) library.

[flutter_rust_bridge](https://github.com/fzyzcjy/flutter_rust_bridge) is used for integrating Flutter/Dart & Rust.

Tested on Windows, MacOS and iOS.

## How to build

### Install Rust
Install instructions via rustup: https://www.rust-lang.org/tools/install

### Set the Rust version to 1.64.0 (iOS / MacOS only)
Currently btleplug does not compile with versions >= 1.65.0 on iOS / MacOS. See issue: https://github.com/deviceplug/btleplug/issues/293
```
rustup install 1.64.0
```

### Install the targets you want to compile for:
Windows
```
rustup target add x86_64-pc-windows-msvc
```
iOS
```
rustup target add arch64-apple-ios
```
MacOS (Intel CPUs)
```
rustup target add x86_64-apple-darwin
```
MacOS (Apple CPUs, M1 or newer)
```
rustup target add aarch64-apple-darwin
```

### Install Flutter
Install instructions: https://docs.flutter.dev/get-started/install

### Install the flutter_rust_bridge code generator
```
cargo install flutter_rust_bridge_codegen
```

### Generate code and compile
Change to the "aoi" sub-directory and run cargo build:
```
cd aoi
cargo build --release
```

### Run the code generator only
From the root directory run:
```
flutter_rust_bridge_codegen --rust-input aoi\src\api.rs --dart-output .\lib\bridge_generated.dart -c ios/Runner/bridge_generated.h
```

## License

???
