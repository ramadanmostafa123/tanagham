import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tanagham/core/routing/routing.dart';
import 'package:tanagham/core/theming/app_style.dart';
import 'package:tanagham/features/admin_profile/admin_profile.dart';

import '../../../core/helpers/constants.dart';
import '../../../core/theming/app_color.dart';

class HomeAdminAppBar extends StatelessWidget {
  const HomeAdminAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Tanagham',
          style: Appstyle.styleRegular22Pacifico,
        ),
        const Spacer(),
        SvgPicture.asset(Assets.notification),
        GestureDetector(
          onTap: () {
            push(const AdminProfile());
          },
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Appcolor.mainBrandColor.withOpacity(.5),
            backgroundImage: const AssetImage(Assets.doctorAvatar,),
            
          ),
        ),
      ],
    );
  }
}
