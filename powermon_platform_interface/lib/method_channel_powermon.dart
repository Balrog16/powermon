import 'package:flutter/services.dart';
import 'package:powermon_platform_interface/powermon_platform_interface.dart';

class MethodChannelPowermon extends PowermonPlatform {
  static const MethodChannel _method = const MethodChannel('powermon/method');

  MethodChannelPowermon() {}

  Future<String> get getPlatformVersion => _method
      .invokeMethod<String>('getPlatformVersion')
      .then<String>((dynamic result) => result);
}
