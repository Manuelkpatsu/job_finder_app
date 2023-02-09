import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Welcome Job Hunter',
      style: TextStyle(
        color: CustomColor.titleColor,
        fontSize: 30,
        fontWeight: FontWeight.w700,
        height: 1.2,
      ),
    );
  }
}
