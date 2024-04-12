import 'package:battery_info/battery_info.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _batteryLevel = 0;

  @override
  void initState() {
    super.initState();
    _updateBatteryLevel();
  }

  void _updateBatteryLevel() {
    BatteryInfo.getBatteryLevel().then((value) {
      if (value != null) {
        setState(() {
          _batteryLevel = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LearnApp - Method Channel'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Battery Level: $_batteryLevel'),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: FilledButton.tonal(
                onPressed: () {
                  _updateBatteryLevel();
                },
                child: Text('Update Info'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
