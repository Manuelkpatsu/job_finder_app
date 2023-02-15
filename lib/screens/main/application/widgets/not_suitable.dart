import 'package:flutter/material.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/screens/widgets/empty_state.dart';
import 'package:job_finder_app/theme/custom_color.dart';

import 'job_tile.dart';

class NotSuitable extends StatelessWidget {
  const NotSuitable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Job> unsuitableJobs = [
      Job(
        id: 1,
        companyLogo: 'assets/images/companies/google.png',
        jobTitle: 'Product Designer',
        companyName: 'Google',
        salary: 5000.00,
        createdAt: DateTime(2023, 02, 09, 10, 20, 25),
      ),
      Job(
        id: 2,
        companyLogo: 'assets/images/companies/bukalapak.png',
        jobTitle: 'FrontEnd Developer',
        companyName: 'Bukalapak',
        salary: 8000.00,
        createdAt: DateTime(2023, 01, 28, 9, 40, 10),
      ),
    ];

    return unsuitableJobs.isEmpty
        ? const EmptyState(
            image: 'assets/images/application-empty-state.png',
            title: 'No Job Here',
            description:
                'You didn’t save any jobs. Let’s explore new jobs and find your dream job',
          )
        : ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 10),
            itemBuilder: (context, index) {
              Job job = unsuitableJobs[index];

              return JobTile(
                onTap: () {},
                job: job,
              );
            },
            separatorBuilder: (ctx, index) => const Divider(
              height: 0,
              thickness: 1,
              color: CustomColor.dividerColor,
            ),
            itemCount: unsuitableJobs.length,
          );
  }
}
