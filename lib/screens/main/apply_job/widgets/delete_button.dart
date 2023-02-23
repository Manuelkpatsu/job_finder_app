import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class DeleteButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const DeleteButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 20,
      onPressed: onPressed,
      icon: const Icon(
        Icons.delete_outline_rounded,
        color: CustomColor.deskripsiColor,
        size: 24,
      ),
    );
  }
}
