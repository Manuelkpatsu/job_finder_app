import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class ForgotPasswordButton extends StatelessWidget {
  final VoidCallback? onTap;

  const ForgotPasswordButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        splashColor: CustomColor.primaryColor.withOpacity(0.1),
        highlightColor: CustomColor.primaryColor.withOpacity(0.1),
        onTap: onTap,
        child: const Text(
          'Forgot Password?',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: CustomColor.primaryColor,
            height: 1.38,
          ),
        ),
      ),
    );
  }
}
