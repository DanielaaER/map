import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration authInputDecoration({
    required String hintText,
  }) {
    return InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none),
        fillColor: Color(0xFF6da67a).withOpacity(0.1),
        filled: true);
  }
}