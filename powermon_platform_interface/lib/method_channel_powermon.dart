import 'package:flutter/services.dart';
import 'package:powermon_platform_interface/powermon_platform_interface.dart';

class MethodChannelPowerMon extends PowerMonPlatform {
  static const MethodChannel _method = const MethodChannel('powermon/method');

  MethodChannelPowerMon() {}

  @override
  String getPlatformVersion() {
    final String version = _method
        .invokeMethod('getPlatformVersion')
        .then((_) => print('Invoke getPlatformVersion'));
    return version;
  }
}
