// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class custom_Buttom extends StatelessWidget {
  custom_Buttom({super.key, required this.text, this.onTAP});
  String text;
  VoidCallback? onTAP;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTAP,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(12),
        ),
        width: double.infinity,
        height: 50,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 19),
          ),
        ),
      ),
    );
  }
}
