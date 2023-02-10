import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

class AgreeTermsConditions extends StatelessWidget {
  final bool isChecked;
  final void Function(bool?)? onChanged;
  final VoidCallback? onTermsTap;
  final VoidCallback? onConditionsTap;

  const AgreeTermsConditions({
    Key? key,
    required this.isChecked,
    required this.onChanged,
    required this.onTermsTap,
    required this.onConditionsTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: onChanged,
          activeColor: CustomColor.checkboxColor,
          shape: const RoundedRectangleBorder(),
          side: const BorderSide(color: CustomColor.greyColor, width: 0.6),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity.compact,
        ),
        const SizedBox(width: 3),
        RichText(
          text: TextSpan(
            text: 'I agree to the ',
            style: const TextStyle(
              color: CustomColor.deskripsiColor,
              fontSize: 15,
              fontWeight: FontWeight.w400,
              height: 1.3,
            ),
            children: [
              WidgetSpan(
                child: InkWell(
                  splashColor: CustomColor.primaryColor.withOpacity(0.1),
                  highlightColor: CustomColor.primaryColor.withOpacity(0.1),
                  onTap: onTermsTap,
                  child: const Text(
                    'Terms',
                    style: TextStyle(
                      color: CustomColor.primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      height: 1.3,
                    ),
                  ),
                ),
              ),
              const TextSpan(
                text: ' and ',
                style: TextStyle(
                  color: CustomColor.deskripsiColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  height: 1.3,
                ),
              ),
              WidgetSpan(
                child: InkWell(
                  splashColor: CustomColor.primaryColor.withOpacity(0.1),
                  highlightColor: CustomColor.primaryColor.withOpacity(0.1),
                  onTap: onTermsTap,
                  child: const Text(
                    'Conditions',
                    style: TextStyle(
                      color: CustomColor.primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      height: 1.3,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
