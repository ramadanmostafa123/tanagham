import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/helpers/constants.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/routing/routing.dart';
import 'package:tanagham/core/theming/app_color.dart';
import 'package:tanagham/core/theming/app_style.dart';
import 'package:tanagham/features/home_admin/widgets/custom_icon_container.dart';
import 'package:tanagham/features/rehabitation_plan/rehabitation_plan.dart';

class AdminRehabitionPlanSecondListItem extends StatelessWidget {
  const AdminRehabitionPlanSecondListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Appcolor.whiteColor,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: const Color(0xff18274B).withOpacity(.12),
                spreadRadius: 0,
                blurRadius: 7,
                offset: const Offset(0, 3)),
          ]),
      child: Row(
        children: [
          Image.asset(Assets.rehabilitationPlan, height: 40, width: 40),
          const Spacer(),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Text(
                  'Mansour Al-Balawi',
                  style: Appstyle.styleLight15Almarai.copyWith(
                      color: const Color(0xFF57616C), fontSize: 12.sp),
                  maxLines: 1,
                ),
                Text(
                  'mansour@gmail.com',
                  style: Appstyle.styleLight15Almarai
                      .copyWith(color: const Color(0xFF57616C), fontSize: 8.sp),
                  maxLines: 1,
                ),
              ],
            ),
          ),
          const Spacer(),
          const CustomIconContainer(icon: Assets.doneIcon),
          horisontalSpace(10),
          // const SizedBox(width: 10),
          const CustomIconContainer(icon: Assets.errorIcon),
          horisontalSpace(10),

          //const SizedBox(width: 10),
          InkWell(
              onTap: () {
                push(const RehabitationPlan());
              },
              child: const CustomIconContainer(icon: Assets.eyeIcon)),
          horisontalSpace(10),

          //const SizedBox(width: 10),
        ],
      ),
    );
  }
}
