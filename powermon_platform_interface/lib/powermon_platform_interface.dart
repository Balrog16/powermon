library powermon_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'method_channel_powermon.dart';

abstract class PowermonPlatform extends PlatformInterface {
  PowermonPlatform() : super(token: _token);

  static final Object _token = Object();

  static PowermonPlatform _instance = MethodChannelPowermon();

  static PowermonPlatform get instance => _instance;

  static set instance(PowermonPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// Checks the connection status of the device.
  Future<String> get getPlatformVersion {
    throw UnimplementedError('getPlatformversion() has not been implemented.');
  }
}
