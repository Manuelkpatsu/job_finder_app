import 'package:flutter/material.dart';

class LogoText extends StatelessWidget {
  const LogoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'JobFinder',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.w800,
        height: 1.2,
      ),
    );
  }
}
