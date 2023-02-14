import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:job_finder_app/models/profile_item.dart';
import 'package:job_finder_app/theme/custom_color.dart';

import 'widgets/account_email_text.dart';
import 'widgets/account_name_text.dart';
import 'widgets/logout_button.dart';
import 'widgets/my_account_text.dart';
import 'widgets/profile_nav_tile.dart';
import 'widgets/profile_picture.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String password = 'dee234@23';
    DateTime dateOfBirth = DateTime(2000, 2, 10);
    String fullName = 'Muhamad Fadli';
    String email = 'fadly00@gmail.com';

    final List<ProfileItem> items = [
      ProfileItem(
        icon: Icons.calendar_today_outlined,
        title: 'Date of Birth',
        info: DateFormat('dd-MM-yyyy').format(dateOfBirth),
        onTap: () {},
      ),
      ProfileItem(
        icon: Icons.email_rounded,
        title: 'Email',
        info: email,
        onTap: () {},
      ),
      ProfileItem(
        icon: Icons.lock_rounded,
        title: 'Password',
        info: password.replaceRange(0, password.length, '*' * password.length),
        onTap: () {},
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.primaryColor,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarColor: CustomColor.primaryColor,
        ),
        title: const MyAccountText(),
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {},
            child: Ink(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 24),
              child: Row(
                children: [
                  const ProfilePicture(thumbnail: 'assets/images/profile-picture.png'),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AccountNameText(name: fullName),
                        const SizedBox(height: 8),
                        AccountEmailText(email: email),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Column(
            children: items.map((item) {
              return ProfileNavTile(profileItem: item);
            }).toList(),
          ),
          const Spacer(),
          LogoutButton(onPressed: () {}),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
