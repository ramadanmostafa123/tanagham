import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanagham/core/helpers/spacing.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Stack(
            children: [
              verticalSpace(50),
              Positioned(
                top: 20,
                child: SvgPicture.asset(
                  'assets/icons/c.svg',
                ),
              ),
              Positioned(
                top: 100,
                left: 50,
                child: SvgPicture.asset(
                  'assets/icons/c3.svg',
                ),
              ),
              Center(
                child: SvgPicture.asset(
                  'assets/icons/c2.svg',
                ),
              ),
              Center(
                child: Image.asset('assets/images/doctor2.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
