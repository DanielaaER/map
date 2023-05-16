import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:map/src/presentation/screens/home/presentation/homeScreen.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Find My Route',
      home: homeScreen(),
    );
  }
}