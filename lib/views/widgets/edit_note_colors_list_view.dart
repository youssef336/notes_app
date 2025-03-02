import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/colors_listview.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int selectedIndex;
  @override
  void initState() {
    selectedIndex = Kcolors.indexOf(Color(widget.note.color));
    super.initState();
    selectedIndex = _findClosestColorIndex(Color(widget.note.color));
  }

  int _findClosestColorIndex(Color color) {
    int closestIndex = 0;
    double closestDistance = double.infinity;

    for (int i = 0; i < Kcolors.length; i++) {
      double distance = _colorDistance(color, Kcolors[i]).toDouble();
      if (distance < closestDistance) {
        closestDistance = distance;
        closestIndex = i;
      }
    }

    return closestIndex;
  }

  int _colorDistance(Color c1, Color c2) {
    // ignore: deprecated_member_use
    return (c1.red - c2.red) * (c1.red - c2.red) +
        // ignore: deprecated_member_use
        (c1.green - c2.green) * (c1.green - c2.green) +
        (c1.blue - c2.blue) * (c1.blue - c2.blue);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: GestureDetector(
              onTap: () {
                selectedIndex = index;
                widget.note.color = Kcolors[index].value;
                setState(() {});
              },
              child: ColorItem(
                isSelect: selectedIndex == index,
                color: Kcolors[index],
              ),
            ),
          );
        },
      ),
    );
    ;
  }
}
