import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/addnote_cubit/addnotes_cubit.dart';

class colors_item extends StatelessWidget {
  const colors_item({super.key, required this.isSelected, required this.color});
  final bool isSelected;
  final Color color ;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            radius: 32,
            backgroundColor: Colors.white,
            child: CircleAvatar(radius: 27, backgroundColor: color),
          )
        : CircleAvatar(radius: 32, backgroundColor: color);
  }
}

class colors_listview extends StatefulWidget {
  const colors_listview({super.key});

  @override
  State<colors_listview> createState() => _colors_listviewState();
}

class _colors_listviewState extends State<colors_listview> {
  int currentindex = 0;
  List <Color> colors = [
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
            padding:  EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector( onTap: () {
              currentindex=index;
              BlocProvider.of<AddnotesCubit>(context).color=colors[index];
              setState(() {});
            },child: colors_item(isSelected: currentindex==index , color: colors[index],)),
          );
        },
      ),
    );
  }
}
