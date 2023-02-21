import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class SeeAllButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const SeeAllButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: CustomColor.deskripsiColor,
        textStyle: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          height: 1.23,
        )
      ),
      child: const Text('See All'),
    );
  }
}
