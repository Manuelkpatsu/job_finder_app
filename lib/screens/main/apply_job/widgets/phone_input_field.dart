import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class PhoneInputField extends StatelessWidget {
  final TextEditingController controller;
  final void Function(PhoneNumber)? onChanged;

  const PhoneInputField({
    Key? key,
    required this.controller,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      style: const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w700,
        color: CustomColor.deskripsiColor,
        height: 1.29,
      ),
      disableLengthCheck: true,
      showDropdownIcon: false,
      decoration: InputDecoration(
        labelText: 'Phone Number',
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(0.2), width: 0.5),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(0.2), width: 0.5),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: CustomColor.primaryColor, width: 0.5),
        ),
        labelStyle: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          color: CustomColor.deskripsiColor,
          height: 1.29,
        ),
      ),
      initialCountryCode: 'GH',
      controller: controller,
      textInputAction: TextInputAction.next,
      onChanged: onChanged,
    );
  }
}
