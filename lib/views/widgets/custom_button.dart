import 'package:flutter/material.dart';

class custom_button extends StatelessWidget {
  const custom_button({super.key, this.onTap});

     final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16),
        ),child: Center(
          child: Text(
            "Add Note",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
      )),
    );
  }
}
