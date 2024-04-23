import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';

class DateOfEmergence extends StatelessWidget {
  const DateOfEmergence({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Date of Emergence from Coma',
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              //border: Border.all(color: AppColors.primaryBrandColor),
              borderRadius: BorderRadius.circular(10),
              color: AppColors.secondaryBackgroundColor),
          child: Row(
            children: [
              SvgPicture.asset('assets/icons/calendar.svg'),
              Text(
                '10-10-2022  ',
                style: AppTextStyles.interMediumSize14Color.copyWith(
                  color: AppColors.secondaryBrandColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
