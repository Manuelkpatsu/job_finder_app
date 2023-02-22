import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class Resume extends StatelessWidget {
  final File file;
  final DateTime date;

  const Resume({
    Key? key,
    required this.file,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.feed_outlined, color: CustomColor.deskripsiColor, size: 16),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  file.path,
                  style: const TextStyle(
                    color: CustomColor.titleColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.1,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Updated ${DateFormat('dd MMM yyyy, hh:mm a').format(date)}',
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
        ],
      ),
    );
  }
}
