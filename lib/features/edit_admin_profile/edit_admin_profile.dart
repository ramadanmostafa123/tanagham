import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/widgets/custom_app_bar.dart';
import 'package:tanagham/features/edit_admin_profile/widgets/admin_profile_form.dart';

class EditAdminProfile extends StatelessWidget {
  const EditAdminProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  verticalSpace(20),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 27.w, vertical: 20.h),
                    child: CustomAppBar(
                      title: 'Edit Profile',
                      action: SvgPicture.asset(
                        'assets/icons/edit_admin_profile.svg',
                        //   color: Colors.black,
                      ),
                    ),
                  ),
                  verticalSpace(120),
                  const EditAdminProfileForm(),
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
              Positioned(
                top: 270.h,
                right: 130.w,
                child: SvgPicture.asset(
                  'assets/icons/solar_camera-minimalistic-bold.svg',
                 // colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                ),
              ),
            ],
          ),
        ));
  }
}
