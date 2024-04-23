import 'package:flutter/material.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';
import 'package:tanagham/core/widgets/app_text_buttom.dart';
import 'package:tanagham/core/widgets/app_text_form_feild.dart';
import 'package:tanagham/core/widgets/custom_app_bar.dart';
import 'package:tanagham/features/memories/add_memories/widgets/date.dart';

class AddMemory extends StatelessWidget {
  const AddMemory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(27.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(10),
                CustomAppBar(
                  title: 'Add Memory',
                ),
                verticalSpace(48),
                Text(
                  'Memory Title',
                  style: AppTextStyles.rubikSize14mediemBlack,
                ),
                verticalSpace(10),
                const AppTextFormFeild(
                  hintText: 'Name of Memory',
                  prefixIcon: SizedBox(),
                ),
                verticalSpace(29),
                Text('Memory Date',
                    style: AppTextStyles.rubikSize14mediemBlack),
                verticalSpace(10),
                DateWidget(),
                verticalSpace(28),
                Text('Adder Name', style: AppTextStyles.rubikSize14mediemBlack),
                verticalSpace(9),
                const AppTextFormFeild(
                  hintText: 'Sam Alison',
                  prefixIcon: SizedBox(),
                ),
                verticalSpace(29),
                Text('Details', style: AppTextStyles.rubikSize14mediemBlack),
                const AppTextFormFeild(
                  maxLines: 5,
                  hintText:
                      'Your presence on this special day would mean the world to us as we begin this new chapter in our lives..',
                  prefixIcon: SizedBox(),
                ),
                verticalSpace(29),
                Text('Add Video', style: AppTextStyles.rubikSize14mediemBlack),
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset('assets/images/Add video.png'),
                ),
                verticalSpace(10),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27.0, vertical: 9.0),
        child: AppTextButton(
            backgroundColor: AppColors.successColor,
            buttonText: 'Save',
            textStyle: AppTextStyles.interBoldSize16WhiteColor,
            onPressed: () {}),
      ),
    );
  }
}
