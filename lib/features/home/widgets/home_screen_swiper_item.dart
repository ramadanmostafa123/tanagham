import 'package:flutter/material.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/text_styles.dart';

class HomeScreenSwiperItem extends StatelessWidget {
  const HomeScreenSwiperItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(10.0.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello 👋 \nSamar... ',
                    style: AppTextStyles.boldSize14MainBrandColor,
                  ),
                  verticalSpace(7),
                  Text(
                    'Because memories are unforgettable, we offer you the service of adding memories!',
                    style: AppTextStyles.boldSize11SecondryColor,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ),
          Expanded(child: Image.asset('assets/images/header_item_image_home_screen.png')),
        ],
      ),
    );
  }
}
