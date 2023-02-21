import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class CategoryTitleText extends StatelessWidget {
  final String title;

  const CategoryTitleText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: CustomColor.titleColor,
        fontSize: 22,
        fontWeight: FontWeight.w700,
        height: 1.22,
      ),
    );
  }
}
