import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class JobDescriptionText extends StatelessWidget {
  const JobDescriptionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Job Description',
        style: TextStyle(
          color: CustomColor.titleColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
