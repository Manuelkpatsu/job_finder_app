import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/theme/custom_color.dart';

import 'job_level_type_widget.dart';

class JobsForYouTile extends StatelessWidget {
  final Job job;
  final VoidCallback? onPressed;

  const JobsForYouTile({
    Key? key,
    required this.job,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedSalary = job.salary != 0
        ? NumberFormat("###,###.00").format(job.salary)
        : job.salary.toStringAsFixed(2);

    return Material(
      type: MaterialType.canvas,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(15),
        child: Ink(
          width: 271,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: job.backgroundColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    job.companyLogo,
                    height: 40,
                    width: 40,
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
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
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
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            JobLevelTypeWidget(
                              info: job.type,
                              backgroundColor: job.levelTypeColor,
                            ),
                            const SizedBox(width: 12),
                            JobLevelTypeWidget(
                              info: job.level,
                              backgroundColor: job.levelTypeColor,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    job.location,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.21,
                    ),
                  ),
                  Text(
                    '\$$formattedSalary / month',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
