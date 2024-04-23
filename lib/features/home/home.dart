import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/helpers/constants.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/theming/text_styles.dart';
import 'package:tanagham/features/home/widgets/custom_background_circle_container.dart';
import 'package:tanagham/features/home/widgets/home_screen_app_bar.dart';
import 'package:tanagham/features/home/widgets/home_screen_row_items.dart';
import 'package:tanagham/features/home/widgets/home_screen_swiper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Positioned(
            left: -200,
            top: -41,
            child: CustomBackgroundCircleContainer(
              color: const Color(0xFFABCCC5).withOpacity(.2),
              height: 400.h,
              width: 400.h,
              radius: 400.r,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                //const SizedBox(height: 50),
                verticalSpace(50),
                const HomeScreenAppBar(),
                //  const SizedBox(height: 20),
                verticalSpace(20),
                const HomeScreenSwiper(),
                // const SizedBox(height: 38),
                verticalSpace(38),
                const HomeScreenRowItems(),
                // const SizedBox(height: 20),
                verticalSpace(20),
                const Divider(
                  indent: 40,
                  endIndent: 40,
                ),
                SvgPicture.asset(Assets.mainScreen),
                Text(
                  'Are you having difficulties using Tanaghum? Don\'t worry, we are here to help!',
                  style: AppTextStyles.boldSize14MainBrandColor,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
