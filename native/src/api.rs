// This is the entry point of your Rust library.
// When adding new code to your project, note that only items used
// here will be transformed to their Dart equivalents.

use btleplug::api::{Central, Characteristic, Manager as _, Peripheral as _, ScanFilter};
use btleplug::platform::{Adapter, Manager, Peripheral};
use btleplug::{Error, Result};

use tokio::runtime::Runtime;

use chrono::Duration;
use uuid::Uuid;

// A plain enum without any fields. This is similar to Dart- or C-style enums.
// flutter_rust_bridge is capable of generating code for enums with fields
// (@freezed classes in Dart and tagged unions in C).
pub enum Platform {
    Unknown,
    Android,
    Ios,
    Windows,
    Unix,
    MacIntel,
    MacApple,
    Wasm,
}

// A function definition in Rust. Similar to Dart, the return type must always be named
// and is never inferred.
pub fn platform() -> Platform {
    // This is a macro, a special expression that expands into code. In Rust, all macros
    // end with an exclamation mark and can be invoked with all kinds of brackets (parentheses,
    // brackets and curly braces). However, certain conventions exist, for example the
    // vector macro is almost always invoked as vec![..].
    //
    // The cfg!() macro returns a boolean value based on the current compiler configuration.
    // When attached to expressions (#[cfg(..)] form), they show or hide the expression at compile time.
    // Here, however, they evaluate to runtime values, which may or may not be optimized out
    // by the compiler. A variety of configurations are demonstrated here which cover most of
    // the modern oeprating systems. Try running the Flutter application on different machines
    // and see if it matches your expected OS.
    //
    // Furthermore, in Rust, the last expression in a function is the return value and does
    // not have the trailing semicolon. This entire if-else chain forms a single expression.
    if cfg!(windows) {
        Platform::Windows
    } else if cfg!(target_os = "android") {
        Platform::Android
    } else if cfg!(target_os = "ios") {
        Platform::Ios
    } else if cfg!(all(target_os = "macos", target_arch = "aarch64")) {
        Platform::MacApple
    } else if cfg!(target_os = "macos") {
        Platform::MacIntel
    } else if cfg!(target_family = "wasm") {
        Platform::Wasm
    } else if cfg!(unix) {
        Platform::Unix
    } else {
        Platform::Unknown
    }
}

// The convention for Rust identifiers is the snake_case,
// and they are automatically converted to camelCase on the Dart side.
pub fn rust_release_mode() -> bool {
    cfg!(not(debug_assertions))
}

// --------------------------------------

#[derive(Debug, Clone)]
pub enum SearchCriteria {
    Any(Vec<SearchCriterion>),
    All(Vec<SearchCriterion>),
}

#[derive(Debug, Clone)]
pub enum SearchCriterion {
    WithService(Uuid),
    NameMatchesExactly(String),
    NameContains(String),
}

#[derive(Debug, Clone)]
pub struct BleDevice {
    pub name: Option<String>,
    pub address: BleAddress,
}

#[derive(Debug, Copy, Clone, Default, Eq, Hash, Ord, PartialEq, PartialOrd)]
pub struct BleAddress {
    pub address: [u8; 6],
}

// const AURA_PROVISION_SERVICE: Uuid = Uuid::from_u128(0x0000fff0_0000_0000_0000_aaaabbbbcccc);
const AURA_PROVISION_SERVICE: Uuid = Uuid::from_u128(0x0000181c_0000_1000_8000_00805f9b34fb);
const AURA_CHAR_SSID: Uuid = Uuid::from_u128(0x00002001_0000_0000_0000_aaaabbbbcccc);


// pub fn find_ble_devices(
//     search_criteria: Vec<SearchCriteria>,
//     search_duration: Duration,
// ) -> Vec<BleDevice> {
//     vec![BleDevice {
//         name: Some("My Aura device".to_string()),
//         address: BleAddress {
//             address: [0, 1, 2, 3, 4, 5],
//         },
//     }]
// }

pub fn find_ble_devices(
    search_criteria: Vec<SearchCriteria>,
    search_duration: Duration,
) -> Vec<BleDevice> {
    let rt = Runtime::new().unwrap();
    rt.block_on(async {
        find_devices(AURA_PROVISION_SERVICE, search_duration).await.unwrap_or(vec![])
    })
}

async fn find_devices(service: Uuid, search_duration: Duration) -> Result<Vec<BleDevice>> {
    let manager = Manager::new().await?;

    // get the first bluetooth adapter
    let adapters = manager.adapters().await?;
    let adapter = adapters.into_iter().nth(0).unwrap();

    // start scanning for devices
    adapter.start_scan(ScanFilter::default()).await?;

    std::thread::sleep(search_duration.to_std().unwrap());

    let devices = find_devices_having_service(&adapter, service).await;

    let mut results: Vec<BleDevice> = vec![];

    for device in devices {
        let name = get_local_name(&device).await;
        results.push(BleDevice {
            name,
            address: BleAddress {
                address: device.address().into_inner(),
            },
        });
        write_characteristic(&device, AURA_CHAR_SSID, "Hello from Rust".as_bytes()).await?;
    }

    adapter.stop_scan().await?;

    return Ok(results);
}

async fn find_devices_having_service(adapter: &Adapter, uuid: Uuid) -> Vec<Peripheral> {
    let mut result: Vec<Peripheral> = vec![];
    let devices = adapter.peripherals().await.unwrap_or(vec![]);

    println!("devices: {:?}", &devices);

    for device in devices.into_iter() {
        if has_serivce(&device, uuid).await {
            result.push(device);
        }
    }
    result
}

async fn has_serivce(peripheral: &Peripheral, uuid: Uuid) -> bool {
    match peripheral.properties().await {
        Ok(Some(properties)) => properties.services.contains(&uuid),
        _ => false,
    }
}

async fn get_local_name(peripheral: &Peripheral) -> Option<String> {
    peripheral.properties().await.ok()??.local_name
}

async fn write_characteristic(
    device: &Peripheral,
    characteristic: Uuid,
    value: &[u8],
) -> Result<()> {
    device.connect().await?;
    let characteristic = find_characteristic(&device, characteristic).await?;
    device
        .write(
            &characteristic,
            value,
            btleplug::api::WriteType::WithResponse,
        )
        .await?;
    device.disconnect().await?;

    Ok(())
}

async fn find_characteristic(device: &Peripheral, characteristic: Uuid) -> Result<Characteristic> {
    device.discover_services().await?;

    let characteristic = device
        .characteristics()
        .iter()
        .find(|c| c.uuid == characteristic)
        .ok_or(Error::Other(
            format!("Characteristic {:?} not found", characteristic).into(),
        ))?
        .to_owned();
    return Ok(characteristic);
}
