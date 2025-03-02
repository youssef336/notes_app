import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelect, required this.color});
  final bool isSelect;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isSelect
        ? CircleAvatar(
          radius: 34,
          backgroundColor: Colors.white,
          child: CircleAvatar(backgroundColor: color, radius: 30),
        )
        : CircleAvatar(backgroundColor: color, radius: 34);
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int selectedIndex = 0;

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
                BlocProvider.of<AddNoteCubit>(context).color = Kcolors[index];
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
  }
}
