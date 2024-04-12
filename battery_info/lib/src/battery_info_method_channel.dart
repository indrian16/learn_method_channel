import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'battery_info_platform_interface.dart';

/// An implementation of [BatteryInfoPlatform] that uses method channels.
class MethodChannelBatteryInfo extends BatteryInfoPlatform {
  final _channel = const MethodChannel('plugins.indrian.com/battery_info');

  @override
  Future<int?> getBatteryLevel() async {
    try {
      final level = await _channel.invokeMethod('getBatteryLevel');
      if (level != null && level is int) {
        return level;
      }
      return null;
    } catch(e) {
      return null;
    }
  }
}
