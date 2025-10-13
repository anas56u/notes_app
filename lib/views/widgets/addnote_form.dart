import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/addnote_cubit/addnotes_cubit.dart';
import 'package:notes_app/addnote_cubit/addnotes_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/colors_listview.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/cutom_textfild.dart';

class addnote_form extends StatefulWidget {
  const addnote_form({super.key});

  @override
  State<addnote_form> createState() => _addnote_formState();
}

class _addnote_formState extends State<addnote_form> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey();
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
    String? title, subtitle;
    return Form(
      key: formkey,
      child: Column(
        children: [
          SizedBox(height: 25),
          CutomTextfild(
            hintText: "title",
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          CutomTextfild(
            hintText: "content",
            maxLines: 5,
            onSaved: (value) {
              subtitle = value;
            },
          ),
          SizedBox(height: 30),
          colors_listview(),
          BlocBuilder<AddnotesCubit, AddnotesState>(
            builder: (context, state) {
              return custom_button(
                isloading: state is AddnotesLoading ? true : false,

                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    print("title $title");
                    print("subtitle $subtitle");
                    var currentdate = DateTime.now();
                    var formatteddate = DateFormat.yMd().format(currentdate);
                        
                    var notemodel = NoteModel(
                      title: title!,
                      subtitle: subtitle!,
                      date:formatteddate,
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddnotesCubit>(context).addnote(notemodel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    print("not valid");
                    setState(() {});
                  }
                },
              );
            },
          ),

          SizedBox(height: 22),
        ],
      ),
    );
  }
}

