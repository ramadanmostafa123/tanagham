import 'package:flutter/material.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/helpers/constants.dart';
import 'package:tanagham/core/theming/app_color.dart';
import 'package:tanagham/core/theming/app_style.dart';
import 'package:tanagham/features/home_admin/widgets/custom_icon_container.dart';

class UsersScreenListItem extends StatelessWidget {
  const UsersScreenListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Appcolor.whiteColor,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Row(
        children: [
          Image.asset(Assets.userAvatar),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              'Alia Salah Al-Dosari',
              style: Appstyle.styleLight15Almarai.copyWith(color: Appcolor.blackColor),
              maxLines: 1,
            ),
          ),
          const CustomIconContainer(icon: Assets.penIcon),
          SizedBox(width: 10.w),
          const CustomIconContainer(icon: Assets.deletIcon),
          SizedBox(width: 10.w),
          const CustomIconContainer(icon: Assets.eyeIcon),
          SizedBox(width: 10.w),
        ],
      ),
    );
  }
}
