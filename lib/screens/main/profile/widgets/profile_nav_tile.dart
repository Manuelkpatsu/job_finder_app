import 'package:flutter/material.dart';
import 'package:job_finder_app/models/profile_item.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class ProfileNavTile extends StatelessWidget {
  final ProfileItem profileItem;

  const ProfileNavTile({Key? key, required this.profileItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: profileItem.onTap,
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 19),
        child: Row(
          children: [
            Icon(
              profileItem.icon,
              color: CustomColor.deskripsiColor,
              size: 20,
            ),
            const SizedBox(width: 15),
            Text(
              profileItem.title,
              style: const TextStyle(
                color: CustomColor.titleColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                height: 1.06,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    profileItem.info,
                    style: const TextStyle(
                      color: CustomColor.deskripsiColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 1.21,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: CustomColor.iconColor,
                    size: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
