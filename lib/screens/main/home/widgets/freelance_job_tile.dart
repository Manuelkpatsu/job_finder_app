import 'package:flutter/material.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class FreelanceJobTile extends StatelessWidget {
  final Job job;
  final VoidCallback? onTap;
  
  const FreelanceJobTile({Key? key, required this.job, required this.onTap,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.canvas,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15),
        child: Ink(
          width: 196,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: CustomColor.lightInfoColor,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                job.companyLogo,
                width: 30,
                height: 30,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      job.companyName,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: CustomColor.titleColor,
                        height: 1.25,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      job.jobTitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: CustomColor.titleColor,
                        height: 1.24,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      job.type,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff0097ff),
                        height: 1.21,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
