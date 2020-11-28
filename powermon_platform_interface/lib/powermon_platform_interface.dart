library powermon_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'method_channel_powermon.dart';

abstract class PowerMonPlatform extends PlatformInterface {
  PowerMonPlatform() : super(token: _token);

  static final Object _token = Object();

  static PowerMonPlatform _instance = MethodChannelPowerMon();

  static PowerMonPlatform get instance => _instance;

  static set instance(PowerMonPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// Checks the connection status of the device.
  Future<String> get getPlatformVersion {
    throw UnimplementedError('getPlatformversion() has not been implemented.');
  }
}
