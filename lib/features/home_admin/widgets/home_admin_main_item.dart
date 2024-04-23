import 'package:flutter/material.dart';
import '../../../core/helpers/constants.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theming/app_color.dart';
import '../../../core/theming/app_style.dart';

class HomeAdminMainItem extends StatelessWidget {
  const HomeAdminMainItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Appcolor.whiteColor,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0E1F35).withOpacity(.12),
            spreadRadius: 0,
            blurRadius: 7,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello 👋 \nSamar...',
                    style: Appstyle.styleBold14InterMainBrandColor,
                  ),
                  verticalSpace(7),
                  Text(
                    'Welcome, Your Eminence! We miss your special presence and look forward to your wonderful efforts in managing this application.',
                    style: Appstyle.styleRegular11Anonymous,
                  )
                ],
              ),
            ),
          ),
          Image.asset(Assets.doctorAvatar3)
        ],
      ),
    );
  }
}
