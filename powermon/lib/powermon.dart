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
  static PowerMonPlatform get _platform => PowerMonPlatform.instance;

  Future<String> get getPlatformVersion {
    return _platform.getPlatformVersion;
  }
}
