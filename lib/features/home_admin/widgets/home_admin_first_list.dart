import 'package:flutter/material.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';

import '../../../core/theming/app_color.dart';
import 'home_admin_first_list_item.dart';

class HomeAdminFirstList extends StatelessWidget {
  const HomeAdminFirstList({
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
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.all(6.0),
          child: HomeAdminFirstListItem(),
        ),
        itemCount: 10,
      ),
    );
  }
}
