// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, camel_case_types

import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/Custom_app_bar.dart';
import 'package:note_app/views/widgets/notes_list_view_body.dart';

class NotesView_Body extends StatelessWidget {
  const NotesView_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Column(
        children: const [
          SizedBox(height: 40),
          Custom_app_bar(),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
