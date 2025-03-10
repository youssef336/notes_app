import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String description;
  @HiveField(2)
  final String data;
  @HiveField(3)
  int color;
  NoteModel({
    required this.title,
    required this.description,
    required this.data,
    required this.color,
  });

  // factory NoteModel.fromJson(jsonData) {
  //   return NoteModel(
  //     title: jsonData['title'],
  //     description: jsonData['description'],
  //     data: jsonData['Data'],
  //     color: jsonData['color'],
  //   );
  // }
}
