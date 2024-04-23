import 'package:flutter/material.dart';
import 'package:tanagham/core/helpers/spacing.dart';

import '../../../core/helpers/constants.dart';
import '../../../core/theming/app_color.dart';
import '../../../core/theming/app_style.dart';
import 'custom_icon_container.dart';

class HomeAdminSecondListItem extends StatelessWidget {
  const HomeAdminSecondListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Appcolor.whiteColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Image.asset(Assets.rehabilitationPlan, height: 40, width: 40),
          //const SizedBox(width: 10),
          horisontalSpace(10),
          Expanded(
            flex: 5,
            child: Text(
              'Rehabilitation  plan for Ahmad....                         ',
              style: Appstyle.styleLight15Almarai.copyWith(color: Appcolor.blackColor),
              maxLines: 1,
            ),
          ),
          const CustomIconContainer(icon: Assets.doneIcon),
          //   const SizedBox(width: 10),
          horisontalSpace(10),
          const CustomIconContainer(icon: Assets.penIcon, color: Appcolor.subTitleColor),
          //   const SizedBox(width: 10),
          horisontalSpace(10),
          const CustomIconContainer(icon: Assets.eyeIcon, color: Color(0xFFBF8931)),
          // const SizedBox(width: 10),
          horisontalSpace(10),
        ],
      ),
    );
  }
}
