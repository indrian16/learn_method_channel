import Flutter
import UIKit

public class BatteryInfoPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "plugins.indrian.com/battery_info", binaryMessenger: registrar.messenger())
    let instance = BatteryInfoPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getBatteryLevel":
        result(BatteryUtils.getBatteryLevel())
    case "getSystemVersion":
        result(BatteryUtils.getSystemVersion())
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
