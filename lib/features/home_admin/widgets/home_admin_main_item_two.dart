import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/routing/routing.dart';
import 'package:tanagham/core/theming/app_color.dart';
import 'package:tanagham/features/admin_rehabitition_plans/admin_rehabition_plan_screen.dart';
import 'package:tanagham/features/users_screen/users_screen.dart';

import '../../../core/helpers/constants.dart';
import '../../../core/helpers/spacing.dart';
import 'container_of_main_item_two.dart';

class HomeAdminMainItemTwo extends StatelessWidget {
  const HomeAdminMainItemTwo({
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
            flex: 2,
            child: GestureDetector(
              onTap: () {
                push(const UsersScreen());
              },
              child: const ContainerOfMainItemTwo(
                title: 'Users',
                number: 10,
                image: Assets.usersAvatar,
              ),
            ),
          ),
          horisontalSpace(30),
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: () {
                push(const AdminRehabitionPlanScreen());
              },
              child: const ContainerOfMainItemTwo(
                title: 'Rehabilitation Plans',
                number: 2,
                image: Assets.rehabilitationPlan,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
