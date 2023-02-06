import 'package:flutter/material.dart';

class SportScreen extends StatefulWidget {
  const SportScreen({super.key});

  @override
  State<SportScreen> createState() => _SportScreenState();
}

class _SportScreenState extends State<SportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xff262626),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Sport",
              style: TextStyle(color: Colors.white),
            )
          ]),
    );
  }
}
