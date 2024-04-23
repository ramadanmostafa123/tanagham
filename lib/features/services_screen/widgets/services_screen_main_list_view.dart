import 'package:flutter/material.dart';
import 'package:tanagham/features/services_screen/widgets/services_screen_main_list_view_item.dart';

class SrevicesScreenMainListView extends StatefulWidget {
  const SrevicesScreenMainListView({
    super.key,
  });

  @override
  State<SrevicesScreenMainListView> createState() => _SrevicesScreenMainListViewState();
}

class _SrevicesScreenMainListViewState extends State<SrevicesScreenMainListView> {
  List<String> tabs = ['All', 'Memories', 'post-coma test', 'Repetition Plan'];
  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tabs.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedTab = index;
              });
            },
            child: ServicesScreenMainListViewItem(
              text: tabs[index],
              isSelected: selectedTab == index,
            ),
          );
        },
      ),
    );
  }
}
