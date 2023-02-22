import 'package:flutter/material.dart';
import 'package:job_finder_app/models/notification.dart';
import 'package:job_finder_app/screens/widgets/app_bar_divider.dart';
import 'package:job_finder_app/theme/custom_color.dart';

import 'widgets/application_status.dart';
import 'widgets/company_logo.dart';
import 'widgets/company_name_text.dart';
import 'widgets/date_text.dart';
import 'widgets/detail_job_text.dart';
import 'widgets/job_detail_tile.dart';
import 'widgets/job_text.dart';
import 'widgets/resume.dart';
import 'widgets/resume_text.dart';
import 'widgets/salary_text.dart';
import 'widgets/your_application_text.dart';

class NotificationDetailScreen extends StatelessWidget {
  static const routeName = '/notification_detail';

  final NotificationModel argument;

  const NotificationDetailScreen({Key? key, required this.argument}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const YourApplicationText(),
        centerTitle: false,
        titleSpacing: 0,
        bottom: const AppBarDivider(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CompanyLogo(logo: argument.job.companyLogo),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            JobText(job: argument.job.jobTitle),
                            const SizedBox(width: 10),
                            DateText(date: argument.submissionDate),
                          ],
                        ),
                        const SizedBox(height: 4),
                        CompanyNameText(name: argument.job.companyName),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            SalaryText(salary: argument.job.salary),
                            const SizedBox(width: 10),
                            const ApplicationStatus(status: 'In review'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Divider(height: 0, thickness: 1.0, color: CustomColor.dividerColor),
            const SizedBox(height: 20),
            const DetailJobText(),
            const SizedBox(height: 12),
            const JobDetailTile(info: 'Design', icon: Icons.edit),
            const SizedBox(height: 4),
            JobDetailTile(
              info: argument.job.type,
              icon: Icons.access_time_filled_rounded,
            ),
            const SizedBox(height: 4),
            const JobDetailTile(
              info: '3-5 years of experience',
              icon: Icons.work_rounded,
            ),
            const SizedBox(height: 15),
            const Divider(height: 0, thickness: 1.0, color: CustomColor.dividerColor),
            const SizedBox(height: 10),
            const ResumeText(),
            const SizedBox(height: 12),
            Resume(
              file: argument.resume,
              date: DateTime(2023, 02, 05, 12, 20, 25),
            ),
          ],
        ),
      ),
    );
  }
}
