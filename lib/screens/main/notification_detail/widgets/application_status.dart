import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class ApplicationStatus extends StatelessWidget {
  final String status;

  const ApplicationStatus({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.secondaryColor,
      ),
      alignment: Alignment.center,
      child: Text(
        status,
        style: const TextStyle(
          color: CustomColor.titleColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 1.21,
        ),
      ),
    );
  }
}
