import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon.dart';

class NotesAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("notes", style: TextStyle(fontSize: 28)),
        Spacer(),
        customsearchicon(),
      ],
    );
  }
}


