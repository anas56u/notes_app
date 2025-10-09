import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_notes.dart';
import 'package:notes_app/views/widgets/notes_appbar.dart';
import 'package:notes_app/views/widgets/notesapp_body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(  16),
            ),
            context: context,
            builder: (context) {
              return add_note();
            },
          );
        },
        child: Icon(Icons.add),
      ),

      body: NotesappBody(),
    );
  }
}


