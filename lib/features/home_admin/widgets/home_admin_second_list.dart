import 'package:flutter/material.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import '../../../core/theming/app_color.dart';
import 'home_admin_second_list_item.dart';

class HomeAdminSecondList extends StatelessWidget {
  const HomeAdminSecondList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      decoration: BoxDecoration(
        color: Appcolor.successColorLight.withOpacity(.2),
      ),
      child: ListView.builder(
        itemCount:10,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.all(6.0),
          child: HomeAdminSecondListItem(),
        ),
      ),
    );
  }
}
