import 'package:flutter/material.dart';

class MyAccountText extends StatelessWidget {
  const MyAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'My Account',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 22,
        height: 1.22,
      ),
    );
  }
}
