import 'package:flutter/material.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';

class AppTextFormFeild extends StatelessWidget {
  const AppTextFormFeild({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    this.maxLines,
    this.filledColor,
    this.style, this.hintStyle,
  });

  final String hintText;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  final int? maxLines;
  final Color? filledColor;
  final TextStyle? style;
  final TextStyle ? hintStyle;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines ?? 1,
      style: style ?? AppTextStyles.interMediumSize14Color,
      decoration: InputDecoration(
        hintStyle: hintStyle ,
        filled: true,
        fillColor: filledColor ?? AppColors.textFormFieldbkColor,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: AppColors.textFormFieldBorderColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(
            color: AppColors.textFormFieldBorderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: AppColors.textFormFieldBorderColor,
          ),
        ),
      ),
    );
  }
}
