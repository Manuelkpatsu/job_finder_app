import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class WelcomeHomeText extends StatelessWidget {
  const WelcomeHomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Text(
        "Let’s Find\nYour Dream Jobs",
        style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.w700,
          color: CustomColor.titleColor,
          height: 1.21,
        ),
      ),
    );
  }
}
