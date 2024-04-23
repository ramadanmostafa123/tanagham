import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/helpers/constants.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/theming/app_color.dart';
import 'package:tanagham/core/theming/app_style.dart';
import 'package:tanagham/features/home_admin/widgets/custom_icon_container.dart';

class AdminSupportingSecondListItem extends StatelessWidget {
  const AdminSupportingSecondListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(color: Appcolor.whiteColor, borderRadius: BorderRadius.circular(5), boxShadow: [
        BoxShadow(color: const Color(0xff18274B).withOpacity(.12), spreadRadius: 0, blurRadius: 7, offset: const Offset(0, 3)),
      ]),
      child: Row(
        children: [
          Container(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Appcolor.whiteColor,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff18274B).withOpacity(.12),
                    spreadRadius: 0,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: SvgPicture.asset(Assets.chatSupport)),
          const Spacer(),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Text(
                  'Mansour Al-Balawi',
                  style: Appstyle.styleLight15Almarai.copyWith(color: const Color(0xFF57616C), fontSize: 12.sp),
                  maxLines: 1,
                ),
                Text(
                  'mansour@gmail.com',
                  style: Appstyle.styleLight15Almarai.copyWith(color: const Color(0xFF57616C), fontSize: 8.sp),
                  maxLines: 1,
                ),
              ],
            ),
          ),
          const Spacer(),
          const CustomIconContainer(icon: Assets.doneIcon),
          //const SizedBox(width: 10),
          horisontalSpace(10),
          const CustomIconContainer(icon: Assets.errorIcon),
          //const SizedBox(width: 10),
          horisontalSpace(10),
          const CustomIconContainer(icon: Assets.eyeIcon),
          // const SizedBox(width: 20),
          horisontalSpace(20),
          Container(
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: Appcolor.whiteColor,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff18274B).withOpacity(.12),
                  spreadRadius: 0,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: SvgPicture.asset(Assets.btnReply),
          ),
        ],
      ),
    );
  }
}
