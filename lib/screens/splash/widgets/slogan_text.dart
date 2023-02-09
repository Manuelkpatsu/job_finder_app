import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SloganText extends StatelessWidget {
  const SloganText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Explore your dream jobs',
      textAlign: TextAlign.center,
      style: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.25,
      ),
    );
  }
}
