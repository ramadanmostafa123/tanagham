// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'dart:math';

import 'package:tanagham/core/theming/text_styles.dart';

class PatientHistory extends StatelessWidget {
  const PatientHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Row(
            children: [
              Stack(
                children: [
                  SleekCircularSlider(
                    appearance: CircularSliderAppearance(
                      customWidths: CustomSliderWidths(progressBarWidth: 10),
                      customColors: CustomSliderColors(
                        dynamicGradient: false,
                        progressBarColor: Colors.black,
                        trackColor: AppColors.primaryBrandColor,
                        shadowColor: AppColors.successColor,
                        progressBarColors: [
                          AppColors.primaryBrandColor,
                          Colors.transparent
                        ],
                      ),
                      size: 140,
                    ),
                    min: 10,
                    max: 28,
                    initialValue: 16,
                  ),
                  Positioned(
                    top: -80,
                    left: 10,
                    child: Text(
                      ' 1 of 6 ',
                      style: AppTextStyles.rubikSize20Black,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Patient history',
                    style: AppTextStyles.rubikSize16SubTitleColor,
                  ),
                  verticalSpace(10),
                  Text(
                    'Next:Physical Well-being',
                    style: AppTextStyles.rubikSize9SubTitleColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
