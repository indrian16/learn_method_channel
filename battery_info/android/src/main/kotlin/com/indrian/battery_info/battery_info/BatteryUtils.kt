package com.indrian.battery_info.battery_info

import android.content.Context
import android.content.ContextWrapper
import android.content.Intent
import android.content.IntentFilter
import android.os.BatteryManager
import android.os.Build.VERSION
import android.os.Build.VERSION_CODES

object BatteryUtils {
    fun getBatteryLevel(context: Context): Int {
        return if (VERSION.SDK_INT >= VERSION_CODES.LOLLIPOP) {
            val batteryManager = context.getSystemService(Context.BATTERY_SERVICE) as BatteryManager
            batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY)
        } else {
            val intent = ContextWrapper(context).registerReceiver(null, IntentFilter(Intent.ACTION_BATTERY_CHANGED))
            val levelExtra = intent?.getIntExtra(BatteryManager.EXTRA_LEVEL, -1) ?: 0
            val scaleExtra = intent?.getIntExtra(BatteryManager.EXTRA_SCALE, -1) ?: 0
            (levelExtra * 100) / scaleExtra
        }
    }
}