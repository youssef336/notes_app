part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class Notesuccess extends NotesState {
  final List<NoteModel> notes;

  Notesuccess({required this.notes});
}

final class NotesFailed extends NotesState {
  final String error;
  NotesFailed(this.error);
}
