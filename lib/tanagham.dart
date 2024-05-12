import 'package:flutter/material.dart';
import 'package:tanagham/features/add_new_user/add_new_user.dart';
import 'package:tanagham/features/admin_profile/admin_profile.dart';
import 'package:tanagham/features/admin_rehabitition_plans/admin_rehabition_plan_screen.dart';
import 'package:tanagham/features/edit_patient_profile/edit_profile.dart';
import 'package:tanagham/features/home_admin/home_admin_screen.dart';
import 'package:tanagham/features/main_screen/main_screen.dart';
import 'package:tanagham/features/memories/memories.dart';
import 'package:tanagham/features/profile_patient/profile_patient.dart';
import 'package:tanagham/features/splash/splash_screen.dart';
import 'package:tanagham/main.dart';

class Tanagham extends StatelessWidget {
  const Tanagham({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tanagham',
      theme: ThemeData(),
      navigatorKey: navigator,
      home: const SplashScreen(),
    );
  }
}
