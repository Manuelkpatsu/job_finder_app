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

    return Expanded(
      child: Text(
        'Salary \$$formattedSalary / month',
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
