import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr_getx_test/constants/app_strings.dart';
import 'package:hogr_getx_test/models/restaurant.dart';
import 'package:hogr_getx_test/routes/app_routes.dart';

class Screen2View extends StatelessWidget {
  const Screen2View({super.key});

  String trimAfterThirdComma(String input) {
    RegExp regex = RegExp(r'^([^,]+,[^,]+,[^,]+)');
    Match? match = regex.firstMatch(input);

    if (match != null) {
      return match.group(0)!;
    }

    return input;
  }

  @override
  Widget build(BuildContext context) {
    // Retrieve the selected restaurant from route arguments
    final selectedRestaurant = Get.arguments as Restaurant?;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(child: const Text(AppConstants.screen2)),
      ),
      backgroundColor: Colors.black,
      body: selectedRestaurant != null
          ? Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      selectedRestaurant.name,
                      style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Cusine: ${selectedRestaurant.cuisine} - ${selectedRestaurant.rating}',
                        style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Text(
                      trimAfterThirdComma(
                          'Address: \n${selectedRestaurant.location.address}'),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      'City: ${selectedRestaurant.location.city}',
                      style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      'State: ${selectedRestaurant.location.state}',
                      style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      'Zip Code: ${selectedRestaurant.location.zipCode}',
                      style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Website: \n${selectedRestaurant.website}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Text(
                        'Time: \n${selectedRestaurant.hours.open} - ${selectedRestaurant.hours.close}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.SCREEN3,
                              arguments: selectedRestaurant.phoneNumber);
                        },
                        child: const Text(AppConstants.contactBtnName))
                  ],
                ),
              ),
            )
          : const Center(
              child: Text(AppConstants.noRestaurantSelection),
            ),
    );
  }
}
