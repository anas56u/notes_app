import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/addnote_cubit/addnotes_state.dart';
import 'package:notes_app/conest.dart';
import 'package:notes_app/models/note_model.dart';

class AddnotesCubit extends Cubit<AddnotesState> {
  AddnotesCubit() : super(AddnotesInitial());
  
  addnote(NoteModel note) async {
    emit(AddnotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(knotes);
      await notesBox.add(note);
      emit(AddnotesSuccess());
    } catch (e) {
      emit(AddnotesFailure(e.toString()));
    }
  }
}
