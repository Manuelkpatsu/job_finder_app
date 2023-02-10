import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class CreateAccountText extends StatelessWidget {
  const CreateAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Create Account',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: CustomColor.titleColor,
        fontSize: 34,
        fontWeight: FontWeight.w700,
        height: 1.21,
      ),
    );
  }
}
