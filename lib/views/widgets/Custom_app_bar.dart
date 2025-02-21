// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custome_search_icon.dart';

class Custom_app_bar extends StatelessWidget {
  Custom_app_bar({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: TextStyle(fontSize: 28)),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
