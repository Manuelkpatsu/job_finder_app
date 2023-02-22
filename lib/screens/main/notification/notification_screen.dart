import 'dart:io';

import 'package:flutter/material.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/models/notification.dart';
import 'package:job_finder_app/screens/widgets/app_bar_divider.dart';
import 'package:job_finder_app/theme/custom_color.dart';

import 'widget/notification_text.dart';
import 'widget/notification_tile.dart';

class NotificationScreen extends StatelessWidget {
  static const routeName = '/notification';

  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<NotificationModel> notifications = [
      NotificationModel(
        job: Job(
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
        id: 1,
        date: DateTime(2023, 02, 22, 09, 40, 30),
        resume: File('assets/sample.pdf'),
        submissionDate: DateTime(2023, 02, 15, 09, 40, 30),
        message: 'The application for UI UX Designer has been reviewed by the company',
      ),
      NotificationModel(
        job: Job(
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
        ),
        id: 2,
        date: DateTime(2023, 02, 21, 09, 57, 30),
        resume: File('/Users/emmanuelnartey/Documents/dee/flutter/job_finder_app/assets/sample.pdf'),
        submissionDate: DateTime(2023, 02, 15, 09, 40, 30),
        message: 'The application for UI UX Designer has been reviewed by the company',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const NotificationText(),
        centerTitle: false,
        titleSpacing: 0,
        bottom: const AppBarDivider(),
      ),
      body: ListView.separated(
        itemBuilder: (ctx, index) {
          NotificationModel notification = notifications[index];

          return NotificationTile(
            onTap: () {},
            notification: notification,
          );
        },
        separatorBuilder: (ctx, index) => const Divider(
          height: 0,
          thickness: 0.5,
          color: CustomColor.dividerColor,
        ),
        itemCount: notifications.length,
      ),
    );
  }
}
