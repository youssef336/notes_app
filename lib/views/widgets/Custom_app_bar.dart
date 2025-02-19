import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custome_search_icon.dart';

class Custom_app_bar extends StatelessWidget {
  const Custom_app_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Notes", style: TextStyle(fontSize: 28)),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
