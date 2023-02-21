import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class SearchJobTextField extends StatelessWidget {
  final TextEditingController controller;

  const SearchJobTextField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextFormField(
        controller: controller,
        cursorColor: CustomColor.primaryColor,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          color: CustomColor.deskripsiColor,
          height: 1.24,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: CustomColor.appBarDividerColor, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: CustomColor.appBarDividerColor, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: CustomColor.primaryColor, width: 0.5),
          ),
          isDense: true,
          hintText: 'Search a job or position',
          hintStyle: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: CustomColor.deskripsiColor,
            height: 1.24,
          ),
          prefixIcon: const Icon(
            Icons.search_rounded,
            color: CustomColor.primaryColor,
            size: 16,
          ),
        ),
      ),
    );
  }
}
