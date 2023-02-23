import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class UploadYourResumeText extends StatelessWidget {
  const UploadYourResumeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Upload your resume',
      style: TextStyle(
        color: CustomColor.titleColor,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        height: 1.22,
      ),
    );
  }
}
