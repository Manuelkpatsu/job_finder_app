import 'dart:async';

import 'package:flutter/material.dart';
import 'package:job_finder_app/screens/welcome/welcome_screen.dart';
import 'package:job_finder_app/screens/widgets/logo.dart';
import 'package:job_finder_app/theme/custom_color.dart';

import 'widgets/logo_text.dart';
import 'widgets/slogan_text.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _getTimer();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..forward();

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    );
  }

  _getTimer() {
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushNamedAndRemoveUntil(
        WelcomeScreen.routeName,
        (route) => false,
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryColor,
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Logo(
                backgroundColor: Colors.white,
                size: 90,
                logo: 'assets/images/logo-1.png',
                borderRadius: 10,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 28),
              ),
              SizedBox(height: 10),
              LogoText(),
              SizedBox(height: 4),
              SloganText(),
            ],
          ),
        ),
      ),
    );
  }
}
