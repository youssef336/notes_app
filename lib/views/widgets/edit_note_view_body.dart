import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/Custom_app_bar.dart';
import 'package:note_app/views/widgets/colors_listview.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';
import 'package:note_app/views/widgets/edit_note_colors_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title;
  String? description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Column(
        children: [
          const SizedBox(height: 40),
          Custom_app_bar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.description = description ?? widget.note.description;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            text: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(height: 36),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            labelText: widget.note.title,
          ),
          const SizedBox(height: 16),
          CustomTextField(
            onChanged: (value) {
              description = value;
            },
            labelText: widget.note.description,
            maxLines: 5,
          ),
          const SizedBox(height: 36),
          EditNoteColorsList(note: widget.note),
        ],
      ),
    );
  }
}
