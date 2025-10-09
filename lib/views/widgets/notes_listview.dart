import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_item.dart';

class notes_listview extends StatelessWidget {
  const notes_listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return notes_item();
        },
      ),
    );
  }
}
