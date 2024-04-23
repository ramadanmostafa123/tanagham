import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/routing/routing.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';
import 'package:tanagham/core/widgets/app_text_buttom.dart';
import 'package:tanagham/core/widgets/app_text_form_feild.dart';
import 'package:tanagham/features/auth/login/login.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String? _gender;
  bool isAgree = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          AppTextFormFeild(
            hintText: 'Enter Your Name',
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/icons/user.svg',
                height: 25,
                width: 25,
              ),
            ),
          ),
          verticalSpace(16),
          AppTextFormFeild(
            hintText: 'Enter Your Email',
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/icons/sms.svg',
                height: 25,
                width: 25,
              ),
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
            alignment: Alignment.centerLeft,
            child: Text(
              'Gender ',
              style: AppTextStyles.interMediumSize16Colornormal,
            ),
          ),
          Row(
            children: <Widget>[
              Radio<String>(
                activeColor: AppColors.successColor,
                value: 'male',
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value;
                  });
                },
              ),
              Text(
                'Male',
                style: AppTextStyles.poppinsRegularSize14BlackColor,
              ),
              Radio<String>(
                activeColor: AppColors.successColor,
                value: 'female',
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value;
                  });
                },
              ),
              Text(
                'Female',
                style: AppTextStyles.poppinsRegularSize14BlackColor,
              ),
            ],
          ),
          verticalSpace(16),
          Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: AppColors.primaryBrandColor,
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isAgree = !isAgree;
                    });
                  },
                  child: Icon(
                    Icons.check,
                    color: isAgree ? Colors.white : AppColors.primaryBrandColor,
                  ),
                ),
              ),
              horisontalSpace(8),
              Expanded(
                child: SizedBox(
                 
                  child: Text.rich(
                    TextSpan(
                      text: 'I agree to the medidoc ',
                      children: [
                        TextSpan(
                          text: 'Terms of Service ',
                          style: AppTextStyles.interMediumSize14Colornormal,
                        ),
                        const TextSpan(
                          text: 'and ',
                          // style: AppTextStyles.interMediumSize14Colornormal,
                        ),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: AppTextStyles.interMediumSize14Colornormal,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          verticalSpace(40),
          AppTextButton(
            backgroundColor: AppColors.secondaryTextColor,
            borderRadius: 30,
            buttonText: 'Sign Up',
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
                      height: 280,
                      child: Column(
                        children: [
                          verticalSpace(20),
                          Text(
                            'Success',
                            style: AppTextStyles.interBoldSize22SuccessColor,
                          ),
                          SizedBox(
                            width: 200,
                            child: Text(
                              'New you can start your recovery journey  With tanaghum',
                              style: AppTextStyles.interMediumSize14Colornormal,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          verticalSpace(25),
                          Text(
                            "Tanaghum Team 🙌",
                            style: AppTextStyles.pascificoSize22primaryColor,
                          ),
                          verticalSpace(40),
                          AppTextButton(
                            backgroundColor: AppColors.successColor,
                            buttonWidth: 200,
                            borderRadius: 30,
                            buttonText: 'Login',
                            textStyle: AppTextStyles.interBoldSize16WhiteColor,
                            onPressed: () {
                              push(const Login());
                            },
                          ),
                          verticalSpace(5),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
