import 'package:flutter/material.dart';

class MovieContainerGridView extends StatelessWidget {
  final String url;

  const MovieContainerGridView({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: 250,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(image: AssetImage("$url"), fit: BoxFit.cover)),
      ),
    );
  }
}
