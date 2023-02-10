import 'package:flutter/material.dart';
import 'package:job_finder_app/screens/auth/login/login_screen.dart';
import 'package:job_finder_app/screens/widgets/custom_button.dart';
import 'package:job_finder_app/screens/widgets/logo.dart';

import 'widgets/welcome_message_text.dart';
import 'widgets/welcome_text.dart';
import 'widgets/welcome_thumbnail.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/welcome';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const Logo(logo: 'assets/images/logo-light.png'),
              const SizedBox(height: 80),
              const WelcomeThumbnail(),
              const SizedBox(height: 50),
              const WelcomeText(),
              const SizedBox(height: 10),
              const WelcomeMessageText(),
              const Spacer(),
              CustomButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    LoginScreen.routeName,
                    (route) => false,
                  );
                },
                widget: const Text('Start Explore Jobs'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
