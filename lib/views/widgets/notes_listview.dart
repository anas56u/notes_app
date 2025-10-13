import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/notes_cubit/notes_cubit.dart';
import 'package:notes_app/notes_cubit/notes_state.dart';
import 'package:notes_app/views/widgets/notes_item.dart';

class notes_listview extends StatelessWidget {
  const notes_listview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<notesCubit, notesState>(
      
      builder: (context, state) {
        List <NoteModel> notes = BlocProvider.of<notesCubit>(context).notes ?? [];
         
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount:notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return notes_item(note: notes[index],);
            },
          ),
        );
      },
    );
  }
}
