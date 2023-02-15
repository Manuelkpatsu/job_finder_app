import 'package:flutter/material.dart';

class ApplicationText extends StatelessWidget {
  const ApplicationText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Application',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 22,
        height: 1.22,
      ),
    );
  }
}
