import 'package:flutter/material.dart';

class kilometrosLabel extends StatelessWidget {
  final double? fontSize; // Definición del parámetro fontSize

  const kilometrosLabel({Key? key, this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Tarifa',
        style: TextStyle(
          color: Color(0xFF6da67a),
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}