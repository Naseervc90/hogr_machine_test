// lib/routes/app_pages.dart
import 'package:get/get.dart';
import 'package:hogr_getx_test/views/screen1_view.dart';
import 'package:hogr_getx_test/views/screen2_view.dart';
import 'package:hogr_getx_test/views/screen3_view.dart';
import 'package:hogr_getx_test/views/tab1_view.dart';
import 'package:hogr_getx_test/views/tab2_view.dart';

import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.SCREEN1,
      page: () => const Screen1View(),
      children: const [],
    ),
    GetPage(
      name: AppRoutes.TAB1,
      page: () => Tab1Data(),
      children: const [],
    ),
    GetPage(
      name: AppRoutes.TAB2,
      page: () => Tab2Data(),
      children: const [],
    ),
    GetPage(
      name: AppRoutes.SCREEN2,
      page: () => const Screen2View(),
      children: const [],
    ),
    GetPage(
      name: AppRoutes.SCREEN3,
      page: () => const Screen3View(),
      children: const [],
    ),
  ];
}
