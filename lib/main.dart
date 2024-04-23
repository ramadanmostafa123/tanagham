import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tanagham/tanagham.dart';

final GlobalKey<NavigatorState> navigator = GlobalKey<NavigatorState>();

void main() {
  runApp(
    const Tanagham(),
    // DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) {
    //     return const Tanagham();
    //   },
    // ),
  );
}