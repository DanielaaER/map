

// ignore: camel_case_types
import 'package:flutter/material.dart';
import 'package:map/src/presentation/screens/origin/data/originEstateTextField.dart';
import 'package:map/src/presentation/screens/origin/data/originMunicipioField.dart';
import 'package:map/src/presentation/screens/origin/data/originMunicipioTextField.dart';
import 'package:map/src/presentation/screens/origin/data/searchField.dart';
import 'package:map/src/presentation/screens/origin/data/originEstateField.dart';
import 'package:map/src/utils/searchButton.dart';

import 'package:map/src/presentation/screens/destiny/presentation/destinyScreen.dart';

import '../data/MapWidget.dart';

class originScreen extends StatefulWidget {
  const originScreen({super.key});

  @override
  State<StatefulWidget> createState() => _originScreenState();
}

class _originScreenState extends State<originScreen> {
@override
Widget build(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;

  return MaterialApp(
    home: Scaffold(
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
              SizedBox(
                height: 50,
              ),
              searchField(),
              SizedBox(
                height: 50,
              ),

              originEstateField(),
              originEstateTextField(),
              SizedBox(
                height: 2.0,
              ),
              originMunicipioField(),
              originMunicipioTextField(),
              SizedBox(
                height: 50,
              ),
              MapWidget(),
              SizedBox(
                height: 50,
              ),SearchButton(
                destinationScreen: destinyScreen(),
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
