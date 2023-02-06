import 'package:flutter/material.dart';

class WatchListWidget extends StatelessWidget {
  final String dauration;
  final String image;

  const WatchListWidget(
      {super.key, required this.dauration, required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage("$image"), fit: BoxFit.cover)),
        ),
        Positioned(
            bottom: 20,
            right: 10,
            child: Text(
              "$dauration",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ))
      ],
    );
  }
}