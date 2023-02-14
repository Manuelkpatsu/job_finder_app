import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class AccountEmailText extends StatelessWidget {
  final String email;

  const AccountEmailText({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      email,
      style: const TextStyle(
        color: CustomColor.deskripsiColor,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 1.21,
      ),
    );
  }
}
