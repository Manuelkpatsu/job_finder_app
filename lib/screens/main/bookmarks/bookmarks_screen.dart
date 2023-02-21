import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/screens/main/bookmarks/widgets/bookmark_tile.dart';
import 'package:job_finder_app/screens/widgets/empty_state.dart';
import 'package:job_finder_app/theme/custom_color.dart';

import 'widgets/bookmarks_text.dart';

class BookmarksScreen extends StatelessWidget {
  static const routeName = '/bookmarks';

  const BookmarksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Job> bookmarkJobs = [
      Job(
        id: 1,
        companyLogo: 'assets/images/companies/gojek.png',
        jobTitle: 'UI UX Designer',
        companyName: 'Gojek',
        salary: 5000.00,
        createdAt: DateTime(2023, 02, 09, 10, 20, 25),
        type: 'Senior',
        level: 'Junior',
        description:
            'One of the pioneers of Indonesia online marketplace in the tech realm which has sold many hi-tech gadgets and innovative products since 2016.',
        skills: const ['UI UX Design', 'Figma', 'UI Design'],
        requirements: const [
          'You have excellent knowledge of UX and web design',
          'You know how developer works (additional points)',
          'You have at least 3 years of experience in a similar role',
        ],
        jobDescription: const [
          'Implement and execute user testing and A/B testing.',
          'Demonstrate your prototype / design results to user and stakeholder',
          'Formulate good design ideas and propose solutions to increased product usefulness',
        ],
        location: 'California',
      ),
      Job(
        id: 2,
        companyLogo: 'assets/images/companies/bukalapak.png',
        jobTitle: 'FrontEnd Developer',
        companyName: 'Bukalapak',
        salary: 8000.00,
        createdAt: DateTime(2023, 02, 09, 10, 20, 25),
        type: 'Senior',
        level: 'Junior',
        description:
            'One of the pioneers of Indonesia online marketplace in the tech realm which has sold many hi-tech gadgets and innovative products since 2016.',
        skills: const ['UI UX Design', 'Figma', 'UI Design'],
        requirements: const [
          'You have excellent knowledge of UX and web design',
          'You know how developer works (additional points)',
          'You have at least 3 years of experience in a similar role',
        ],
        jobDescription: const [
          'Implement and execute user testing and A/B testing.',
          'Demonstrate your prototype / design results to user and stakeholder',
          'Formulate good design ideas and propose solutions to increased product usefulness',
        ],
        location: 'California',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.primaryColor,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarColor: CustomColor.primaryColor,
        ),
        title: const BookmarksText(),
        centerTitle: false,
      ),
      body: bookmarkJobs.isEmpty
          ? const EmptyState(
              image: 'assets/images/bookmarks-empty-state.png',
              title: 'Opps, No Bookmark',
              description:
                  'You didn’t save any jobs. Let’s explore new jobs and find your dream jobs',
            )
          : ListView.separated(
              itemBuilder: (context, index) {
                Job job = bookmarkJobs[index];

                return BookmarkTile(
                  onTap: () {},
                  job: job,
                );
              },
              separatorBuilder: (ctx, index) => const Divider(
                height: 0,
                thickness: 1,
                color: CustomColor.dividerColor,
              ),
              itemCount: bookmarkJobs.length,
            ),
    );
  }
}
