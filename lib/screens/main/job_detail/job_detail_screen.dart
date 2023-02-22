import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/screens/widgets/app_bar_divider.dart';
import 'package:job_finder_app/screens/widgets/custom_button.dart';
import 'package:job_finder_app/theme/custom_color.dart';

import 'widgets/bookmark_button.dart';
import 'widgets/company_location_text.dart';
import 'widgets/company_logo.dart';
import 'widgets/description_text.dart';
import 'widgets/info_text.dart';
import 'widgets/information_tile.dart';
import 'widgets/job_description_text.dart';
import 'widgets/job_text.dart';
import 'widgets/nubering_tile.dart';
import 'widgets/requirements_text.dart';
import 'widgets/salary_text.dart';
import 'widgets/skill_needed_text.dart';
import 'widgets/jobs_for_you_text.dart';

class JobDetailScreen extends StatelessWidget {
  static const routeName = '/job_detail';

  final Job argument;

  const JobDetailScreen({Key? key, required this.argument}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const JobsForYouText(),
        centerTitle: false,
        titleSpacing: 0,
        actions: [BookmarkButton(onPressed: () {})],
        bottom: const AppBarDivider(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 40),
            CompanyLogo(logo: argument.companyLogo),
            const SizedBox(height: 16),
            JobText(job: argument.jobTitle),
            CompanyLocationText(job: argument),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InformationTile(info: argument.type),
                const SizedBox(width: 20),
                InformationTile(info: argument.level),
                const SizedBox(width: 20),
                const InformationTile(info: 'Design'),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 16),
            SalaryText(salary: argument.salary),
            const SizedBox(height: 20),
            const DescriptionText(),
            const SizedBox(height: 8),
            InfoText(info: argument.description),
            const SizedBox(height: 20),
            const RequirementsText(),
            const SizedBox(height: 8),
            Column(
              children: argument.requirements.mapIndexed((index, requirement) {
                return NumberingTile(
                  info: requirement,
                  number: index + 1,
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            const JobDescriptionText(),
            const SizedBox(height: 8),
            Column(
              children: argument.jobDescription.mapIndexed((index, requirement) {
                return NumberingTile(
                  info: requirement,
                  number: index + 1,
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            const SkillNeededText(),
            const SizedBox(height: 8),
            Row(
              children: argument.skills.map((skill) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: InformationTile(info: skill),
                );
              }).toList(),
            ),
            const SizedBox(height: 40),
            const Divider(
              height: 0,
              thickness: 1.0,
              color: CustomColor.dividerColor,
            ),
            const SizedBox(height: 16),
            CustomButton(
              onPressed: () {},
              widget: const Text('Apply'),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
