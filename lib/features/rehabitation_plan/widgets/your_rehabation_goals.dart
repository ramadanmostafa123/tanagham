import 'package:flutter/material.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';

class YourRehabationGoals extends StatelessWidget {
  const YourRehabationGoals({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 5,
              backgroundColor: AppColors.primaryBrandColor,
            ),
            horisontalSpace(10),
            Text(
              ' Your Rehabitation Goals: ',
              style: AppTextStyles.interRegularSize12SecondaryBrandColor,
            ),
          ],
        ),
        verticalSpace(15),
        Text(
          '1.Mobility Improvement: Increase range of motion and regain  independence in daily activities. ',
          style: AppTextStyles.crimsonSize12BlackColor,
        ),
        verticalSpace(15),
        Text(
          '2. Cognitive Enhancement: Enhance cognitive functions such as  memory, attention, and problem-solving. ',
          style: AppTextStyles.crimsonSize12BlackColor,
        ),
        verticalSpace(15),
        Text(
          '3. Strength Building: Rebuild muscle strength and overall physical  endurance',
          style: AppTextStyles.crimsonSize12BlackColor,
        ),
      ],
    );
  }
}
