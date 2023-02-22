import 'package:flutter/material.dart';

class CompanyLogo extends StatelessWidget {
  final String logo;

  const CompanyLogo({Key? key, required this.logo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      logo,
      width: 50,
      height: 50,
      fit: BoxFit.contain,
    );
  }
}
