import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/Custom_app_bar.dart';

class NotesView_Body extends StatelessWidget {
  const NotesView_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Column(children: [Custom_app_bar()]),
    );
  }
}
