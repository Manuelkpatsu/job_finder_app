import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class EmptyState extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const EmptyState({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 208,
              width: 249,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 26),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: CustomColor.titleColor,
                fontSize: 32,
                fontWeight: FontWeight.w700,
                height: 1.22,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: CustomColor.deskripsiColor,
                fontSize: 17,
                fontWeight: FontWeight.w400,
                height: 1.29,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
