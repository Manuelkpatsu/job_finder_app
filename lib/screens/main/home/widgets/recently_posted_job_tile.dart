import 'package:flutter/material.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class RecentlyPostedJobTile extends StatelessWidget {
  final Job job;
  final VoidCallback? onPressed;

  const RecentlyPostedJobTile({
    Key? key,
    required this.job,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.canvas,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(15),
        child: Ink(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: job.backgroundColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                job.companyLogo,
                height: 40,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 16),
              Text(
                job.jobTitle,
                style: const TextStyle(
                  color: CustomColor.titleColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  height: 1.24,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                '1-3 years Experience',
                style: TextStyle(
                  color: CustomColor.titleColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.21,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    job.type,
                    style: const TextStyle(
                      color: CustomColor.deskripsiColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.21,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    job.level,
                    style: const TextStyle(
                      color: CustomColor.deskripsiColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.21,
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
