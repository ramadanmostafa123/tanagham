import 'package:flutter/material.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/widgets/custom_return_app_bar.dart';
import 'package:tanagham/core/widgets/custom_search_bar.dart';
import 'package:tanagham/features/services_screen/widgets/services_screen_list_view_items.dart';
import 'package:tanagham/features/services_screen/widgets/services_screen_main_list_view.dart';
import '../home/widgets/custom_background_circle_container.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: -380,
          top: 168,
          child: CustomBackgroundCircleContainer(
            color: const Color(0xFFABCCC5).withOpacity(.2),
            height: 400.h,
            width: 400.h,
            radius: 400.r,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: Column(
            children: [
              SizedBox(height: 50.h),
              const CustomReternAppBar(title: 'Services'),
              SizedBox(height: 25.h),
              const CustomSearchBar(),
              SizedBox(height: 19.h),
              const SrevicesScreenMainListView(),
              SizedBox(height: 30.h),
              const ServicesScreenListViewItems()
            ],
          ),
        ),
      ],
    );
  }
}
