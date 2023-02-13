import 'package:flutter/material.dart';
import 'package:job_finder_app/screens/auth/login/login_screen.dart';
import 'package:job_finder_app/screens/main/app.dart';
import 'package:job_finder_app/screens/widgets/custom_button.dart';
import 'package:job_finder_app/screens/widgets/logo.dart';
import 'package:job_finder_app/screens/widgets/password_input_field.dart';
import 'package:job_finder_app/screens/widgets/text_input_field.dart';
import 'package:job_finder_app/utils/validator.dart';

import 'widgets/agree_terms_conditions.dart';
import 'widgets/create_account_message_text.dart';
import 'widgets/create_account_text.dart';
import 'widgets/have_account.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = '/register';

  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _registerFormKey = GlobalKey<FormState>();
  bool _isChecked = false;

  @override
  void dispose() {
    _fullNameController.dispose();
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
            key: _registerFormKey,
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
                const CreateAccountText(),
                const SizedBox(height: 10),
                const CreateAccountMessageText(),
                const SizedBox(height: 40),
                TextInputField(
                  controller: _fullNameController,
                  labelText: 'Full Name',
                  inputType: TextInputType.name,
                  inputAction: TextInputAction.next,
                  validator: Validator.fullName,
                ),
                const SizedBox(height: 10),
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
                AgreeTermsConditions(
                  isChecked: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                  onConditionsTap: () {},
                  onTermsTap: () {},
                ),
                const SizedBox(height: 100),
                CustomButton(
                  onPressed: () {
                    if (_registerFormKey.currentState!.validate()) {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        App.routeName,
                        (route) => false,
                      );
                    }
                  },
                  widget: const Text('Create Account'),
                ),
                const SizedBox(height: 32),
                HaveAccount(
                  onTap: () => Navigator.of(context).pushNamed(
                    LoginScreen.routeName,
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
