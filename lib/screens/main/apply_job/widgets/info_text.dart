import 'package:flutter/material.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class InfoText extends StatelessWidget {
  final Job job;

  const InfoText({Key? key, required this.job}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'You will be applying to ',
        style: const TextStyle(
          color: CustomColor.deskripsiColor,
          fontSize: 22,
          fontWeight: FontWeight.w400,
          height: 1.22,
        ),
        children: [
          TextSpan(
            text: job.companyName,
            style: const TextStyle(
              color: CustomColor.titleColor,
              fontWeight: FontWeight.w700,
            ),
          ),
          const TextSpan(text: ' as '),
          TextSpan(
            text: job.jobTitle,
            style: const TextStyle(
              color: CustomColor.titleColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
