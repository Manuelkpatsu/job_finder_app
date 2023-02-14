import 'package:equatable/equatable.dart';

class Bookmark extends Equatable {
  final int id;
  final String companyLogo;
  final String jobTitle;
  final String companyName;
  final double salary;

  const Bookmark({
    required this.id,
    required this.companyLogo,
    required this.jobTitle,
    required this.companyName,
    required this.salary,
  });

  @override
  List<Object?> get props => [id, companyLogo, jobTitle, companyName, salary];
}
