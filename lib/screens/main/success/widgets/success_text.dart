import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class SuccessText extends StatelessWidget {
  const SuccessText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Success',
      style: TextStyle(
        color: CustomColor.titleColor,
        fontSize: 32,
        fontWeight: FontWeight.w700,
        height: 1.21,
      ),
    );
  }
}
