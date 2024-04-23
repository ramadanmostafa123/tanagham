import 'package:flutter/material.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/widgets/custom_return_app_bar.dart';
import 'package:tanagham/core/widgets/custom_search_bar.dart';
import 'package:tanagham/features/admin_supporting/widgets/admin_supporting_first_list.dart';
import 'package:tanagham/features/admin_supporting/widgets/admin_supporting_second_list_item.dart';

class AdminSupportingScreen extends StatelessWidget {
  const AdminSupportingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            // const SizedBox(height: 50),
            verticalSpace(50),
            const CustomReternAppBar(title: 'Supporting'),
            // const SizedBox(height: 30),
            verticalSpace(30),
            const CustomSearchBar(),
            // const SizedBox(height: 30),
            verticalSpace(30),
            const AdminSupportingFirstList(),
            // const SizedBox(height: 30),
            verticalSpace(30),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 50,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: AdminSupportingSecondListItem(),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
