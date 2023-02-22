import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class NotificationText extends StatelessWidget {
  const NotificationText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Notification',
      style: TextStyle(
        color: CustomColor.titleColor,
        fontSize: 17,
        fontWeight: FontWeight.w700,
        height: 1.5,
      ),
    );
  }
}
