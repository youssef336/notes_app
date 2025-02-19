import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/Notes_view_body.dart';

class NotePage extends StatelessWidget {
  const NotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: const NotesView_Body(),
    );
  }
}
