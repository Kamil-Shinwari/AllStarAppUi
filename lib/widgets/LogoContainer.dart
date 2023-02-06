import 'package:flutter/material.dart';

class LogoContainer extends StatelessWidget {
  final String logo;

  const LogoContainer({super.key, required this.logo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
          color: Colors.red.withOpacity(0.3),
          image: DecorationImage(image: AssetImage("$logo"))),
    );
  }
}
