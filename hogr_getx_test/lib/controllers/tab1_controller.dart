import 'package:get/get.dart';
import 'package:hogr_getx_test/models/restaurant.dart';
import 'package:hogr_getx_test/utils/data_loader.dart';

// Import your data loading utility

class Tab1Controller extends GetxController {
  final restaurants = <Restaurant>[].obs; // Initialize as an observable list
  final selectedRestaurant =
      Rx<Restaurant?>(null); // Observable for selected restaurant

  @override
  void onInit() {
    super.onInit();
    loadData().then((data) {
      final restaurantData = data['restaurants'] as List<dynamic>;
      restaurants.assignAll(
        restaurantData.map((json) => Restaurant.fromJson(json)).toList(),
      );
    });
  }

  void selectRestaurant(int index) {
    if (index >= 0 && index < restaurants.length) {
      selectedRestaurant.value = restaurants[index];
    }
  }
}
