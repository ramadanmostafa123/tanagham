import 'package:flutter/material.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';

class Bac extends StatelessWidget {
  const Bac({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            right: -46,
            top: 0,
            child: Container(
              height: 67.h,
              width: 67.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(400),
                color: const Color(0xFFFFFFFF).withOpacity(.08),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
