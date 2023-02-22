import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class DateText extends StatelessWidget {
  final DateTime date;

  const DateText({Key? key, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormat('dd MMM yyyy').format(date),
      style: const TextStyle(
        color: CustomColor.deskripsiColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.21,
      ),
    );
  }
}
