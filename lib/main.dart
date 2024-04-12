import 'package:battery_info/battery_info.dart';
import 'package:flutter/material.dart';
import 'package:learn_method_channel/learn_app.dart';

void main() {
  BatteryInfo.getBatteryLevel();
  runApp(const LearnApp());
}