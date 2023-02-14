import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class AccountNameText extends StatelessWidget {
  final String name;

  const AccountNameText({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        color: CustomColor.titleColor,
        fontWeight: FontWeight.w600,
        fontSize: 18,
        height: 1.22,
      ),
    );
  }
}
