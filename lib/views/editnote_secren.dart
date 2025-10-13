import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/editsecren_body.dart';

class editnote_secren extends StatelessWidget {
  const editnote_secren({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body:EditsecrenBody( note: note ,) ,);
  }
}