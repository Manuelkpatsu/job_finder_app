import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final String thumbnail;

  const ProfilePicture({Key? key, required this.thumbnail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 36,
      backgroundImage: AssetImage(thumbnail),
      foregroundImage: AssetImage(thumbnail),
    );
  }
}
