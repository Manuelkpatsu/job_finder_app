import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class JobDetailTile extends StatelessWidget {
  final String info;
  final IconData icon;

  const JobDetailTile({
    Key? key,
    required this.info,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Icon(icon, size: 14, color: CustomColor.deskripsiColor),
            const SizedBox(width: 12),
            Text(
              info,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.21,
                color: CustomColor.titleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
