import 'package:flutter/material.dart';
import 'package:job_finder_app/screens/auth/register/register_screen.dart';
import 'package:job_finder_app/screens/main/app.dart';
import 'package:job_finder_app/screens/widgets/custom_button.dart';
import 'package:job_finder_app/screens/widgets/logo.dart';
import 'package:job_finder_app/screens/widgets/password_input_field.dart';
import 'package:job_finder_app/screens/widgets/text_input_field.dart';
import 'package:job_finder_app/utils/validator.dart';

import 'widgets/create_new_account.dart';
import 'widgets/forgot_password_button.dart';
import 'widgets/login_message_text.dart';
import 'widgets/welcome_back_text.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _loginFormKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _loginFormKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                const SizedBox(height: 50),
                const Logo(
                  logo: 'assets/images/logo-light.png',
                  size: 50,
                  padding: EdgeInsets.symmetric(horizontal: 11, vertical: 15),
                  borderRadius: 10,
                ),
                const SizedBox(height: 26),
                const WelcomeBackText(),
                const SizedBox(height: 10),
                const LoginMessageText(),
                const SizedBox(height: 40),
                TextInputField(
                  controller: _emailController,
                  labelText: 'Email',
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                  validator: Validator.email,
                ),
                const SizedBox(height: 10),
                PasswordInputField(
                  controller: _passwordController,
                  labelText: 'Password',
                  inputAction: TextInputAction.done,
                  validator: Validator.password,
                ),
                const SizedBox(height: 16),
                ForgotPasswordButton(onTap: () {}),
                const SizedBox(height: 100),
                CustomButton(
                  onPressed: () {
                    if (_loginFormKey.currentState!.validate()) {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        App.routeName,
                        (route) => false,
                      );
                    }
                  },
                  widget: const Text('Sign In'),
                ),
                const SizedBox(height: 32),
                CreateNewAccount(
                  onTap: () => Navigator.of(context).pushNamed(
                    RegisterScreen.routeName,
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
