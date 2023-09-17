// lib/views/tab2_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr_getx_test/controllers/tab1_controller.dart';
import 'package:hogr_getx_test/controllers/tab2_controller.dart';

class Tab2Data extends StatelessWidget {
  final Tab1Controller tab1Controller = Get.find();
  final Tab2Controller tab2Controller = Get.put(Tab2Controller());

  Tab2Data({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedRestaurant = tab1Controller.selectedRestaurant.value;

    return Scaffold(
      backgroundColor: Colors.black,
      body: selectedRestaurant != null
          ? Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  'Phone Number: \n${selectedRestaurant.phoneNumber}',
                  style: const TextStyle(
                      color: Colors.white70, fontWeight: FontWeight.w700),
                ),
              ),
            )
          : const Center(
              child: Text(
                'Select a restaurant from Tab 1 to see contact information.',
                style: TextStyle(color: Colors.white70),
              ),
            ),
    );
  }
}
