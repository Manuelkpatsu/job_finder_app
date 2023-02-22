import 'dart:io';

import 'package:equatable/equatable.dart';

import 'job.dart';

class NotificationModel extends Equatable {
  final Job job;
  final int id;
  final DateTime submissionDate;
  final File resume;
  final DateTime date;
  final String message;

  const NotificationModel({
    required this.job,
    required this.id,
    required this.date,
    required this.resume,
    required this.submissionDate,
    required this.message,
  });

  @override
  List<Object?> get props => [
        job,
        id,
        date,
        resume,
        submissionDate,
        message,
      ];
}
