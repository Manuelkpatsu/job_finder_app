import 'package:flutter/material.dart';

class SuccessThumbnail extends StatelessWidget {
  const SuccessThumbnail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/success.png',
      width: 72,
      height: 72,
      fit: BoxFit.contain,
    );
  }
}
