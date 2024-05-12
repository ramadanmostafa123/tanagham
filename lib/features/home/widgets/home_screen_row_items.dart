import 'package:flutter/material.dart';
import 'package:tanagham/core/routing/routing.dart';
import 'package:tanagham/features/memories/memories.dart';
import 'package:tanagham/features/post_coma_test/post_coma_test.dart';
import 'package:tanagham/features/rehabitation_plan/rehabitation_plan.dart';

import '../../../core/helpers/constants.dart';
import 'home_screen_item.dart';

class HomeScreenRowItems extends StatelessWidget {
  const HomeScreenRowItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            push(const Memories());
          },
          child: const HomeScreenCustomItem(icon: Assets.memoryIcon, colors: [
            Color(0xFF0A3F47),
            Color.fromRGBO(50, 120, 130, 1),
          ]),
        ),
        GestureDetector(
          onTap: () {
            push(const PostComaTest());
          },
          child: const HomeScreenCustomItem(icon: Assets.noteIcon, colors: [
            Color(0xFF83B6B2),
            Color(0xFFB7D2D0),
          ]),
        ),
        GestureDetector(
          onTap: () {
            push(const RehabitationPlan());
          },
          child: const HomeScreenCustomItem(icon: Assets.planeIcon, colors: [
            Color(0xFFD6AD6C),
            Color(0xFFF5D789),
          ]),
        ),
      ],
    );
  }
}
