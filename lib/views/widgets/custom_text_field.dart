// ignore_for_file: avoid_types_as_parameter_names

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.labelText,
    this.maxLines = 1,
  });

  final String labelText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: Colors.cyan,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(Colors.cyan),
        hintText: "Typing....",
        hintStyle: TextStyle(color: Colors.cyan),
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.cyan),
        // labelText: labelText,
      ),
    );
  }

  // ignore: non_constant_identifier_names
  OutlineInputBorder buildBorder([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Color ?? Colors.white),
    );
  }
}
