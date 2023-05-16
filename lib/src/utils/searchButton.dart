import 'package:flutter/material.dart';
import 'package:map/src/utils/CustomButton.dart';

class SearchButton extends StatelessWidget {
  final Widget destinationScreen;

  const SearchButton({required this.destinationScreen});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destinationScreen),
        );
      },
      text: 'Buscar',
    );
  }
}
