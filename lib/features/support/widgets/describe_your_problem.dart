import 'package:flutter/material.dart';
import 'package:tanagham/core/widgets/app_text_form_feild.dart';

class DescribeYourProblem extends StatelessWidget {
  const DescribeYourProblem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 8,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: const AppTextFormFeild(
        filledColor: Colors.white,
        maxLines: 8,
        hintText: 'Please enter Your Problem details!',
        prefixIcon: SizedBox(),
      ),
    );
  }
}
