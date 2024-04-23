import 'package:flutter/widgets.dart';
import 'package:tanagham/features/admin_rehabitition_plans/widgets/admin_rehabition_screen_main_list_view_item.dart';

class AdminSupportingFirstList extends StatefulWidget {
  const AdminSupportingFirstList({
    super.key,
  });

  @override
  State<AdminSupportingFirstList> createState() => _AdminSupportingFirstListState();
}

class _AdminSupportingFirstListState extends State<AdminSupportingFirstList> {
  List<String> tabs = ['All', 'waiting'];
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
