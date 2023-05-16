import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:map/src/utils/searchButton.dart';
import 'package:map/src/presentation/screens/home/presentation/homeScreen.dart';
import 'package:map/src/presentation/screens/tarifas/data/kilometrosLabel.dart';
import 'package:map/src/presentation/screens/tarifas/data/kilometrosField.dart';
import 'package:map/src/presentation/screens/tarifas/data/kilometrosTextField.dart';
import 'package:map/src/presentation/screens/tarifas/data/tiempoField.dart';
import 'package:map/src/presentation/screens/tarifas/data/tiempoTextField.dart';
import 'package:map/src/presentation/screens/tarifas/data/casetaField.dart';
import 'package:map/src/presentation/screens/tarifas/data/tiempoTextField.dart';

// ignore: camel_case_types
class tarifaScreen extends StatefulWidget {
  const tarifaScreen({super.key});

  @override
  State<StatefulWidget> createState() => _tarifaScreen();
}

class _tarifaScreen extends State<tarifaScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onVerticalDragUpdate: (_) {},
          onVerticalDragDown: (_) {},
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.all(30),
              child: Column(
                children: [
                  SizedBox(height: 60),
                  kilometrosLabel(),
                  SizedBox(height: 30),
                  kilometrosField(),
                  kilometrosTextField(),
                  SizedBox(height: 30),
                  tiempoField(),
                  tiempoTextField(),
                  SizedBox(height: 30),
                  casetaField(),
                  tiempoTextField(),
                  SizedBox(height: 60),
                  SearchButton(
                    destinationScreen: homeScreen(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
