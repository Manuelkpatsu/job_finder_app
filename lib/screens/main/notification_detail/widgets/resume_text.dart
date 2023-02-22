import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class ResumeText extends StatelessWidget {
  const ResumeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Resume',
          style: TextStyle(
            color: CustomColor.titleColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
