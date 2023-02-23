import 'package:flutter/widgets.dart';

class Validator {
  static FormFieldValidator<String> email = (email) {
    if (email == null || email.isEmpty) {
      return 'Email is required.';
    }

    String pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(email)) {
      return 'The email you entered is invalid.';
    }

    return null;
  };

  static FormFieldValidator<String> fullName = (fullName) {
    if (fullName == null || fullName.isEmpty) {
      return 'Full name is required.';
    }

    return null;
  };

  static FormFieldValidator<String> firstName = (firstName) {
    if (firstName == null || firstName.isEmpty) {
      return 'First name is required.';
    }

    return null;
  };

  static FormFieldValidator<String> lastName = (lastName) {
    if (lastName == null || lastName.isEmpty) {
      return 'Last name is required.';
    }

    return null;
  };

  static FormFieldValidator<String> password = (password) {
    if (password == null || password.isEmpty) {
      return 'Password is required';
    }

    if (password.length < 7) {
      return "Password is invalid.";
    }

    return null;
  };

  static FormFieldValidator<String>? dateOfBirth = (date) {
    if (date == null || date.isEmpty) {
      return 'Date of birth is required';
    }

    return null;
  };
}
