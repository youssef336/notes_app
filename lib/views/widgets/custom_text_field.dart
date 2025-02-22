// ignore_for_file: avoid_types_as_parameter_names

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.labelText,
    this.maxLines = 1,
    this.onSaved,
  });

  final String labelText;
  final int maxLines;
  final Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Please enter some text';
        }
      },
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
