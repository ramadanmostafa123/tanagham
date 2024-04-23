import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tanagham/core/routing/routing.dart';
import 'package:tanagham/features/auth/settings/settings.dart';
import 'package:tanagham/features/home/home.dart';
import 'package:tanagham/features/main_screen/widgets/nav_item.dart';
import 'package:tanagham/features/profile_patient/profile_patient.dart';
import 'package:tanagham/features/services_screen/services_screen.dart';
import 'package:tanagham/features/support/support.dart';
import '../../core/helpers/constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedTab = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ServicesScreen(),
    Settings(),
    ProfilePatient()
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOptions.elementAt(selectedTab),
      floatingActionButton: selectedTab == 0
          ? GestureDetector(
              onTap: () {
                push(const Support());
              },
              child: SvgPicture.asset(Assets.floatingIconButton))
          : null,
      bottomNavigationBar: SizedBox(
        height: 80,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NavItem(
                icon: Assets.homeIcon,
                title: 'Home',
                isSelected: selectedTab == 0,
                onTap: () {
                  _onItemTapped(0);
                }),
            NavItem(
              icon: Assets.serviceIcon,
              title: 'Services',
              isSelected: selectedTab == 1,
              onTap: () {
                _onItemTapped(1);
              },
            ),
            NavItem(
              icon: Assets.settingIcon,
              title: 'Setting',
              isSelected: selectedTab == 2,
              onTap: () {
                _onItemTapped(2);
              },
            ),
            NavItem(
              icon: Assets.profileIcon,
              title: 'Profile',
              isSelected: selectedTab == 3,
              onTap: () {
                _onItemTapped(3);
              },
            )
          ],
        ),
      ),
    );
  }
}
