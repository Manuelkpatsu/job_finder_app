import 'bookmark.dart';

class Job extends Bookmark {
  final DateTime createdAt;

  const Job({
    required final int id,
    required final String companyLogo,
    required final String jobTitle,
    required final String companyName,
    required final double salary,
    required this.createdAt,
  }) : super(
          id: id,
          companyLogo: companyLogo,
          jobTitle: jobTitle,
          companyName: companyName,
          salary: salary,
        );

  @override
  List<Object?> get props => super.props..addAll([createdAt]);
}
