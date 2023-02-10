import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class PasswordInputField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final FormFieldValidator<String>? validator;
  final TextCapitalization textCapitalization;
  final String labelText;
  final bool obscureText;
  final VoidCallback? toggle;
  final void Function(String)? onChanged;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  const PasswordInputField({
    Key? key,
    required this.controller,
    this.inputType,
    this.inputAction,
    this.validator,
    required this.labelText,
    this.obscureText = true,
    this.toggle,
    this.textCapitalization = TextCapitalization.none,
    this.onChanged,
    this.contentPadding,
    this.suffixIcon,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      cursorColor: CustomColor.deskripsiColor,
      style: const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        color: CustomColor.deskripsiColor,
        height: 1.29,
      ),
      decoration: InputDecoration(
        contentPadding: contentPadding,
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(0.2), width: 0.5),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(0.2), width: 0.5),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: CustomColor.primaryColor, width: 0.5),
        ),
        label: Text(labelText),
        labelStyle: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          color: CustomColor.deskripsiColor,
          height: 1.29,
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        errorStyle: const TextStyle(
          color: CustomColor.errorColor,
          fontSize: 13,
          fontWeight: FontWeight.w600,
          height: 1.38,
        ),
      ),
      keyboardType: inputType,
      textInputAction: inputAction,
      obscureText: obscureText,
      validator: validator,
      textCapitalization: textCapitalization,
    );
  }
}
