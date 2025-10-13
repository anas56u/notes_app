import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/colors_listview.dart';
import 'package:notes_app/views/widgets/cutom_textfild.dart';
import 'package:notes_app/views/widgets/notes_appbar.dart';

class EditsecrenBody extends StatefulWidget {
  const EditsecrenBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditsecrenBody> createState() => _EditsecrenBodyState();
}

class _EditsecrenBodyState extends State<EditsecrenBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: 25),
          NotesAppbar(
            title: "edit note",
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<notesCubit>(context).fetchall_notes();
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 25),
          CutomTextfild(
            hintText: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          CutomTextfild(
            hintText: widget.note.subtitle,
            maxLines: 5,
            onChanged: (value) {
              content = value;
            },
          ),
          editcolors_listview(note: widget.note ,),
        ],
      ),
    );
  }
}

class editcolors_listview extends StatefulWidget {
   const editcolors_listview({super.key, required this.note});
   final NoteModel note;


  @override
  State<editcolors_listview> createState() => _editcolors_listviewState();
}

class _editcolors_listviewState extends State<editcolors_listview> {
  int currentindex = 0;
  List<Color> colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
               currentindex = index;
               widget.note.color = colors[index].value;
               setState(() {});
              },
              child: colors_item(
                isSelected: currentindex == index,
                color: colors[index],
                
              ),
            ),
          );
        },
      ),
    );
  }
}
