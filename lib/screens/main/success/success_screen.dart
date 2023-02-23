import 'package:flutter/material.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/screens/main/app.dart';
import 'package:job_finder_app/screens/widgets/custom_button.dart';
import 'package:job_finder_app/theme/custom_color.dart';

import 'widgets/message_text.dart';

class SuccessScreen extends StatefulWidget {
  static const routeName = '/success';

  final Job job;

  const SuccessScreen({Key? key, required this.job}) : super(key: key);

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..forward();

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ScaleTransition(
        scale: _animation,
        child: Column(
          children: [
            const SizedBox(height: 100),
            Image.asset(
              'assets/images/success.png',
              width: 72,
              height: 72,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 26),
            const Text(
              'Success',
              style: TextStyle(
                color: CustomColor.titleColor,
                fontSize: 32,
                fontWeight: FontWeight.w700,
                height: 1.21,
              ),
            ),
            const SizedBox(height: 16),
            MessageText(job: widget.job),
            const SizedBox(height: 40),
            CustomButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  App.routeName,
                  (route) => false,
                );
              },
              widget: const Text('Explore Jobs'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}