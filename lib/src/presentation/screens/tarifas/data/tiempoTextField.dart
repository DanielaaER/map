import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:map/src/utils/input_decorations.dart';

class tiempoTextField extends StatelessWidget {
  const tiempoTextField({super.key});


  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: true,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: TextFormField(
          enabled: false,
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecorations.authInputDecoration(
            hintText: '',
          ),
        ),
      ),
    );
  }
}