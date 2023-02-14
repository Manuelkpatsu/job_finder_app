import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class AppBarDivider extends StatelessWidget implements PreferredSizeWidget {
  const AppBarDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 1,
      color: CustomColor.appBarDividerColor,
      thickness: 1,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(1);
}
