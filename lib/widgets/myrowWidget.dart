import 'package:flutter/material.dart';

class MyRowWidget extends StatelessWidget {
  final String text;
  final IconData icon;

  const MyRowWidget({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$text",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Spacer(),
        Icon(
          icon,
          color: Colors.white,
        )
      ],
    );
  }
}
