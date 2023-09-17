import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr_getx_test/controllers/tab1_controller.dart';
import 'package:hogr_getx_test/routes/app_routes.dart';
// Import your route names

class Tab1Data extends StatelessWidget {
  final tab1Controller = Get.put(Tab1Controller());

  Tab1Data({super.key}); // Access Tab1Controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Obx(
        () => ListView.builder(
          itemCount: tab1Controller.restaurants.length,
          itemBuilder: (context, index) {
            final restaurant = tab1Controller.restaurants[index];
            return ListTile(
              title: Text(
                restaurant.name,
                style: const TextStyle(color: Colors.white70),
              ),
              onTap: () {
                tab1Controller.selectRestaurant(index);
                Get.toNamed(AppRoutes.SCREEN2,
                    arguments: tab1Controller.selectedRestaurant.value);

                // Navigate to Screen 2
              },
            );
          },
        ),
      ),
    );
  }
}
