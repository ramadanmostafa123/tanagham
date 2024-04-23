import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/theming/text_styles.dart';

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 39),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 45,
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/Google.svg'),
              label: Text(
                'Sign in with Google',
                style: AppTextStyles.interSemiboldSize16blackColor,
              ),
            ),
          ),
          verticalSpace(14),
          SizedBox(
            width: double.infinity,
            height: 45,
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/Facebook.svg'),
              label: Text(
                'Sign in with Facebook',
                style: AppTextStyles.interSemiboldSize16blackColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
