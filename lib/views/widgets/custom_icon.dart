import 'package:flutter/material.dart';

class customsearchicon extends StatelessWidget {
  final IconData icon ;

  const customsearchicon({super.key, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(child: Icon(icon, color: Colors.white)),
    );
  }
}