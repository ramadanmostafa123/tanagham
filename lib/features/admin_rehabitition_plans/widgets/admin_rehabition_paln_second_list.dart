import 'package:flutter/widgets.dart';
import 'package:tanagham/features/admin_rehabitition_plans/widgets/admin_rehabition_plan_second_list_item.dart';

class AdminRehabitionPlanScreenSecondList extends StatelessWidget {
  const AdminRehabitionPlanScreenSecondList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 50,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: AdminRehabitionPlanSecondListItem(),
        );
      },
    );
  }
}
