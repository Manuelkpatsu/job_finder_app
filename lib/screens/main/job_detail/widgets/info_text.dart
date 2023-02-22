import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class InfoText extends StatelessWidget {
  final String info;

  const InfoText({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      info,
      style: const TextStyle(
        color: CustomColor.deskripsiColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.57,
      ),
    );
  }
}
