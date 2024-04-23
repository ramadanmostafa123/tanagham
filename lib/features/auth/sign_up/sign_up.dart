import 'package:flutter/material.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/widgets/custom_app_bar.dart';
import 'package:tanagham/features/auth/sign_up/widgets/sign_up_form.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpace(39),
              CustomAppBar(
                title: 'Sign Up',
                action: const SizedBox(),
              ),
              verticalSpace(65),
              const SignUpForm(),
            ],
          ),
        ),
      ),
    ));
  }
}
