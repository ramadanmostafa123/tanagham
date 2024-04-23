import 'package:flutter/material.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/theming/app_color.dart';

class Appstyle {
  static TextStyle styleMedium12 = TextStyle(
    color: Appcolor.whiteColor,
    fontSize: 12.sp,
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w500,
  );
  static TextStyle styleMedium16SecondaryColorTextLight = TextStyle(
    color: Appcolor.secondaryColorTextLight,
    fontSize: 16.sp,
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w500,
  );
  static TextStyle styleMedium20subTitleColor = TextStyle(
    color: Appcolor.subTitleColor,
    fontSize: 16.sp,
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w500,
  );

  static TextStyle styleMedium13 = TextStyle(
    color: Appcolor.secondryBrandColor,
    fontSize: 13.sp,
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w500,
  );
  static TextStyle styleMedium18 = TextStyle(
    color: const Color(0xFF333333),
    fontSize: 18.sp,
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w500,
  );
  static TextStyle styleLight14MainBrand = TextStyle(
    color: Appcolor.mainBrandColor,
    fontSize: 14.sp,
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w300,
  );
  static TextStyle styleRegular12 = TextStyle(
    color: Appcolor.mainBrandColor,
    fontSize: 12.sp,
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w500,
  );

  static TextStyle styleRegular15 = TextStyle(
    color: const Color(0xFF677294),
    fontSize: 15.sp,
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleMedium14White = TextStyle(
    color: Appcolor.whiteColor,
    fontSize: 14.sp,
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w500,
  );

  static TextStyle styleRegular22Pacifico = TextStyle(
    color: Appcolor.mainColorTextLight,
    fontSize: 22.sp,
    fontFamily: 'Pacifico',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleRegular17PacificoMainColorTextLight = TextStyle(
    color: Appcolor.mainColorTextLight,
    fontSize: 17.sp,
    fontFamily: 'Pacifico',
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleBold14InterMainBrandColor = TextStyle(
    color: Appcolor.mainBrandColor,
    fontSize: 14.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
  );

  static TextStyle styleBold46InterWhite = TextStyle(
    color: Appcolor.whiteColor,
    fontSize: 46.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
  );
  static TextStyle styleRegular11Anonymous = TextStyle(
    color: const Color(0xFF858484),
    fontSize: 11.sp,
    fontFamily: 'Anonymous Pro',
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleBold13AlmaraiWhite = TextStyle(
    color: Appcolor.whiteColor,
    fontSize: 13.sp,
    fontFamily: 'Almarai',
    fontWeight: FontWeight.w700,
  );
    static TextStyle styleLight15Almarai = TextStyle(
    color: const Color(0xFF999998),
    fontSize: 15.sp,
    fontFamily: 'Almarai',
    fontWeight: FontWeight.w300,
  );
}

// double getResponsiveFontSize(context, {required double fontSize}) {
//   double scaleFactor = getScaleFactor(context);
//   double responsiveFontSize = fontSize * scaleFactor;

//   double lowerLimit = fontSize * .8;
//   double upperLimit = fontSize * 1.2;

//   return responsiveFontSize.clamp(lowerLimit, upperLimit);
// }

// double getScaleFactor(context) {
//   // var dispatcher = PlatformDispatcher.instance;
//   // var physicalWidth = dispatcher.views.first.physicalSize.width;
//   // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
//   // double width = physicalWidth / devicePixelRatio;
//   double width = MediaQuery.sizeOf(context).width;
//   if (width < 800) {
//     return width / 550;
//   } else if (width < 1200) {
//     return width / 1000;
//   } else {
//     return width / 1920;
//   }
// }
