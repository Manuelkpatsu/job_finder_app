import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class LogoutButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const LogoutButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          textStyle: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            height: 1.29,
          ),
          side: const BorderSide(color: CustomColor.errorColor, width: 1),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          foregroundColor: CustomColor.errorColor,
          backgroundColor: Colors.white,
          minimumSize: const Size.fromHeight(56),
        ),
        child: const Text('Log Out'),
      ),
    );
  }
}
