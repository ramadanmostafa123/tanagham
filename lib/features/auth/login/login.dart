import 'package:flutter/material.dart';
import 'package:tanagham/core/helpers/spacing.dart';

import 'package:tanagham/core/widgets/custom_app_bar.dart';
import 'package:tanagham/features/auth/login/widgets/divider.dart';
import 'package:tanagham/features/auth/login/widgets/login_form.dart';
import 'package:tanagham/features/auth/login/widgets/social_login_buttons.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpace(20),
              CustomAppBar(
                title: 'Login',
                action: const SizedBox(),
              ),
              verticalSpace(28),
              const LoginForm(),
              verticalSpace(29),
              const AppDivider(),
              verticalSpace(19),
              const SocialLoginButtons(),
            ],
          ),
        ),
      )),
    );
  }
}
