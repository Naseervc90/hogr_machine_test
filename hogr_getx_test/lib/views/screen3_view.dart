import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr_getx_test/routes/app_routes.dart';

class Screen3View extends StatelessWidget {
  const Screen3View({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve the phone number from route arguments
    final phoneNumber = Get.arguments as String?;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(child: const Text('Screen 3')),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate directly to Screen1
            Get.offAllNamed(AppRoutes.SCREEN1);
          },
        ),
      ),
      body: Center(
        child: phoneNumber != null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Phone Number:',
                    style: TextStyle(fontSize: 18, color: Colors.white70),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text(
                      phoneNumber,
                      style:
                          const TextStyle(fontSize: 18, color: Colors.white70),
                    ),
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text('Call'))
                ],
              )
            : const Text('No phone number available.'),
      ),
    );
  }
}
