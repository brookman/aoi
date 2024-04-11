// Rust FFI related
import 'package:aoi/aoi.dart';

export 'src/api.dart';
export 'src/extensions.dart';
export 'src/frb_generated.dart';

class Aoi {
  static Future<void> init() async {
    if (!RustLib.instance.initialized) {
      await RustLib.init();
    }
  }
}
