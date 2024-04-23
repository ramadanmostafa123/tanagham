import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tanagham/core/helpers/constants.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/routing/routing.dart';
import 'package:tanagham/core/widgets/custom_return_app_bar.dart';
import 'package:tanagham/core/widgets/custom_search_bar.dart';
import 'package:tanagham/features/add_new_user/add_new_user.dart';
import 'package:tanagham/features/users_screen/widgets/row_of_users_screen.dart';
import 'package:tanagham/features/users_screen/widgets/users_screen_list_item.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
          onTap: () {
            push(const AddNewUser());
          },
          child: SvgPicture.asset(Assets.addMemoriesIcon)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            //const SizedBox(height: 50),
            verticalSpace(50),
            const CustomReternAppBar(title: 'Users'),
            // const SizedBox(height: 25),
            verticalSpace(25),
            const CustomSearchBar(),
            //const SizedBox(height: 10),
            verticalSpace(10),
            const RowOfUsersScreen(),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: UsersScreenListItem(),
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
