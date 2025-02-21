import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'EditNoteView');
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Container(
          padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
          width: double.infinity,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0xffFFCC80),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  "data",
                  style: TextStyle(color: Colors.black, fontSize: 29),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(
                    "Bild yur body13231232143rer",
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: .5),
                      fontSize: 16,
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete, color: Colors.black, size: 28),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 23),
                child: Text(
                  "may 51",
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: .5),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
