import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/cutom_textfild.dart';
import 'package:notes_app/views/widgets/notes_appbar.dart';

class EditsecrenBody extends StatelessWidget {
  const EditsecrenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: 25),
          NotesAppbar(title: "edit note", icon: Icons.check),
          SizedBox(height: 25),
          CutomTextfild(hintText: "title"),
          SizedBox(height: 16),
          CutomTextfild(hintText: "content", maxLines: 5),
        ],
      ),
    );
  }
}
