
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theming/app_color.dart';

class CustomIconContainer extends StatelessWidget {
  const CustomIconContainer({
    super.key,
    required this.icon, this.color,
  });
  final String icon;
  final Color? color ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Appcolor.whiteColor, boxShadow: [
        BoxShadow(
          color: const Color(0xFF0E1F35).withOpacity(.12),
          spreadRadius: 0,
          blurRadius: 4,
          offset: const Offset(0, 2),
        ),
      ]),
      // ignore: deprecated_member_use
      child: SvgPicture.asset(icon,color: color,),
    );
  }
}
