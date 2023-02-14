import 'package:flutter/material.dart';
import 'package:job_finder_app/screens/widgets/app_bar_divider.dart';
import 'package:job_finder_app/screens/widgets/custom_button.dart';
import 'package:job_finder_app/screens/widgets/text_input_field.dart';
import 'package:job_finder_app/utils/validator.dart';

import 'widgets/change_email_text.dart';

class ChangeEmailScreen extends StatefulWidget {
  final String argument;

  static const routeName = '/change_email';

  const ChangeEmailScreen({Key? key, required this.argument}) : super(key: key);

  @override
  State<ChangeEmailScreen> createState() => _ChangeEmailScreenState();
}

class _ChangeEmailScreenState extends State<ChangeEmailScreen> {
  final TextEditingController _emailController = TextEditingController();
  final _changeEmailFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailController.text = widget.argument;
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ChangeEmailText(),
        centerTitle: false,
        bottom: const AppBarDivider(),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: constraints.maxWidth,
              minHeight: constraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Form(
                key: _changeEmailFormKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    const SizedBox(height: 32),
                    TextInputField(
                      controller: _emailController,
                      labelText: 'Email',
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.done,
                      validator: Validator.email,
                    ),
                    const Spacer(),
                    CustomButton(
                      onPressed: () {
                        if (_changeEmailFormKey.currentState!.validate()) {
                          Navigator.of(context).pop();
                        }
                      },
                      widget: const Text('Save'),
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
