import 'package:flutter/material.dart';

class customsearchicon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(child: Icon(Icons.search, color: Colors.black)),
    );
  }
}