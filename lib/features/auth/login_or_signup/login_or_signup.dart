import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/routing/routing.dart';
import 'package:tanagham/core/theming/text_styles.dart';
import 'package:tanagham/core/widgets/app_text_buttom.dart';
import 'package:tanagham/features/auth/login/login.dart';
import 'package:tanagham/features/auth/sign_up/sign_up.dart';

class LoginOrSignup extends StatelessWidget {
  const LoginOrSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 41.h,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SvgPicture.asset(
                    'assets/icons/Translate language.svg',
                  ),
                ),
                SizedBox(height: 40.h),
                //verticalSpace(92),
                Image.asset(
                  'assets/images/logo.png',
                  height: 129.h,
                  width: 107.w,
                ),
                Text(
                  'Tanagham',
                  style: AppTextStyles.pascificoSize22primaryColor,
                ),
                verticalSpace(37.5),
                Text(
                  'Let’s get started!',
                  style: AppTextStyles.interBoldSize22PrimaryColor,
                ),
                verticalSpace(22),
                const SizedBox(
                  width: 250,
                  child: Text(
                    'Harmonious Steps to Recovery  Tanagham Guides the Way',
                    textAlign: TextAlign.center,
                  ),
                ),
                verticalSpace(37.5),
                AppTextButton(
                  buttonWidth: 250,
                  borderRadius: 25,
                  buttonText: 'Login',
                  textStyle: AppTextStyles.interBoldSize16WhiteColor,
                  onPressed: () {
                    push(const Login());
                  },
                ),
                verticalSpace(16),
                SizedBox(
                  width: 250,
                  height: 45,
                  child: OutlinedButton(
                    onPressed: () {
                      push(const SignUp());
                    },
                    child: Text(
                      'Sign Up',
                      style: AppTextStyles.interBoldSize16SecondaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
