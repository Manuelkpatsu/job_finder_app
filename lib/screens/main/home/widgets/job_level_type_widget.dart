import 'package:flutter/material.dart';

class JobLevelTypeWidget extends StatelessWidget {
  final String info;
  final Color backgroundColor;

  const JobLevelTypeWidget({
    Key? key,
    required this.info,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        info,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          height: 1.25,
        ),
      ),
    );
  }
}
