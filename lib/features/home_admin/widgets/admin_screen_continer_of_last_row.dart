import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanagham/core/theming/app_color.dart';
import 'package:tanagham/core/theming/app_style.dart';

class AdminScreenContainerOfLastRow extends StatelessWidget {
  const AdminScreenContainerOfLastRow({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
  });
  final String title, icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Appcolor.whiteColor,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0E1F35).withOpacity(.16),
            offset: const Offset(0, 4),
            blurRadius: 8,
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // ignore: deprecated_member_use
            SvgPicture.asset(
              icon,
              height: 50,
              width: 50,
              // ignore: deprecated_member_use
              color: color,
            ),
            Text(
              title,
              style: Appstyle.styleLight15Almarai,
            ),
          ],
        ),
      ),
    );
  }
}
