import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_Buttom.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 36),
            CustomTextField(labelText: 'Title'),
            SizedBox(height: 16),
            CustomTextField(labelText: 'Description', maxLines: 5),
            SizedBox(height: 56),
            custom_Buttom(text: 'Add'),
            SizedBox(height: 22),
          ],
        ),
      ),
    );
  }
}
