import 'package:flutter/material.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/screens/main/job_detail/job_detail_screen.dart';
import 'package:job_finder_app/screens/main/notification/notification_screen.dart';
import 'package:job_finder_app/theme/custom_color.dart';

import 'widgets/category_text.dart';
import 'widgets/freelance_job_tile.dart';
import 'widgets/jobs_for_you_tile.dart';
import 'widgets/notification_button.dart';
import 'widgets/recently_posted_job_tile.dart';
import 'widgets/search_job_text_field.dart';
import 'widgets/see_all_button.dart';
import 'widgets/welcome_text.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  final List<Job> _jobsForYou = [
    Job(
      id: 1,
      companyLogo: 'assets/images/companies/google.png',
      jobTitle: 'Product Design',
      companyName: 'Google',
      salary: 1000,
      createdAt: DateTime(2023, 02, 09, 10, 20, 25),
      type: 'Full Time',
      level: 'Junior',
      description:
          'One of the pioneers of Indonesia online marketplace in the tech realm which has sold many hi-tech gadgets and innovative products since 2016.',
      requirements: const [
        'You have excellent knowledge of UX and web design',
        'You know how developer works (additional points)',
        'You have at least 3 years of experience in a similar role.'
      ],
      jobDescription: const [
        'Implement and execute user testing and A/B testing.',
        'Demonstrate your prototype / design results to user and stakeholder',
        'Formulate good design ideas and propose solutions to increased product usefulness',
      ],
      skills: const ['UI UX Design', 'Figma', 'UI Design'],
      location: 'California',
      backgroundColor: CustomColor.deepBlueColor,
    ),
    Job(
      id: 2,
      companyLogo: 'assets/images/companies/dribble.png',
      jobTitle: 'UI Designer',
      companyName: 'Dribble',
      salary: 500,
      createdAt: DateTime(2023, 02, 05, 12, 20, 25),
      type: 'Internship',
      level: 'Junior',
      description:
          'One of the pioneers of Indonesia online marketplace in the tech realm which has sold many hi-tech gadgets and innovative products since 2016.',
      requirements: const [
        'You have excellent knowledge of UX and web design',
        'You know how developer works (additional points)',
        'You have at least 3 years of experience in a similar role.'
      ],
      jobDescription: const [
        'Implement and execute user testing and A/B testing.',
        'Demonstrate your prototype / design results to user and stakeholder',
        'Formulate good design ideas and propose solutions to increased product usefulness',
      ],
      skills: const ['UI UX Design', 'Figma', 'UI Design'],
      location: 'Singapore',
      backgroundColor: CustomColor.deepErrorColor,
      levelTypeColor: CustomColor.lightRedColor,
    ),
  ];
  final List<Job> _recentlyPostedJobs = [
    Job(
      id: 1,
      companyLogo: 'assets/images/companies/gojek.png',
      jobTitle: 'Digital Marketing',
      companyName: 'Gojek',
      salary: 1000,
      createdAt: DateTime(2023, 02, 09, 10, 20, 25),
      type: 'Full Time',
      level: 'Senior',
      description:
          'One of the pioneers of Indonesia online marketplace in the tech realm which has sold many hi-tech gadgets and innovative products since 2016.',
      requirements: const [
        'You have excellent knowledge of UX and web design',
        'You know how developer works (additional points)',
        'You have at least 3 years of experience in a similar role.'
      ],
      jobDescription: const [
        'Implement and execute user testing and A/B testing.',
        'Demonstrate your prototype / design results to user and stakeholder',
        'Formulate good design ideas and propose solutions to increased product usefulness',
      ],
      skills: const ['UI UX Design', 'Figma', 'UI Design'],
      location: 'California',
      backgroundColor: CustomColor.lightSuccessColor,
    ),
    Job(
      id: 2,
      companyLogo: 'assets/images/companies/shopee.png',
      jobTitle: 'Content Creator',
      companyName: 'Shopee',
      salary: 500,
      createdAt: DateTime(2023, 02, 05, 12, 20, 25),
      type: 'Internship',
      level: 'Junior',
      description:
          'One of the pioneers of Indonesia online marketplace in the tech realm which has sold many hi-tech gadgets and innovative products since 2016.',
      requirements: const [
        'You have excellent knowledge of UX and web design',
        'You know how developer works (additional points)',
        'You have at least 3 years of experience in a similar role.'
      ],
      jobDescription: const [
        'Implement and execute user testing and A/B testing.',
        'Demonstrate your prototype / design results to user and stakeholder',
        'Formulate good design ideas and propose solutions to increased product usefulness',
      ],
      skills: const ['UI UX Design', 'Figma', 'UI Design'],
      location: 'Singapore',
      backgroundColor: CustomColor.lightOrangeColor,
    ),
    Job(
      id: 3,
      companyLogo: 'assets/images/companies/bukalapak.png',
      jobTitle: 'Frontend Dev',
      companyName: 'Bukalapak',
      salary: 500,
      createdAt: DateTime(2023, 02, 03, 12, 20, 25),
      type: 'Full Time',
      level: 'Junior',
      description:
          'One of the pioneers of Indonesia online marketplace in the tech realm which has sold many hi-tech gadgets and innovative products since 2016.',
      requirements: const [
        'You have excellent knowledge of UX and web design',
        'You know how developer works (additional points)',
        'You have at least 3 years of experience in a similar role.'
      ],
      jobDescription: const [
        'Implement and execute user testing and A/B testing.',
        'Demonstrate your prototype / design results to user and stakeholder',
        'Formulate good design ideas and propose solutions to increased product usefulness',
      ],
      skills: const ['UI UX Design', 'Figma', 'UI Design'],
      location: 'Singapore',
      backgroundColor: CustomColor.lightErrorColor,
    ),
    Job(
      id: 4,
      companyLogo: 'assets/images/companies/blibli.png',
      jobTitle: 'UX Designer',
      companyName: 'Blibli',
      salary: 500,
      createdAt: DateTime(2023, 02, 01, 12, 20, 25),
      type: 'Full Time',
      level: 'Junior',
      description:
          'One of the pioneers of Indonesia online marketplace in the tech realm which has sold many hi-tech gadgets and innovative products since 2016.',
      requirements: const [
        'You have excellent knowledge of UX and web design',
        'You know how developer works (additional points)',
        'You have at least 3 years of experience in a similar role.'
      ],
      jobDescription: const [
        'Implement and execute user testing and A/B testing.',
        'Demonstrate your prototype / design results to user and stakeholder',
        'Formulate good design ideas and propose solutions to increased product usefulness',
      ],
      skills: const ['UI UX Design', 'Figma', 'UI Design'],
      location: 'Singapore',
      backgroundColor: CustomColor.lightInfoColor,
    ),
  ];
  final List<Job> _freelanceJobs = [
    Job(
      id: 1,
      companyLogo: 'assets/images/companies/glints.png',
      jobTitle: 'HR Recruiter',
      companyName: 'Glints',
      salary: 1000,
      createdAt: DateTime(2023, 02, 09, 10, 20, 25),
      type: 'Full Time',
      level: 'Junior',
      description:
          'One of the pioneers of Indonesia online marketplace in the tech realm which has sold many hi-tech gadgets and innovative products since 2016.',
      requirements: const [
        'You have excellent knowledge of UX and web design',
        'You know how developer works (additional points)',
        'You have at least 3 years of experience in a similar role.'
      ],
      jobDescription: const [
        'Implement and execute user testing and A/B testing.',
        'Demonstrate your prototype / design results to user and stakeholder',
        'Formulate good design ideas and propose solutions to increased product usefulness',
      ],
      skills: const ['UI UX Design', 'Figma', 'UI Design'],
      location: 'California',
    ),
    Job(
      id: 2,
      companyLogo: 'assets/images/companies/linkedin.png',
      jobTitle: 'Software Engineer',
      companyName: 'LinkedIn',
      salary: 500,
      createdAt: DateTime(2023, 02, 05, 12, 20, 25),
      type: 'Full Time',
      level: 'Junior',
      description:
          'One of the pioneers of Indonesia online marketplace in the tech realm which has sold many hi-tech gadgets and innovative products since 2016.',
      requirements: const [
        'You have excellent knowledge of UX and web design',
        'You know how developer works (additional points)',
        'You have at least 3 years of experience in a similar role.'
      ],
      jobDescription: const [
        'Implement and execute user testing and A/B testing.',
        'Demonstrate your prototype / design results to user and stakeholder',
        'Formulate good design ideas and propose solutions to increased product usefulness',
      ],
      skills: const ['UI UX Design', 'Figma', 'UI Design'],
      location: 'Singapore',
    ),
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const WelcomeHomeText(),
                  const SizedBox(width: 40),
                  NotificationButton(
                    onTap: () {
                      Navigator.of(context).pushNamed(NotificationScreen.routeName);
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SearchJobTextField(controller: _searchController),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CategoryTitleText(title: 'Jobs For You'),
                          SeeAllButton(onPressed: () {}),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 168,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        itemCount: _jobsForYou.length,
                        itemBuilder: (ctx, index) {
                          Job job = _jobsForYou[index];

                          return Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: JobsForYouTile(
                              onPressed: () {
                                Navigator.of(context).pushNamed(
                                  JobDetailScreen.routeName,
                                  arguments: job,
                                );
                              },
                              job: job,
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CategoryTitleText(title: 'Recently Posted'),
                          SeeAllButton(onPressed: () {}),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      itemCount: _recentlyPostedJobs.length,
                      itemBuilder: (context, int index) {
                        Job job = _recentlyPostedJobs[index];

                        return RecentlyPostedJobTile(
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                              JobDetailScreen.routeName,
                              arguments: job,
                            );
                          },
                          job: job,
                        );
                      },
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        mainAxisExtent: 164,
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: CategoryTitleText(title: 'Freelance Jobs'),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 94,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        itemCount: _freelanceJobs.length,
                        itemBuilder: (ctx, index) {
                          Job job = _freelanceJobs[index];

                          return Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: FreelanceJobTile(
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                  JobDetailScreen.routeName,
                                  arguments: job,
                                );
                              },
                              job: job,
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 100),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
