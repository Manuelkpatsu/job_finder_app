import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class JobText extends StatelessWidget {
  final String job;

  const JobText({Key? key, required this.job}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        job,
        style: const TextStyle(
          color: CustomColor.titleColor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          height: 1.22,
        ),
      ),
    );
  }
}
