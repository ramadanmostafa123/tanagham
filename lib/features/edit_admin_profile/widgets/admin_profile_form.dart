import 'package:flutter/material.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';
import 'package:tanagham/core/widgets/app_text_buttom.dart';
import 'package:tanagham/core/widgets/app_text_form_feild.dart';
import 'package:tanagham/features/edit_patient_profile/widgets/male_female.dart';

class EditAdminProfileForm extends StatelessWidget {
  const EditAdminProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFFABCCC5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(113),
                Text(
                  'Name',
                  style: AppTextStyles.interMediumSize16BlackColor,
                ),
                verticalSpace(5),
                AppTextFormFeild(
                  hintStyle:
                      AppTextStyles.interRegularSize14W500SecondaryTextColor,
                  style: AppTextStyles.interRegularSize14W500SecondaryTextColor,
                  hintText: 'Samar Al-Qahtani ',
                  prefixIcon: const SizedBox(),
                  filledColor: const Color(0xFFABCCC5),
                ),
                verticalSpace(20),
                Text(
                  'Email',
                  style: AppTextStyles.interMediumSize16BlackColor,
                ),
                verticalSpace(5),
                AppTextFormFeild(
                  hintStyle:
                      AppTextStyles.interRegularSize14W500SecondaryTextColor,
                  style: AppTextStyles.interRegularSize14W500SecondaryTextColor,
                  hintText: 'samar@gmail.com',
                  prefixIcon: const SizedBox(),
                  filledColor: const Color(0xFFABCCC5),
                ),
                verticalSpace(20),
                Text(
                  'Password',
                  style: AppTextStyles.interMediumSize16BlackColor,
                ),
                verticalSpace(5),
                AppTextFormFeild(
                  hintStyle:
                      AppTextStyles.interRegularSize14W500SecondaryTextColor,
                  style: AppTextStyles.interRegularSize14W500SecondaryTextColor,
                  hintText: '************',
                  prefixIcon: const SizedBox(),
                  filledColor: const Color(0xFFABCCC5),
                ),
                verticalSpace(20),
                Text('Sex', style: AppTextStyles.interMediumSize16BlackColor),
                const MaleFemaleWidget(),
                verticalSpace(20),
                Center(
                  child: AppTextButton(
                    buttonWidth: 190.w,
                    backgroundColor: Colors.white,
                    buttonText: 'Save',
                    textStyle: AppTextStyles.rubikSize14mediemBlack.copyWith(
                        color: const Color(0xFF245960), fontSize: 18.sp),
                    onPressed: () {},
                  ),
                ),
                verticalSpace(10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
