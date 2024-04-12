import 'package:flutter/material.dart';
import 'package:learn_method_channel/home_page.dart';

class LearnApp extends StatelessWidget {
  const LearnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'LearnApp - Method Channel',
      home: HomePage(),
    );
  }
}
