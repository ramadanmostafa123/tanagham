import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';

class MemoriesListView extends StatelessWidget {
  const MemoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return buildListItem();
        },
      ),
    );
  }

  Widget buildListItem() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 13.h),
      child: Row(
        children: [
          Expanded(
            child: Container(
              // width: 171.w,
              // height: 108.h,
              decoration: const BoxDecoration(
                //color: AppColors.secondaryTextColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                child: Image.asset(
                  'assets/images/mm.png',
                  fit: BoxFit.cover,
                  color: Colors.black.withOpacity(0.2),
                  colorBlendMode: BlendMode.srcOver,
                ),
              ),
            ),
          ),
          horisontalSpace(10),
          Expanded(
            flex: 2,
            child: SizedBox(
              height: 108.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Baby Ayman',
                      style: AppTextStyles.pascificoSize15primaryColor,
                    ),
                  ),
                  verticalSpace(10),
                  SizedBox(
                    //  width: 140.w,
                    child: Text(
                      'Ayman was born onThursday at 7 am,and....',
                      style: AppTextStyles.robotoLightSize15mediem.copyWith(
                        color: const Color(0xFF797876),
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 140.w,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 100.w,
                          child: Text(
                            'Add By : Sam Ahmed',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:
                                AppTextStyles.robotoLightSize15mediem.copyWith(
                              color: AppColors.secondaryTextColor,
                            ),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 40.w,
                          child: Text(
                            '1/1/2000',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:
                                AppTextStyles.robotoLightSize15mediem.copyWith(
                              color: AppColors.secondaryTextColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
