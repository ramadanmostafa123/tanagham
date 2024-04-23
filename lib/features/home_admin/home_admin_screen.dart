import 'package:flutter/material.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/theming/app_color.dart';
import 'package:tanagham/core/theming/app_style.dart';
import 'package:tanagham/features/home/widgets/custom_background_circle_container.dart';
import 'package:tanagham/features/home_admin/widgets/admin_screen_last_row.dart';
import 'package:tanagham/features/home_admin/widgets/home_admin_app_bar.dart';
import 'package:tanagham/features/home_admin/widgets/home_admin_first_list.dart';
import 'package:tanagham/features/home_admin/widgets/home_admin_main_item.dart';
import 'package:tanagham/features/home_admin/widgets/home_admin_second_list.dart';

import 'widgets/home_admin_main_item_two.dart';

class HomeAdminScreen extends StatelessWidget {
  const HomeAdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -62.h,
            left: -528.w,
            child: CustomBackgroundCircleContainer(
              color: Appcolor.splashColor.withOpacity(.1),
              height: 778.h,
              width: 778.h,
              radius: 778.r,
            ),
          ),
          Positioned(
            bottom: -90.h,
            right: -110.w,
            child: CustomBackgroundCircleContainer(
              color: Appcolor.mainColorTextLight.withOpacity(.1),
              height: 267.h,
              width: 267.h,
              radius: 267.r,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Column(
              children: [
                //const SizedBox(height: 60),
                verticalSpace(60),
                const HomeAdminAppBar(),
                // const SizedBox(height: 20),
                verticalSpace(20),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HomeAdminMainItem(),
                        //  const SizedBox(height: 16),
                        verticalSpace(16),
                        Text('Dashboard', style: Appstyle.styleRegular17PacificoMainColorTextLight),
                        //const SizedBox(height: 16),
                        verticalSpace(16),
                        const HomeAdminMainItemTwo(),
                        // const SizedBox(height: 16),
                        verticalSpace(16),
                        Row(
                          children: [
                            Text('New Users', style: Appstyle.styleRegular17PacificoMainColorTextLight.copyWith(color: Appcolor.blackColor)),
                            const Spacer(),
                            Text('See all', style: Appstyle.styleLight15Almarai),
                          ],
                        ),
                        //const SizedBox(height: 16),
                        verticalSpace(16),
                        const HomeAdminFirstList(),
                        // const SizedBox(height: 16),
                        verticalSpace(16),
                        Row(
                          children: [
                            Text('Waiting Zone', style: Appstyle.styleRegular17PacificoMainColorTextLight.copyWith(color: Appcolor.blackColor)),
                            const Spacer(),
                            Text('See all', style: Appstyle.styleLight15Almarai),
                          ],
                        ),
                        //   const SizedBox(height: 16),
                        verticalSpace(16),
                        const HomeAdminSecondList(),
                        // const SizedBox(height: 50),
                        verticalSpace(50),
                        const AdminScreenLastRow()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
