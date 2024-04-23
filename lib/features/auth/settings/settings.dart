import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';
import 'package:tanagham/core/widgets/custom_app_bar.dart';
import 'package:tanagham/features/auth/settings/widgets/divider.dart';
import 'package:tanagham/features/auth/settings/widgets/settings_row.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFC79950),
                  Color(0xFF249689),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.white.withOpacity(0.3),
            ),
          ),
          Positioned.fill(
            bottom: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.white.withOpacity(0.2),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(27.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(40),
                  CustomAppBar(
                    title: 'Settings',
                  ),
                  verticalSpace(27),
                  Text(
                    'Account settings',
                    style: AppTextStyles.rubikSize14mediemSize18,
                  ),
                  verticalSpace(32),
                  const SettingsRow(
                    icon: 'assets/icons/change_pasword.svg',
                    title: 'Change password',
                  ),
                  verticalSpace(20),
                  const SetttingsDivider(),
                  verticalSpace(32),
                  const SettingsRow(
                    icon: 'assets/icons/settings_notification.svg',
                    title: 'Notifications',
                  ),
                  verticalSpace(20),
                  const SetttingsDivider(),
                  verticalSpace(32),
                  const SettingsRow(
                    icon: 'assets/icons/about_us.svg',
                    title: 'About us',
                  ),
                  verticalSpace(20),
                  const SetttingsDivider(),
                  verticalSpace(20),
                  SettingsRow(
                    icon: 'assets/icons/device theme.svg',
                    title: 'The Apperence',
                    trailing: CupertinoSwitch(
                      thumbColor: const Color(0xFFF4924B),
                      activeColor: AppColors.successColor,
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                    ),
                  ),
                  verticalSpace(22),
                  SettingsRow(
                    icon: 'assets/icons/fingerprint.svg',
                    title: 'Use fingerprint',
                    trailing: CupertinoSwitch(
                      thumbColor: const Color(0xFFF4924B),
                      activeColor: AppColors.successColor,
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                    ),
                  ),
                  verticalSpace(22),
                  Row(
                    children: [
                      Text(
                        'languages',
                        style: AppTextStyles.rubiklightSize16mediemSize18,
                      ),
                      const Spacer(),
                      Text(
                        'English',
                        style: AppTextStyles.rubiklightSize14mediemSize12,
                      ),
                    ],
                  ),
                  verticalSpace(27),
                  Text(
                    'More Options',
                    style: AppTextStyles.rubikSize14mediemSize18.copyWith(
                      color: AppColors.primaryTextColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
