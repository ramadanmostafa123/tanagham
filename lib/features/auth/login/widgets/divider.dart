import 'package:flutter/material.dart';
import 'package:tanagham/core/theming/colors.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            thickness: 1,
            color: AppColors.textFormFieldBorderColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'OR',
            style: TextStyle(color: Colors.grey.shade500),
          ),
        ),
        const Expanded(
          child: Divider(
            thickness: 1,
            color: AppColors.textFormFieldBorderColor,
          ),
        ),
      ],
    );
  }
}
