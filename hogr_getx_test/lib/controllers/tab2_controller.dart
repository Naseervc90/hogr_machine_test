import 'package:get/get.dart';
import 'package:hogr_getx_test/controllers/tab1_controller.dart';

class Tab2Controller extends GetxController {
  final Tab1Controller tab1Controller = Get.find(); // Access Tab1Controller
}
