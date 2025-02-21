class NoteModel {
  final String title;
  final String description;
  final String data;
  final int color;
  NoteModel({
    required this.title,
    required this.description,
    required this.data,
    required this.color,
  });

  factory NoteModel.fromJson(jsonData) {
    return NoteModel(
      title: jsonData['title'],
      description: jsonData['description'],
      data: jsonData['Data'],
      color: jsonData['color'],
    );
  }
}
