// You have generated a new plugin project without
// specifying the `--platforms` flag. A plugin project supports no platforms is generated.
// To add platforms, run `flutter create -t plugin --platforms <platforms> .` under the same
// directory. You can also find a detailed instruction on how to add platforms in the `pubspec.yaml` at https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

import 'package:powermon_platform_interface/powermon_platform_interface.dart';

class Powermon {
  factory Powermon() {
    if (_singleton == null) {
      _singleton = Powermon._();
    }
    return _singleton;
  }

  Powermon._();
  static Powermon _singleton;
  static PowermonPlatform get _platform => PowermonPlatform.instance;

  Future<String> get getPlatformVersion {
    return _platform.getPlatformVersion;
  }

  /// Is called or invoked as and when the percentage charge changes
  Stream<String> get onChargePercentageChanged {
    print('Hello is it me?');
    return _platform.onChargePercentageChanged;
  }
}
