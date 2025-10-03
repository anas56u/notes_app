import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_item.dart';

class notes_listview extends StatelessWidget {
  const notes_listview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return notes_item();
      },
    );
  }
}
