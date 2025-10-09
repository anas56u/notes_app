
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/cutom_textfild.dart';

class addnote_form extends StatefulWidget {
  const addnote_form({
    super.key,
  });

  @override
  State<addnote_form> createState() => _addnote_formState();
}

class _addnote_formState extends State<addnote_form> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey();
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
    String ? title, subtitle;
    return Form(
      key: formkey,
      child: Column(
        children: [
          SizedBox(height: 25),
          CutomTextfild(hintText: "title", onSaved: (value) {
            title = value;
          },),
          SizedBox(height: 16),
          CutomTextfild(hintText: "content", maxLines: 5 ,onSaved: (value) {
            subtitle = value;
          },),
          SizedBox(height: 30),
          custom_button(onTap: () {
            if (formkey.currentState!.validate() ) {
              formkey.currentState!.save();
              print("title $title");
              print("subtitle $subtitle");
             
            } else {
              autovalidateMode = AutovalidateMode.always;
              print("not valid");
              setState(() {});
            }
          },),
          SizedBox(height: 22),
        ],
      ),
    );
  }
}
