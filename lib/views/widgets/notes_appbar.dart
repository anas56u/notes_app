import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon.dart';

class NotesAppbar extends StatelessWidget {
  final String title ;
  final IconData icon ;
    final void Function()? onPressed;


  const NotesAppbar({super.key, required this.title, required this.icon, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: TextStyle(fontSize: 28)),
        Spacer(),
        customsearchicon(icon: icon,onPressed: onPressed,),
      ],
    );
  }
}


