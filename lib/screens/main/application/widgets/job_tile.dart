import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class JobTile extends StatelessWidget {
  final VoidCallback? onTap;
  final Job job;

  const JobTile({
    Key? key,
    required this.onTap,
    required this.job,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedSalary = job.salary != 0
        ? NumberFormat("###,###.00").format(job.salary)
        : job.salary.toStringAsFixed(2);
    final formattedDate = DateFormat('dd MMM yyyy').format(job.createdAt);

    return InkWell(
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              job.companyLogo,
              width: 50,
              height: 50,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    job.jobTitle,
                    style: const TextStyle(
                      color: CustomColor.titleColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      height: 1.22,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    job.companyName,
                    style: const TextStyle(
                      color: CustomColor.deskripsiColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.21,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Salary \$$formattedSalary / month',
                    style: const TextStyle(
                      color: CustomColor.deskripsiColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.21,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Text(
              formattedDate,
              style: const TextStyle(
                color: CustomColor.deskripsiColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.21,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
