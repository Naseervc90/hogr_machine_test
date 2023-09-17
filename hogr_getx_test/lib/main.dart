// lib/main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr_getx_test/routes/app_pages.dart';
import 'package:hogr_getx_test/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.SCREEN1, // Change to SCREEN1 as the initial route
      getPages: AppPages.pages,
    );
  }
}
