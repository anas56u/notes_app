import 'package:flutter/material.dart';

class customsearchicon extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;

  const customsearchicon({super.key, required this.icon, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: IconButton(
          icon: Icon(icon),
          color: Colors.white,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
