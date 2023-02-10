import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class LoginMessageText extends StatelessWidget {
  const LoginMessageText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'I’m happy to see you again',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: CustomColor.deskripsiColor,
        fontSize: 17,
        fontWeight: FontWeight.w400,
        height: 1.29,
      ),
    );
  }
}
