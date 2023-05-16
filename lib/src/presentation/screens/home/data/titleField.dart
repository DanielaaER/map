import 'package:flutter/material.dart';

class titleField extends StatelessWidget {
  const titleField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Find My Route',
        style: TextStyle(
          color: Color(0xFF6da67a),
          fontSize: 50.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}