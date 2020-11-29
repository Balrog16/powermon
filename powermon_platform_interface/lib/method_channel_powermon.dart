import 'package:flutter/services.dart';
import 'package:powermon_platform_interface/powermon_platform_interface.dart';

class MethodChannelPowermon extends PowermonPlatform {
  static const MethodChannel _method = const MethodChannel('powermon/method');
  static const EventChannel _eventCh = const EventChannel('powermon/event');

  MethodChannelPowermon();

  Stream<String> _onBatteryChargeChanged;

  Future<String> get getPlatformVersion => _method
      .invokeMethod<String>('getPlatformVersion')
      .then<String>((dynamic result) => result);

  Stream<String> get onChargePercentageChanged {
    if (_onBatteryChargeChanged == null) {
      _onBatteryChargeChanged = _eventCh.receiveBroadcastStream();
    }
    return _onBatteryChargeChanged;
  }
}
