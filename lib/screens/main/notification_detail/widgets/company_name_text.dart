import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class CompanyNameText extends StatelessWidget {
  final String name;

  const CompanyNameText({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        color: CustomColor.deskripsiColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.21,
      ),
    );
  }
}
