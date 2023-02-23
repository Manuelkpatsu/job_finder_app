import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:job_finder_app/screens/widgets/app_bar_divider.dart';
import 'package:job_finder_app/screens/widgets/custom_button.dart';
import 'package:job_finder_app/screens/widgets/text_input_field.dart';
import 'package:job_finder_app/theme/custom_color.dart';
import 'package:job_finder_app/utils/validator.dart';

import 'widgets/change_birth_date_text.dart';

class ChangeBirthDateScreen extends StatefulWidget {
  static const routeName = '/change_birth_date';

  final DateTime argument;

  const ChangeBirthDateScreen({Key? key, required this.argument}) : super(key: key);

  @override
  State<ChangeBirthDateScreen> createState() => _ChangeBirthDateScreenState();
}

class _ChangeBirthDateScreenState extends State<ChangeBirthDateScreen> {
  final TextEditingController _controller = TextEditingController();
  final _changeBirthDateFormKey = GlobalKey<FormState>();
  late DateTime? _dateOfBirth;

  @override
  void initState() {
    _dateOfBirth = widget.argument;
    _controller.text = DateFormat.yMMMMd().format(widget.argument);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _selectDate() async {
    FocusScope.of(context).requestFocus(FocusNode());
    DateTime? picked = await showDatePicker(
      context: context,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      initialDate: _dateOfBirth!,
      firstDate: DateTime(1900),
      lastDate: DateTime(DateTime.now().year + 5),
      builder: (context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: CustomColor.primaryColor,
            colorScheme: const ColorScheme.light(
              primary: CustomColor.primaryColor,
            ),
            buttonTheme: const ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      setState(() {
        _dateOfBirth = picked;
        _controller.value = TextEditingValue(
          text: DateFormat.yMMMMd().format(picked),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ChangeBirthDateText(),
        centerTitle: false,
        titleSpacing: 0,
        bottom: const AppBarDivider(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: _changeBirthDateFormKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              const SizedBox(height: 32),
              TextInputField(
                controller: _controller,
                labelText: 'Date Of Birth',
                inputAction: TextInputAction.done,
                onTap: _selectDate,
                onChanged: (value) {},
                readOnly: true,
                validator: Validator.dateOfBirth,
              ),
              const SizedBox(height: 100),
              CustomButton(
                onPressed: () {
                  if (_changeBirthDateFormKey.currentState!.validate()) {
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
