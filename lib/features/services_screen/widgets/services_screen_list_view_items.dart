import 'package:flutter/material.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/features/services_screen/models/list_view_item_model.dart';
import 'package:tanagham/features/services_screen/widgets/services_screen_list_item.dart';

import '../../../core/helpers/constants.dart';

class ServicesScreenListViewItems extends StatelessWidget {
  const ServicesScreenListViewItems({
    super.key,
  });
  static List<ServisesScreenListItemModel> items = [
    ServisesScreenListItemModel(
      title: 'The Memories',
      subTitle: 'Because memories are unforgettable, we offer you the service of adding memories!',
      image: Assets.memoryPhoto,
    ),
    ServisesScreenListItemModel(
      title: 'Post - Coma Tests',
      subTitle: 'Post-Coma tests can help detect any complications that may occur after surgery or anesthesia.',
      image: Assets.postComaTestPhoto,
    ),
    ServisesScreenListItemModel(
      title: 'Repetition Plan',
      subTitle: 'A customized plan that fits your unique needs, a comprehensive evaluation of your condition by a team of experts.',
      image: Assets.repetitionPalnPhoto,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 25.h),
            child: ServicesScreenListItem(
              model: items[index],
            ),
          );
        },
      ),
    );
  }
}
