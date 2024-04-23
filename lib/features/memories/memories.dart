import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/routing/routing.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';
import 'package:tanagham/core/widgets/app_text_form_feild.dart';
import 'package:tanagham/core/widgets/custom_app_bar.dart';
import 'package:tanagham/features/memories/add_memories/add_memories.dart';
import 'package:tanagham/features/memories/widgets/memories_list_view.dart';
import 'package:tanagham/features/memories/widgets/moments_list_view.dart';
import 'package:tanagham/features/memories/widgets/search_form.dart';

class Memories extends StatelessWidget {
  const Memories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(27.0),
          child: Column(
            children: [
              CustomAppBar(
                title: 'Memories',
              ),
              verticalSpace(48),
              const SearchForm(),
              verticalSpace(27),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Moments',
                  style: AppTextStyles.pascificoSize15primaryColor,
                ),
              ),
              verticalSpace(29),
              const MomentsListView(),
              verticalSpace(29),
              const MemoriesListView(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        onPressed: () {
          push(const AddMemory());
        },
        backgroundColor: AppColors.primaryBrandColor,
        child: SvgPicture.asset('assets/icons/addVector.svg'),
      ),
    );
  }
}
