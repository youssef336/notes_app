import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/Notes_view_body.dart';
import 'package:note_app/views/widgets/add_note_buttom_sheet.dart';

class NotePage extends StatelessWidget {
  const NotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesView_Body(),
    );
  }
}
