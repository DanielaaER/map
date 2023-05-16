
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:map/src/utils/searchButton.dart';
import 'package:map/src/presentation/screens/origin/presentation/originScreen.dart';
import 'package:map/src/presentation/screens/home/data/titleField.dart';
import 'package:map/src/presentation/screens/home/data/tipoAutomovilTextField.dart';
import 'package:map/src/presentation/screens/home/data/tipoAutomovilField.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {

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
                  SizedBox(
                    height: 120,
                  ),
                  titleField(),
                  SizedBox(
                    height: 120,
                  ),
                  tipoAutomovilField(),
                  tipoAutomovilTextField(),
                  SizedBox(
                    height: 120,
                  ),
                  SearchButton(
                    destinationScreen: originScreen(),
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
