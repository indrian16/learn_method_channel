
import 'src/battery_info_platform_interface.dart';

class BatteryInfo {
  static Future<int?> getBatteryLevel() {
    return BatteryInfoPlatform.instance.getBatteryLevel();
  }

  static Future<String?> getSystemVersion() {
    return BatteryInfoPlatform.instance.getSystemVersion();
  }
}
