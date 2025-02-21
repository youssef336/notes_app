import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/Custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Custom_app_bar(text: 'Edit Note');
  }
}
