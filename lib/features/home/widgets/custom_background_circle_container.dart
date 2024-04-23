import 'package:flutter/material.dart';

class CustomBackgroundCircleContainer extends StatelessWidget {
  const CustomBackgroundCircleContainer({
    super.key, required this.color, required this.height, required this.width, required this.radius,
  });
  final Color color;
  final double height, width, radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,
      ),
    );
  }
}
