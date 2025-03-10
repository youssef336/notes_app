import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/colors_listview.dart';
import 'package:note_app/views/widgets/custom_Buttom.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  String? _title, _description;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: _autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 36),
          CustomTextField(
            labelText: 'Title',
            onSaved: (value) => _title = value,
          ),
          const SizedBox(height: 16),
          CustomTextField(
            labelText: 'Description',
            maxLines: 5,
            onSaved: (value) => _description = value,
          ),
          const SizedBox(height: 46),
          ColorListView(),
          const SizedBox(height: 20),

          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return custom_Buttom(
                isLoading: state is AddNoteLoading ? true : false,
                text: 'Add',
                onTAP: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    var currentDateTime = DateTime.now();
                    var formattedDate = DateFormat(
                      'yyyy-MM-dd – kk:mm',
                    ).format(currentDateTime);
                    var noteModel = NoteModel(
                      title: _title!,
                      description: _description!,

                      data: formattedDate,
                      // ignore: deprecated_member_use
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    setState(() {
                      _autovalidateMode = AutovalidateMode.onUserInteraction;
                    });
                  }
                },
              );
            },
          ),
          const SizedBox(height: 22),
        ],
      ),
    );
  }
}
