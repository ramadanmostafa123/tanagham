import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/theming/text_styles.dart';
import 'package:tanagham/core/widgets/app_text_buttom.dart';
import 'package:tanagham/core/widgets/custom_app_bar.dart';
import 'package:tanagham/features/post_coma_test/widgets/patient_history.dart';
import 'package:tanagham/features/rehabitation_plan/widgets/date_of_emergence.dart';

class PostComaTest extends StatelessWidget {
  const PostComaTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 27.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(40),
              CustomAppBar(title: 'Post Coma Test'),
              verticalSpace(15),
              const PatientHistory(),
              const DateOfEmergence(),
              verticalSpace(15),
              Text(
                'Please Upload Your History as .csv file',
                style: AppTextStyles.interboldSize14SecondryColor,
              ),
              Expanded(
                child: SvgPicture.asset('assets/icons/Cloud backup.svg'),
              ),
              verticalSpace(10),
              Center(
                child: AppTextButton(
                  buttonWidth: 153.w,
                  buttonText: 'Choose File',
                  textStyle: AppTextStyles.interBoldSize16WhiteColor,
                  onPressed: () {},
                ),
              ),
              verticalSpace(10),
            ],
          ),
        ),
      ),
    );
  }
}
