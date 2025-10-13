import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/addnote_cubit/addnotes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/editnote_secren.dart';

class notes_item extends StatelessWidget {
  const notes_item({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 22, bottom: 22),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return editnote_secren(note: note,);
              },
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(color: Colors.black, fontSize: 28),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Text(
                    note.subtitle,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 18,
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<notesCubit>(context).fetchall_notes();
                  },
                  icon: Icon(Icons.delete, color: Colors.black, size: 28),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Text(
                  note.date,
                  style: TextStyle(color: Colors.black.withOpacity(0.4)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
