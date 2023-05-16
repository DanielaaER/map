import 'package:flutter/material.dart';

class originMunicipioField extends StatelessWidget {
  const originMunicipioField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      child: Text(
        'Municipio origen',
        style: TextStyle(
          color: Color(0xFF6da67a),
          fontSize: 25.0,
          fontWeight: FontWeight.bold,

        ),
      ),
    );
  }
}