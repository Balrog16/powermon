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
    print('Yes that is me...');
    if (_onBatteryChargeChanged == null) {
      print('Is that right?');
      _onBatteryChargeChanged =
          _eventCh.receiveBroadcastStream().map((dynamic event) {
        return event;
      });
    }
    return _onBatteryChargeChanged;
  }
}
