import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';
import 'package:tanagham/core/widgets/app_text_buttom.dart';
import 'package:tanagham/core/widgets/custom_app_bar.dart';
import 'package:tanagham/features/add_new_user/widgets/add_new_user_form.dart';

class AddNewUser extends StatelessWidget {
  const AddNewUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(
            painter: CurvedBackground(),
            size: Size.infinite,
          ),
          Column(
            children: [
              verticalSpace(40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27.0),
                child: CustomAppBar(
                  title: 'Add New User',
                ),
              ),
              verticalSpace(30),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(27.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                    ),
                    child: const AddNewUserForm(),
                  ),
                ),
              ),
              verticalSpace(30),
              AppTextButton(
                buttonWidth: 108.w,
                backgroundColor: AppColors.successColor,
                buttonText: 'Add',
                textStyle: AppTextStyles.interBoldSize16WhiteColor,
                onPressed: () {},
              ),
              verticalSpace(10),
            ],
          ),
        ],
      ),
    );
  }
}

class CurvedBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = const LinearGradient(
        colors: [
          AppColors.secondaryBackgroundColor,

          AppColors.secondaryBackgroundColor,
          Color(0xff83B6B2),
          // AppColors.primaryBrandColor,
          AppColors.secondaryBackgroundColor,

          AppColors.secondaryBackgroundColor,

          AppColors.secondaryBackgroundColor,
          Color(0xff83B6B2),
          // AppColors.tetiaryBrandColor,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(Rect.fromLTWH(0, 0, size.width,
          size.height)); // Create a Shader from the LinearGradient

    final path = Path()
      ..addRect(Rect.fromLTWH(0, 0, size.width, size.height))
      ..quadraticBezierTo(size.width / 2, 0, size.width, size.height * 0.2);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
