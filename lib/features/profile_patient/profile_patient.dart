import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/routing/routing.dart';
import 'package:tanagham/core/theming/text_styles.dart';
import 'package:tanagham/core/widgets/custom_app_bar.dart';
import 'package:tanagham/features/auth/settings/settings.dart';
import 'package:tanagham/features/edit_patient_profile/edit_profile.dart';
import 'package:tanagham/features/profile_patient/background.dart';
import 'package:tanagham/features/support/support.dart';

import '../../core/theming/colors.dart';

class ProfilePatient extends StatelessWidget {
  const ProfilePatient({super.key});

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
                    titleColor: Colors.white,
                    title: 'Profile',
                  ),
                ),
                verticalSpace(50),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Samar Al-Qahtani',
                    style: AppTextStyles.crimsonSize12BlackColor.copyWith(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  'patient',
                  style: AppTextStyles.crimsonSize12BlackColor.copyWith(
                    color: Colors.white,
                  ),
                ),
                InkWell(
                    onTap: () {
                      push(const EditProfile());
                    },
                    child: SvgPicture.asset('assets/icons/edit_profile.svg')),
                verticalSpace(20),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
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
                        child: Column(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  push(const Settings());
                                },
                                child: buildThisScreenCustomRow(
                                    'assets/icons/settings_group.svg',
                                    'Settings'),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  push(const Support());
                                },
                                child: buildThisScreenCustomRow(
                                    'assets/icons/support.svg', 'Support'),
                              ),
                            ),
                            Expanded(
                              child: buildThisScreenCustomRow(
                                  'assets/icons/logout.svg', 'Logout'),
                            ),
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
            style: AppTextStyles.interMediumSize14Color,
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
