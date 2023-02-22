import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class SalaryText extends StatelessWidget {
  final double salary;

  const SalaryText({Key? key, required this.salary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedSalary = salary != 0
        ? NumberFormat("###,###.00").format(salary)
        : salary.toStringAsFixed(2);

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: '\$$formattedSalary ',
        style: const TextStyle(
          color: CustomColor.titleColor,
          fontSize: 17,
          fontWeight: FontWeight.w700,
          height: 1.24,
        ),
        children: const [
          TextSpan(
            text: '/ month',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              height: 1.24,
            ),
          ),
        ],
      ),
    );
  }
}
