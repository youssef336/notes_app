// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/simple_bloc_observer.dart';
import 'package:note_app/views/Note_view.dart';
import 'package:note_app/views/edit_note_view.dart';

void main() async {
  await Hive.initFlutter();

  Bloc.observer = MyBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(KNotesBox);
  runApp(const Notes_app());
}

class Notes_app extends StatelessWidget {
  const Notes_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: NotePage.id,
      routes: {
        NotePage.id: (context) => const NotePage(),
        EditNoteView.id: (context) => const EditNoteView(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: NotePage(),
    );
  }
}
