import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:mynote/model/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetch() {
    try {
      var noteBox = Hive.box<NoteModel>('note_box');

      emit(NoteSuccess(noteBox.values.toList()));
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
