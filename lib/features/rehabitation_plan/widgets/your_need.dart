import 'package:flutter/material.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';

class YourNeed extends StatelessWidget {
  const YourNeed(
      {super.key,
      required this.title,
      required this.subtitle,
      this.children1Text,
      this.children2Text});

  final String title;
  final String subtitle;
  final String? children1Text;
  final String? children2Text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 8,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: ExpansionTile(
          expandedAlignment: Alignment.topLeft,
          collapsedIconColor: Colors.white,
          childrenPadding: const EdgeInsets.all(10.0),
          iconColor: Colors.white,
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          title: Text(
            title,
            style: AppTextStyles.interRegularSize14SecondaryBrandColorbold,
          ),
          subtitle: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 3,
                  backgroundColor: AppColors.primaryBrandColor,
                ),
                horisontalSpace(10),
                Expanded(
                  child: Text(
                    subtitle,
                    style: AppTextStyles.interRegularSize12SecondaryBrandColor,
                  ),
                ),
              ],
            ),
          ),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 3,
                    backgroundColor: AppColors.primaryBrandColor,
                  ),
                  horisontalSpace(10),
                  Expanded(
                    child: Text(
                      children1Text ?? '',
                      style:
                          AppTextStyles.interRegularSize12SecondaryBrandColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 3,
                    backgroundColor: AppColors.primaryBrandColor,
                  ),
                  horisontalSpace(10),
                  Expanded(
                    child: Text(
                      children2Text ?? '',
                      style:
                          AppTextStyles.interRegularSize12SecondaryBrandColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
