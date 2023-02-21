import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class NotificationButton extends StatelessWidget {
  final VoidCallback? onTap;

  const NotificationButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 20,
      onPressed: onTap,
      icon: Badge(
        position: BadgePosition.topEnd(top: 0, end: 0),
        badgeAnimation: const BadgeAnimation.rotation(
          animationDuration: Duration(seconds: 1),
          colorChangeAnimationDuration: Duration(seconds: 1),
          loopAnimation: false,
          curve: Curves.fastOutSlowIn,
          colorChangeAnimationCurve: Curves.easeInCubic,
        ),
        badgeStyle: const BadgeStyle(
          shape: BadgeShape.circle,
          badgeColor: CustomColor.errorColor,
          padding: EdgeInsets.all(5),
          elevation: 0,
        ),
        child: const Icon(
          Icons.notifications_rounded,
          color: CustomColor.deskripsiColor,
          size: 20,
        ),
      ),
    );
  }
}
