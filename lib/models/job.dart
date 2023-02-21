import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart' show Color, Colors;
import 'package:job_finder_app/theme/custom_color.dart';

class Job extends Equatable {
  final int id;
  final String companyLogo;
  final String jobTitle;
  final String companyName;
  final double salary;
  final DateTime createdAt;
  final String type;
  final String level;
  final String description;
  final List<String> requirements;
  final List<String> jobDescription;
  final List<String> skills;
  final String location;
  final Color backgroundColor;
  final Color levelTypeColor;

  const Job({
    required this.id,
    required this.companyLogo,
    required this.jobTitle,
    required this.companyName,
    required this.salary,
    required this.createdAt,
    required this.type,
    required this.level,
    required this.description,
    required this.requirements,
    required this.jobDescription,
    required this.skills,
    required this.location,
    this.backgroundColor = Colors.transparent,
    this.levelTypeColor = CustomColor.lightBlueColor,
  });

  @override
  List<Object?> get props => [
        id,
        companyLogo,
        jobTitle,
        companyName,
        salary,
        createdAt,
        type,
        level,
        description,
        requirements,
        jobDescription,
        skills,
        location,
        backgroundColor,
        levelTypeColor,
      ];
}
