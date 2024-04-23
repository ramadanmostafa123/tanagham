import 'package:flutter/material.dart';
import 'dart:math' as math;


class OvalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double width = 320;
    double height = 80;

    canvas.save();
    canvas.translate(size.width / 2, size.height / 2);

    for (int i = 0; i < 5; i++) {
      double angle = i * 45.0;
      Paint paint = Paint()
        ..color = _getColor(i)
        ..style = PaintingStyle.fill;

      // Drawing the oval
      canvas.save();
      canvas.rotate(angle * math.pi / 180);
      canvas.drawOval(
          Rect.fromLTWH(-width / 2, -height / 2, width, height), paint);

      // Adding a black border
      Paint borderPaint = Paint()
        ..color = const Color(0xFF66DED4)
        ..style = PaintingStyle.stroke
        ..strokeWidth = .6;
      canvas.drawOval(
          Rect.fromLTWH(-width / 2, -height / 2, width, height), borderPaint);

      canvas.restore();
    }

    canvas.restore();
  }

  Color _getColor(int index) {
    switch (index) {
      case 0:
        return Colors.black.withOpacity(0);
      case 1:
        return Colors.black.withOpacity(0);
      case 2:
        return Colors.black.withOpacity(0);
      case 3:
        return Colors.black.withOpacity(0);
      case 4:
        return Colors.black.withOpacity(0);
      default:
        return Colors.black.withOpacity(0);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
