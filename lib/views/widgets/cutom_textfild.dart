import 'package:flutter/material.dart';

class CutomTextfild extends StatelessWidget {
  const CutomTextfild({super.key, required this.hintText, this.maxLines = 1, this.onSaved, this.onChanged});
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "field is required";
        }else {
          return null;
        } 
      },
      onChanged:onChanged ,
      onSaved: onSaved,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,

        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}

