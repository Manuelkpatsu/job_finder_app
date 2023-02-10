import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class CreateAccountMessageText extends StatelessWidget {
  const CreateAccountMessageText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello, you can start using the application after sign up',
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
