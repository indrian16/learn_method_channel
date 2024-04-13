class BatteryUtils {
    static func getBatteryLevel() -> Int {
        let device = UIDevice.current;
        device.isBatteryMonitoringEnabled = true
        if device.batteryState == UIDevice.BatteryState.unknown {
            return 0
        } else {
            return Int(device.batteryLevel * 100)
        }
    }
    
    static func getSystemVersion() -> String {
        let device = UIDevice.current
        return "\(device.systemName) \(device.systemVersion)"
    }
}
