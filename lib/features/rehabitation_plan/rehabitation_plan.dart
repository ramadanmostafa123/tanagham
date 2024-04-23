import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';
import 'package:tanagham/core/widgets/custom_app_bar.dart';
import 'package:tanagham/features/rehabitation_plan/widgets/date_of_emergence.dart';
import 'package:tanagham/features/rehabitation_plan/widgets/your_need.dart';
import 'package:tanagham/features/rehabitation_plan/widgets/your_rehabation_goals.dart';

class RehabitationPlan extends StatelessWidget {
  const RehabitationPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomAppBar(
                    title: 'Rehabitation Plan',
                  ),
                ),
                verticalSpace(30),
                const DateOfEmergence(),
                verticalSpace(20),
                const YourRehabationGoals(),
                verticalSpace(20),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 5,
                      backgroundColor: AppColors.primaryBrandColor,
                    ),
                    horisontalSpace(10),
                    Text(
                      ' Your Need :',
                      style:
                          AppTextStyles.interRegularSize12SecondaryBrandColor,
                    ),
                  ],
                ),
                verticalSpace(20),
                const YourNeed(
                  title: ' 1. Physical Rehabilitation ',
                  subtitle:
                      'Objective: Improve overall physical  mobility and strength....',
                  children1Text:
                      'Objective: Improve overall physical  mobility and strength....',
                  children2Text:
                      'Objective: Improve overall physical  mobility and strength....',
                ),
                verticalSpace(20),
                const YourNeed(
                  title: '2.Cognitive Rehabilitation',
                  subtitle: 'Specialist: Neuropsychologist........',
                  children1Text:
                      'Objective: Improve overall physical  mobility and strength....',
                  children2Text: 'Specialist: Neuropsychologist........',
                ),
                verticalSpace(20),
                const YourNeed(
                  title: ' 3. Speech and Language Therapy ',
                  subtitle: 'Specialist: Speech-Language  Pathologist.........',
                  children1Text:
                      'Objective: Improve overall physical  mobility and strength....',
                  children2Text: 'Specialist: Neuropsychologist........',
                ),
                verticalSpace(20),
                const YourNeed(
                  title: ' 4. Occupational Therapy: ',
                  subtitle: 'Specialist: Occupational Therapist........',
                  children1Text:
                      'Objective: Improve overall physical  mobility and strength....',
                  children2Text: 'Specialist: Neuropsychologist........',
                ),
                verticalSpace(100),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: 
      Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
          child: 
          Row(
            children: [
              Container(
                width: 100.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: SizedBox(
                  height: 45.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/share.svg'),
                      horisontalSpace(5),
                      Text('Share',
                          style: AppTextStyles
                              .interRegularSize12SecondaryBrandColor),
                    ],
                  ),
                ),
              ),
              Expanded(child: horisontalSpace(40)),
              SizedBox(
                height: 45.h,
                child: Container(
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/Pdf.svg'),
                      horisontalSpace(5),
                      Text('Download',
                          style: AppTextStyles
                              .interRegularSize12SecondaryBrandColor),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
