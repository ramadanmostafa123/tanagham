import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/routing/routing.dart';
import 'package:tanagham/core/theming/text_styles.dart';
import 'package:tanagham/core/widgets/app_text_buttom.dart';
import 'package:tanagham/core/widgets/app_text_form_feild.dart';
import 'package:tanagham/core/widgets/custom_app_bar.dart';
import 'package:tanagham/features/auth/settings/settings.dart';
import 'package:tanagham/features/profile_patient/background.dart';
import 'package:tanagham/features/support/widgets/describe_your_problem.dart';
import 'package:tanagham/features/support/widgets/problem_type.dart';

import '../../core/theming/colors.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: AppColors.successColor,
            ),
            Positioned(
              top: 120,
              right: -120,
              child: CustomPaint(
                painter: OvalPainter(),
                size: const Size(200, 150),
              ),
            ),
            Column(
              children: [
                verticalSpace(40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 27.w),
                  child: CustomAppBar(
                    title: 'Support',
                  ),
                ),
                verticalSpace(20),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    //height: 200,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(27),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            verticalSpace(20),
                            Text(
                              ' Choose your problem type :',
                              style: AppTextStyles
                                  .interRegularSize14SecondaryBrandColorbold
                                  .copyWith(
                                color: AppColors.primaryTextColor,
                              ),
                            ),
                            verticalSpace(20),
                            const ProblemType(),
                            verticalSpace(29),
                            Text(
                              'Describe your problem :',
                              style: AppTextStyles
                                  .interRegularSize14SecondaryBrandColorbold
                                  .copyWith(
                                color: AppColors.primaryTextColor,
                              ),
                            ),
                            verticalSpace(18),
                            const DescribeYourProblem(),
                            verticalSpace(19),
                            Center(
                              child: AppTextButton(
                                buttonWidth: 153.w,
                                backgroundColor: AppColors.successColor,
                                buttonText: 'Send',
                                textStyle:
                                    AppTextStyles.interBoldSize16WhiteColor,
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildThisScreenCustomRow(String icon, String title) {
  return Column(
    children: [
      Row(
        children: [
          SvgPicture.asset(icon),
          horisontalSpace(10),
          Text(
            title,
            style: AppTextStyles.poppinsRegularSize14BlackColor,
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: Color(0xFF677294),
          ),
        ],
      ),
    ],
  );
}
