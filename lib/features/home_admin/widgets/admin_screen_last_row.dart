import 'package:flutter/material.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/helpers/constants.dart';
import 'package:tanagham/core/routing/routing.dart';
import 'package:tanagham/core/theming/app_color.dart';
import 'package:tanagham/features/admin_supporting/admin_supporting_screen.dart';
import 'package:tanagham/features/auth/settings/settings.dart';
import 'package:tanagham/features/home_admin/widgets/admin_screen_continer_of_last_row.dart';

class AdminScreenLastRow extends StatelessWidget {
  const AdminScreenLastRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Appcolor.whiteColor,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0E1F35).withOpacity(.12),
            offset: const Offset(0, 3),
            blurRadius: 7,
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          Expanded(
              child: GestureDetector(
                  onTap: () {
                    push(const Settings());
                  },
                  child: const AdminScreenContainerOfLastRow(
                      title: 'Setting',
                      icon: Assets.settingIcon,
                      color: Colors.red))),
          Expanded(
              child: GestureDetector(
                  onTap: () {
                    push(const AdminSupportingScreen());
                  },
                  child: AdminScreenContainerOfLastRow(
                      title: 'Support',
                      icon: Assets.customerService,
                      color: Appcolor.splashColor.withOpacity(.6)))),
        ],
      ),
    );
  }
}
