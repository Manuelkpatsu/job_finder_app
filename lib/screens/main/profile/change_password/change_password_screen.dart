import 'package:flutter/material.dart';
import 'package:job_finder_app/screens/widgets/app_bar_divider.dart';
import 'package:job_finder_app/screens/widgets/custom_button.dart';
import 'package:job_finder_app/screens/widgets/password_input_field.dart';

import 'widgets/change_password_text.dart';

class ChangePasswordScreen extends StatefulWidget {
  static const routeName = '/change_password';

  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final _changePasswordFormKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ChangePasswordText(),
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
                key: _changePasswordFormKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    const SizedBox(height: 32),
                    PasswordInputField(
                      controller: _oldPasswordController,
                      labelText: 'Old Password',
                      inputAction: TextInputAction.done,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Old Password is required';
                        }

                        if (value.length < 7) {
                          return "Password is invalid.";
                        }

                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                    PasswordInputField(
                      controller: _newPasswordController,
                      labelText: 'New Password',
                      inputAction: TextInputAction.next,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'New Password is required';
                        }

                        if (value.length < 7) {
                          return "Password is invalid.";
                        }

                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                    PasswordInputField(
                      controller: _confirmPasswordController,
                      labelText: 'Confirm New Password',
                      inputAction: TextInputAction.done,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please confirm password';
                        }

                        if (_newPasswordController.text !=
                            _confirmPasswordController.text) {
                          return "Passwords do not match";
                        }

                        return null;
                      },
                    ),
                    const Spacer(),
                    CustomButton(
                      onPressed: () {
                        if (_changePasswordFormKey.currentState!.validate()) {
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
