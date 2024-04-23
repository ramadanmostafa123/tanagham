import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreenCustomItem extends StatelessWidget {
  const HomeScreenCustomItem({
    super.key,
    required this.icon, required this.colors,
  });
  final String icon;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            colors[0],
            colors[1],
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: -30,
            child: Container(
              height: 67,
              width: 67,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(400),
                color: const Color(0xFFFFFFFF).withOpacity(.08),
              ),
            ),
          ),
          Positioned(
            bottom: -35,
            right: 0,
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(400),
                color: const Color(0xFFFFFFFF).withOpacity(.08),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Center(child: SvgPicture.asset(icon)),
          ),
        ],
      ),
    );
  }
}
