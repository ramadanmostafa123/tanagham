import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/helpers/constants.dart';
import 'package:tanagham/core/theming/app_color.dart';
import 'package:tanagham/core/theming/app_style.dart';

class NavItem extends StatelessWidget {
  const NavItem({Key? key, required this.icon, required this.title, required this.isSelected, this.onTap}) : super(key: key);
  final String icon;
  final String title;
  final bool isSelected;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: isSelected
            ? Column(
                children: [
                  Expanded(
                    child: SvgPicture.asset(
                      icon,
                      // ignore: deprecated_member_use
                      color: isSelected ? Appcolor.secondaryColorTextLight : null,
                    ),
                  ),
                  Text(
                    title,
                    style: Appstyle.styleMedium16SecondaryColorTextLight,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Expanded(child: SvgPicture.asset(Assets.nav)),
                  SizedBox(height: 5.h),
                ],
              )
            : Column(
                children: [
                  Expanded(child: SvgPicture.asset(icon)),
                  Text(
                    title,
                    style: Appstyle.styleMedium20subTitleColor,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const Expanded(child: SizedBox()),
                ],
              ),
      ),
    );
  }
}
