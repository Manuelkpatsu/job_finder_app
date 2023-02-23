import 'package:flutter/material.dart';
import 'package:job_finder_app/screens/widgets/app_bar_divider.dart';
import 'package:job_finder_app/screens/widgets/custom_button.dart';
import 'package:job_finder_app/screens/widgets/text_input_field.dart';
import 'package:job_finder_app/utils/validator.dart';

import 'widgets/change_name_text.dart';

class ChangeNameScreen extends StatefulWidget {
  final String argument;

  static const routeName = '/change_name';

  const ChangeNameScreen({Key? key, required this.argument}) : super(key: key);

  @override
  State<ChangeNameScreen> createState() => _ChangeNameScreenState();
}

class _ChangeNameScreenState extends State<ChangeNameScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final _changeNameFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    _firstNameController.text = widget.argument.split(' ')[0].trim();
    _lastNameController.text = widget.argument.split(' ')[1].trim();
    super.initState();
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ChangeNameText(),
        centerTitle: false,
        bottom: const AppBarDivider(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: _changeNameFormKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              const SizedBox(height: 32),
              TextInputField(
                controller: _firstNameController,
                labelText: 'First Name',
                inputType: TextInputType.name,
                inputAction: TextInputAction.next,
                validator: Validator.firstName,
              ),
              const SizedBox(height: 10),
              TextInputField(
                controller: _lastNameController,
                labelText: 'Last Name',
                inputType: TextInputType.name,
                inputAction: TextInputAction.done,
                validator: Validator.lastName,
              ),
              const SizedBox(height: 100),
              CustomButton(
                onPressed: () {
                  if (_changeNameFormKey.currentState!.validate()) {
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
    );
  }
}
