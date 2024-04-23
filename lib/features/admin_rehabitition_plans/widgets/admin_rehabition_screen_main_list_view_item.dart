import 'package:flutter/material.dart';
import 'package:tanagham/core/theming/app_color.dart';
import 'package:tanagham/core/theming/app_style.dart';

class AdminRehabitionScreenMainListViewItem extends StatelessWidget {
  const AdminRehabitionScreenMainListViewItem({super.key, required this.text, required this.isSelected});
  final String text;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: isSelected ? Appcolor.mainBrandColor : Appcolor.whiteColor,
          border: Border.all(
            color: Appcolor.mainBrandColor.withOpacity(.15),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Text(
            text,
            style: isSelected ? Appstyle.styleLight15Almarai.copyWith(color: Appcolor.whiteColor) : Appstyle.styleLight15Almarai,
          ),
        ),
      ),
    );
  }
}
