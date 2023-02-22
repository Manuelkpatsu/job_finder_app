import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

import 'info_text.dart';

class NumberingTile extends StatelessWidget {
  final int number;
  final String info;
  
  const NumberingTile({Key? key, required this.number, required this.info,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$number.',
          style: const TextStyle(
            color: CustomColor.deskripsiColor,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 1.57,
          ),
        ),
        const SizedBox(width: 3),
        Expanded(child: InfoText(info: info)),
      ],
    );
  }
}
