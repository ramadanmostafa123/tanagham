import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(child: Image.asset('assets/images/doctor_bg.png')),
          Column(
            children: [
              Expanded(
                child: Center(
                  child: Image.asset(
                    'assets/images/doctor3.png',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
