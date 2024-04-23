import 'package:flutter/material.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/widgets/custom_return_app_bar.dart';
import 'package:tanagham/core/widgets/custom_search_bar.dart';
import 'package:tanagham/features/admin_rehabitition_plans/widgets/admin_rehabition_paln_second_list.dart';
import 'package:tanagham/features/admin_rehabitition_plans/widgets/admin_rehabition_screen_main_list_view.dart';

class AdminRehabitionPlanScreen extends StatelessWidget {
  const AdminRehabitionPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            // SizedBox(height: 50),
            verticalSpace(50),
            const CustomReternAppBar(title: 'Rehabilitation Plans'),
            // SizedBox(height: 30),
            verticalSpace(30),
            const CustomSearchBar(),
            // SizedBox(height: 30),
            verticalSpace(30),
            const AdminRehabitionScreenMainListView(),
            // SizedBox(height: 30),
            verticalSpace(30),
            const Expanded(
              child: AdminRehabitionPlanScreenSecondList(),
            )
          ],
        ),
      ),
    );
  }
}
