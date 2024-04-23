import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/routing/routing.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';
import 'package:tanagham/core/widgets/custom_app_bar.dart';
import 'package:tanagham/features/admin_profile/widgets/admin_profile_form.dart';
import 'package:tanagham/features/edit_patient_profile/widgets/profile_form.dart';
import 'package:tanagham/features/support/support.dart';

class AdminProfile extends StatelessWidget {
  const AdminProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 0.h),
        child: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Column(
                children: [
                  verticalSpace(20),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 27.w, vertical: 20.h),
                    child: CustomAppBar(
                      title: 'Profile',
                      action: Image.asset(
                        'assets/images/Frame 8549.png',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  verticalSpace(120),
                  const AdminProfileForm(),
                ],
              ),

              /// profile image
              Positioned(
                top: 130.h,
                left: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.h),
                  child: Container(
                    width: 171.w,
                    height: 171.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white, // Border color
                        width: 1, // Border width
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(150),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 100.r,
                        backgroundImage: const AssetImage(
                          'assets/images/doctorprofile.png',
                             
                        ),
                      ),
                    ),
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
