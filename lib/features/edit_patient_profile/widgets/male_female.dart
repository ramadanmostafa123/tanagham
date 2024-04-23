import 'package:flutter/material.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';

class MaleFemaleWidget extends StatefulWidget {
  final String? text1;
  final String? text2;
  const MaleFemaleWidget({super.key, this.text1, this.text2});

  @override
  State<MaleFemaleWidget> createState() => _MaleFemaleWidgetState();
}

class _MaleFemaleWidgetState extends State<MaleFemaleWidget> {
  String? _gender;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Radio<String>(
          activeColor: AppColors.secondaryTextColor,
          value: 'male',
          groupValue: _gender,
          onChanged: (value) {
            setState(() {
              _gender = value;
            });
          },
        ),
        Text(
          widget.text1 ?? 'Male',
          style: AppTextStyles.poppinsRegularSize14BlackColor,
        ),
        Radio<String>(
          activeColor: AppColors.secondaryTextColor,
          value: 'female',
          groupValue: _gender,
          onChanged: (value) {
            setState(() {
              _gender = value;
            });
          },
        ),
        Text(
          widget.text2 ?? 'Female',
          style: AppTextStyles.poppinsRegularSize14BlackColor,
        ),
      ],
    );
  }
}
