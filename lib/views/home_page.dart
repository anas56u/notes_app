import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_appbar.dart';
import 'package:notes_app/views/widgets/notesapp_body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: 
      NotesappBody()
      )
      ;
  }
}