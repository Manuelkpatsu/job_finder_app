import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:job_finder_app/models/bookmark.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class BookmarkTile extends StatelessWidget {
  final VoidCallback? onTap;
  final Bookmark bookmark;

  const BookmarkTile({
    Key? key,
    required this.onTap,
    required this.bookmark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedSalary = bookmark.salary != 0
        ? NumberFormat("###,###.00").format(bookmark.salary)
        : bookmark.salary.toStringAsFixed(2);

    return InkWell(
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              bookmark.companyLogo,
              width: 50,
              height: 50,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bookmark.jobTitle,
                    style: const TextStyle(
                      color: CustomColor.titleColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      height: 1.22,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    bookmark.companyName,
                    style: const TextStyle(
                      color: CustomColor.deskripsiColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.21,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Salary \$$formattedSalary / month',
                    style: const TextStyle(
                      color: CustomColor.deskripsiColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.21,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Image.asset(
              'assets/images/bookmarks-active.png',
              width: 24,
              height: 24,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}