part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NoteInitial extends NotesState {}

class NoteIoading extends NotesState {}

class NoteSuccess extends NotesState {
  final List<NoteModel> notes;

  NoteSuccess(this.notes);
}

class AddNoteFailure extends NotesState {
  final String errMes;

  AddNoteFailure(this.errMes);
}
