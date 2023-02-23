import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class UploadedResumeText extends StatelessWidget {
  final String resume;

  const UploadedResumeText({Key? key, required this.resume}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      resume,
      style: const TextStyle(
        color: CustomColor.deskripsiColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.21,
      ),
    );
  }
}
