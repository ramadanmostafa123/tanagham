import 'package:flutter/material.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/theming/colors.dart';

class MomentsListView extends StatelessWidget {
  const MomentsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 4.h),
                  child:
                   Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.successColor, // Border color
                        width: 3, // Border width
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(150),
                      child: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          AppColors.successColor.withOpacity(0.1),
                          BlendMode.srcOver,
                        ),
                        child: const CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 25,
                          backgroundImage: AssetImage(
                            'assets/images/mm.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Text('2022'),
              ],
            );
          }),
    );
  }
}
