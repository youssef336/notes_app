import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/Custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_note_item.dart';

class NotesView_Body extends StatelessWidget {
  const NotesView_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [SizedBox(height: 40), Custom_app_bar(), NoteItem()],
      ),
    );
  }
}
