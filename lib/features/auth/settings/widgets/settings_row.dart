

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/theming/text_styles.dart';

class SettingsRow extends StatelessWidget {
  const   SettingsRow({super.key, required this.icon, required this.title, this.trailing});
final String icon ;
  final String title;
final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return  Row(
                  children: [
                    SvgPicture.asset(
                      icon,
                      height: 32,
                      width: 32,
                    ),
                    horisontalSpace(20),
                    Text(
                      title,
                      style: AppTextStyles.rubiklightSize16mediemSize18,
                    ),
                    const Spacer(),
                    trailing ??
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Color(0xFF677294),
                    ),
                  ],
                )
            ;
  }
}