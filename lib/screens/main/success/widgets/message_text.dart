import 'package:flutter/material.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class MessageText extends StatelessWidget {
  final Job job;

  const MessageText({Key? key, required this.job}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Your application to ',
        style: const TextStyle(
          color: CustomColor.deskripsiColor,
          fontSize: 17,
          fontWeight: FontWeight.w400,
          height: 1.29,
        ),
        children: [
          TextSpan(
            text: job.companyName,
            style: const TextStyle(
              color: CustomColor.primaryColor,
              fontWeight: FontWeight.w700,
            ),
          ),
          const TextSpan(text: ' as '),
          TextSpan(
            text: job.jobTitle,
            style: const TextStyle(
              color: CustomColor.primaryColor,
              fontWeight: FontWeight.w700,
            ),
          ),
          const TextSpan(text: ' has been sent.'),
        ],
      ),
    );
  }
}
