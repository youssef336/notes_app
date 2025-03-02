import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = 'EditNoteView';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments;

    // Debug the arguments
    print('Arguments: $args');
    print('Type of arguments: ${args.runtimeType}');

    if (args is NoteModel) {
      NoteModel note = args;
      return Scaffold(body: EditNoteViewBody(note: note));
    } else {
      // Handle the case where args is not of type NoteModel
      return Scaffold(body: Center(child: Text('Invalid data received')));
    }
  }
}
