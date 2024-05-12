import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanagham/core/theming/text_styles.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key, required this.title, this.action, this.titleColor});
  final String title;
  final Color? titleColor;
  Widget? action;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Card(
            color: Colors.white,
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(
                'assets/icons/arrow-back.svg',
                width: 15,
                height: 15,
              ),
            ),
          ),
        ),
        Expanded(
          child: Text(
            title,
            style: AppTextStyles.pascificoSize20primaryColor.copyWith(
              color: titleColor ?? Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        action ?? SvgPicture.asset('assets/icons/Notification.svg'),
      ],
    );
  }
}
