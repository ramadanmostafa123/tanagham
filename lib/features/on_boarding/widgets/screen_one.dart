import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tanagham/core/helpers/spacing.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Stack(
            children: [
              Column(
                children: [
                  verticalSpace(10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SvgPicture.asset(
                      'assets/icons/heart.svg',
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        'assets/icons/dotted_heart.svg',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: SvgPicture.asset(
                        'assets/icons/heart2.svg',
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Image.asset('assets/images/doctor.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
