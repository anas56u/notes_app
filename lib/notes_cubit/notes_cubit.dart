import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/addnote_cubit/addnotes_state.dart';
import 'package:notes_app/conest.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/notes_cubit/notes_state.dart';

class notesCubit extends Cubit<notesState> {
  notesCubit() : super(notesInitial());
    List<NoteModel>? notes;

  fetchall_notes() {
    var notesbox = Hive.box<NoteModel>(knotes);
    notes = notesbox.values.toList();
    emit(notesfetchsuccess());
  }
}
