import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class WelcomeBackText extends StatelessWidget {
  const WelcomeBackText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Welcome Back',
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
