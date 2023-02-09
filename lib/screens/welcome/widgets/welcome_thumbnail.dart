import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class WelcomeThumbnail extends StatelessWidget {
  const WelcomeThumbnail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 184,
      decoration: BoxDecoration(
        color: CustomColor.primaryColor,
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage('assets/images/welcome.png'),
        ),
      ),
    );
  }
}
