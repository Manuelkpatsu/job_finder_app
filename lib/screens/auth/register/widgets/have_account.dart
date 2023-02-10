import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class HaveAccount extends StatelessWidget {
  final VoidCallback? onTap;

  const HaveAccount({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Already have an account? ',
        style: const TextStyle(
          color: CustomColor.deskripsiColor,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          height: 1.3,
        ),
        children: [
          WidgetSpan(
            child: InkWell(
              splashColor: CustomColor.primaryColor.withOpacity(0.1),
              highlightColor: CustomColor.primaryColor.withOpacity(0.1),
              onTap: onTap,
              child: const Text(
                'Sign In',
                style: TextStyle(
                  color: CustomColor.primaryColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  height: 1.3,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
