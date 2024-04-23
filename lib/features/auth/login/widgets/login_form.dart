import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/routing/routing.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';
import 'package:tanagham/core/widgets/app_text_buttom.dart';
import 'package:tanagham/core/widgets/app_text_form_feild.dart';
import 'package:tanagham/features/home/home.dart';
import 'package:tanagham/features/main_screen/main_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 39.0,
      ),
      child: Column(
        children: [
          AppTextFormFeild(
            hintText: 'Email',
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/icons/sms.svg',
                height: 25,
                width: 25,
              ),
            ),
            suffixIcon: const Icon(
              Icons.check,
              color: Colors.green,
            ),
          ),
          verticalSpace(16),
          AppTextFormFeild(
            hintText: 'password',
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/icons/Password.svg',
                height: 25,
                width: 25,
              ),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/icons/eye-slash.svg',
                height: 25,
                width: 25,
              ),
            ),
          ),
          verticalSpace(8),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              'Forgot password?',
              style: AppTextStyles.interMediumSize14Colorlightgreen,
            ),
          ),
          verticalSpace(29),
          AppTextButton(
            backgroundColor: AppColors.secondaryTextColor,
            borderRadius: 30,
            buttonText: 'Login',
            textStyle: AppTextStyles.interBoldSize16WhiteColor,
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: Colors.white,
                    surfaceTintColor: Colors.transparent,
                    title: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/success.svg',
                          height: 70,
                          width: 70,
                        ),
                        SvgPicture.asset(
                          'assets/icons/success1.svg',
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                    content: SizedBox(
                      height: 250,
                      child: Column(
                        children: [
                          verticalSpace(40),
                          Text(
                            'Welcome back',
                            style: AppTextStyles.interBoldSize22SuccessColor,
                          ),
                          SizedBox(
                            width: 200,
                            child: Text(
                              'Your journey with Tanagham continues',
                              style: AppTextStyles.interMediumSize14Colornormal,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          verticalSpace(25),
                          AppTextButton(
                            backgroundColor: AppColors.successColor,
                            buttonWidth: 200,
                            borderRadius: 30,
                            buttonText: 'Go To Home',
                            textStyle: AppTextStyles.interBoldSize16WhiteColor,
                            onPressed: () {
                              push(const  MainScreen());
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
          verticalSpace(24),
          Text.rich(
            TextSpan(
              text: 'Don’t have an account? ',
              children: [
                TextSpan(
                  text: 'Sign up',
                  style: AppTextStyles.interBoldSize16SecondaryColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
