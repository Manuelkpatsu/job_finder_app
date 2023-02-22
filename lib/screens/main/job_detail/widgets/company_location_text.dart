import 'package:flutter/material.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class CompanyLocationText extends StatelessWidget {
  final Job job;

  const CompanyLocationText({Key? key, required this.job}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${job.companyName} - ${job.location}',
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: CustomColor.deskripsiColor,
        fontSize: 17,
        fontWeight: FontWeight.w400,
        height: 1.58,
      ),
    );
  }
}
