import 'package:flutter/material.dart';

class searchField extends StatelessWidget {
  const searchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Selecciona tu origen',
        style: TextStyle(
          color: Color(0xFF6da67a),
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}