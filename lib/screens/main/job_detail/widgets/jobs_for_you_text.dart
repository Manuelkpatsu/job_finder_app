import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class JobsForYouText extends StatelessWidget {
  const JobsForYouText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Jobs For You',
      style: TextStyle(
        color: CustomColor.titleColor,
        fontSize: 17,
        fontWeight: FontWeight.w700,
        height: 1.5,
      ),
    );
  }
}
