import 'package:flutter/material.dart';
import 'package:tanagham/features/admin_rehabitition_plans/widgets/admin_rehabition_screen_main_list_view_item.dart';

class AdminRehabitionScreenMainListView extends StatefulWidget {
  const AdminRehabitionScreenMainListView({super.key});

  @override
  State<AdminRehabitionScreenMainListView> createState() => _AdminRehabitionScreenMainListViewItemState();
}

class _AdminRehabitionScreenMainListViewItemState extends State<AdminRehabitionScreenMainListView> {
  List<String> tabs = ['All', 'Approved', 'Not Approved', 'waiting'];
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
            child: AdminRehabitionScreenMainListViewItem(
              text: tabs[index],
              isSelected: selectedTab == index,
            ),
          );
        },
      ),
    );
  }
}
