import 'package:flutter/material.dart';
import 'package:tanagham/core/theming/app_color.dart';
import 'package:tanagham/core/theming/app_style.dart';

class ServicesScreenMainListViewItem extends StatelessWidget {
  const ServicesScreenMainListViewItem({
    super.key,
    required this.text,
    required this.isSelected,
  });
  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: isSelected ? Appcolor.successColor : Appcolor.secondryBrandColor.withOpacity(.19),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Text(
            text,
            style: isSelected ? Appstyle.styleMedium14White : Appstyle.styleLight14MainBrand,
          ),
        ),
      ),
    );
  }
}
