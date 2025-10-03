import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_appbar.dart';
import 'package:notes_app/views/widgets/notes_item.dart';
import 'package:notes_app/views/widgets/notes_listview.dart';

class NotesappBody extends StatelessWidget {
  const NotesappBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: 25),
          NotesAppbar(),
         Expanded(child: const notes_listview()),
        ],
      ),
    );
  }
}

