import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/routing/routing.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';
import 'package:tanagham/core/widgets/app_text_buttom.dart';
import 'package:tanagham/core/widgets/app_text_form_feild.dart';
import 'package:tanagham/features/edit_admin_profile/edit_admin_profile.dart';
import 'package:tanagham/features/edit_patient_profile/widgets/male_female.dart';

class AdminProfileForm extends StatelessWidget {
  const AdminProfileForm({super.key});

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
                verticalSpace(80),
                Center(
                  child: Text(
                    'Sara Al-Dosari',
                    style: AppTextStyles.interMediumSize16BlackColor,
                  ),
                ),
                verticalSpace(5),
                Center(
                    child: Text('Admin',
                        style: AppTextStyles.interRegularSize14W500)),
                verticalSpace(18),
                Row(
                  children: [
                    buildAdminProfileContainer('50', 'Users'),
                    horisontalSpace(15),
                    buildAdminProfileContainer('25', 'Post-Coma Test'),
                  ],
                ),
                verticalSpace(15),
                Row(
                  children: [
                    buildAdminProfileContainer('25', 'Rehabilitation Plans'),
                    horisontalSpace(15),
                    buildAdminProfileContainer('10', 'Supporting'),
                  ],
                ),
                verticalSpace(40),
                Row(
                  children: [
                    Container(
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.errorColor,
                        ),
                        height: 45.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/icons/Logout2.svg'),
                            horisontalSpace(5),
                            Text(
                              'Log out',
                              style: AppTextStyles.rubiklightSize16mediemSize18
                                  .copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: horisontalSpace(40)),
                    AppTextButton(
                        backgroundColor: Colors.white,
                        borderRadius: 5,
                        buttonHeight: 45.h,
                        buttonWidth: 100.w,
                        buttonText: 'Edit Profile',
                        textStyle: AppTextStyles.robotoLightSize15mediem,
                        onPressed: () {
                          push(const EditAdminProfile());
                        })
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildAdminProfileContainer(
  String num,
  String title,
) {
  return Expanded(
    child: Container(
      height: 135.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            num,
            style: AppTextStyles.robotoLightSize15mediem.copyWith(
              fontSize: 58.sp,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Text(
                title,
                style: AppTextStyles.robotoLightSize15mediem.copyWith(
                  fontSize: 18.sp,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    ),
  );
}
