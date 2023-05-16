

// ignore: camel_case_types
import 'package:flutter/material.dart';
import 'package:map/src/presentation/screens/destiny/data/destinyEstateTextField.dart';
import 'package:map/src/presentation/screens/destiny/data/destinyMunicipioField.dart';
import 'package:map/src/presentation/screens/destiny/data/destinyMunicipioTextField.dart';
import 'package:map/src/presentation/screens/destiny/data/searchField.dart';
import 'package:map/src/presentation/screens/destiny/data/destinyEstateField.dart';
import 'package:map/src/utils/searchButton.dart';
import 'package:map/src/presentation/screens/tarifas/presentation/tarifaScreen.dart';

import '../data/MapWidget.dart';

class destinyScreen extends StatefulWidget {
  const destinyScreen({super.key});

  @override
  State<StatefulWidget> createState() => _destinyScreenState();
}

class _destinyScreenState extends State<destinyScreen> {
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

              destinyEstateField(),
              destinyEstateTextField(),
              SizedBox(
                height: 2.0,
              ),
              destinyMunicipioField(),
              destinyMunicipioTextField(),
              SizedBox(
                height: 50,
              ),
              MapWidget(),
              SizedBox(
                height: 50,
              ),SearchButton(
                destinationScreen:tarifaScreen(),
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
