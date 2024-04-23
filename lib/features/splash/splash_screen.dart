import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/features/on_boarding/on_boarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnBoarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.primaryBrandColor,
              Colors.white,
              AppColors.tetiaryBrandColor,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 200,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Tanagham',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondaryTextColor,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'pacifico',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
