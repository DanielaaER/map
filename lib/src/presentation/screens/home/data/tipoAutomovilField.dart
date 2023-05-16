import 'package:flutter/material.dart';

class tipoAutomovilField extends StatelessWidget {
  const tipoAutomovilField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      child: Text(
        'Tipo de Automovil',
        style: TextStyle(
          color: Color(0xFF6da67a),
          fontSize: 25.0,
          fontWeight: FontWeight.bold,

        ),
      ),
    );
  }
}