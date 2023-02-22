import 'package:flutter/material.dart';
import 'package:job_finder_app/models/notification.dart';
import 'package:job_finder_app/theme/custom_color.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationTile extends StatelessWidget {
  final NotificationModel notification;
  final VoidCallback? onTap;

  const NotificationTile({
    Key? key,
    required this.notification,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              notification.job.companyLogo,
              width: 40,
              height: 40,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Application Sent',
                    style: TextStyle(
                      color: CustomColor.titleColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    notification.message,
                    style: const TextStyle(
                      color: CustomColor.titleColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.21,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    timeago.format(notification.date, allowFromNow: true),
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
      ),
    );
  }
}
