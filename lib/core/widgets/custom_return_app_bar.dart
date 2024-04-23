import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanagham/core/helpers/constants.dart';
import 'package:tanagham/core/theming/app_style.dart';

class CustomReternAppBar extends StatelessWidget {
  const CustomReternAppBar({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), boxShadow: [
              BoxShadow(color: const Color(0xff18274B).withOpacity(.12), spreadRadius: -2, blurRadius: 4, offset: const Offset(0, 2)),
              BoxShadow(color: const Color(0xff18274B).withOpacity(.08), spreadRadius: -2, blurRadius: 4, offset: const Offset(0, 4))
            ]),
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xff677294),
              size: 18,
            ),
          ),
        ),
        const Spacer(),
        Text(
          title,
          style: Appstyle.styleRegular22Pacifico,
        ),
        const Spacer(),
        
        SvgPicture.asset(Assets.notification),
      ],
    );
  }
}
