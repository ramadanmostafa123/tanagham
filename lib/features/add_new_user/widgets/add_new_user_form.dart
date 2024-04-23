import 'package:flutter/material.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/theming/text_styles.dart';
import 'package:tanagham/core/widgets/app_text_form_feild.dart';
import 'package:tanagham/features/edit_patient_profile/widgets/male_female.dart';

class AddNewUserForm extends StatelessWidget {
  const AddNewUserForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(20),
            Text(
              'Patient’s Name',
              style: AppTextStyles.rubikSize14mediemBlack,
            ),
            verticalSpace(5),
            AppTextFormFeild(
              filledColor: Colors.white,
              hintStyle: AppTextStyles.rubiklightSize14mediemSize12,
              hintText: 'Sara Mamun',
              prefixIcon: const SizedBox(),
            ),
            verticalSpace(25),
            Text(
              'Email',
              style: AppTextStyles.rubikSize14mediemBlack,
            ),
            verticalSpace(5),
            AppTextFormFeild(
              filledColor: Colors.white,
              hintStyle: AppTextStyles.rubiklightSize14mediemSize12,
              hintText: 'sara1010@gmail.com',
              prefixIcon: const SizedBox(),
            ),
            verticalSpace(25),
            Text(
              'Password',
              style: AppTextStyles.rubikSize14mediemBlack,
            ),
            verticalSpace(5),
            AppTextFormFeild(
              filledColor: Colors.white,
              hintStyle: AppTextStyles.rubiklightSize14mediemSize12,
              hintText: '**********',
              prefixIcon: const SizedBox(),
            ),
            verticalSpace(25),
            Text('Gender', style: AppTextStyles.rubikSize14mediemBlack),
            const MaleFemaleWidget(),
            verticalSpace(25),
            Text('Type Rule', style: AppTextStyles.rubikSize14mediemBlack),
            const MaleFemaleWidget(
              text1: 'patient',
              text2: 'admin',
            ),
          ],
        ),
      ),
    );
  }
}
