// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/views/widgets/Custom_app_bar.dart';
import 'package:note_app/views/widgets/notes_list_view_body.dart';

class NotesView_Body extends StatefulWidget {
  NotesView_Body({super.key});

  @override
  State<NotesView_Body> createState() => _NotesView_BodyState();
}

class _NotesView_BodyState extends State<NotesView_Body> {
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Column(
        children: [
          const SizedBox(height: 40),
          Custom_app_bar(text: 'Notes', icon: Icons.search),
          const Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
