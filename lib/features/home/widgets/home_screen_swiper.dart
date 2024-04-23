import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';

import 'home_screen_swiper_item.dart';

class HomeScreenSwiper extends StatelessWidget {
  const HomeScreenSwiper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.h,
      child: Swiper(
        allowImplicitScrolling: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return const HomeScreenSwiperItem();
        },
        autoplayDelay: 3000,
        autoplay: true,
        loop: true,
        curve: Curves.ease,
        pagination: const SwiperPagination(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.all(0),
        ),
      ),
    );
  }
}
