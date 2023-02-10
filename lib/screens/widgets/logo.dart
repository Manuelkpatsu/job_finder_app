import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class Logo extends StatelessWidget {
  final String logo;
  final Color backgroundColor;
  final double size;
  final EdgeInsetsGeometry padding;
  final double borderRadius;

  const Logo({
    Key? key,
    required this.logo,
    this.backgroundColor = CustomColor.primaryColor,
    this.size = 60,
    this.padding = const EdgeInsets.symmetric(horizontal: 13, vertical: 19),
    this.borderRadius = 15,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: padding,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Image.asset(logo, fit: BoxFit.cover),
    );
  }
}
