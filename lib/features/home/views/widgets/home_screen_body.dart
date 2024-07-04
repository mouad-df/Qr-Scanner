import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_scanner_app/core/buttons/custom_button.dart';
import 'package:qr_scanner_app/core/routes/route_names.dart';
import 'package:qr_scanner_app/features/home/controllers/home_controller.dart';
import 'package:qr_scanner_app/features/qr_scanner/views/screens/qr_scanner_screen.dart';

class HomeScreenBody extends GetView<HomeController> {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'QR Scanner App',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Colors.black,
                  offset: Offset(3.0, 3.0),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          CustomButton(
              onPress: () {
                Get.toNamed(RouteNames.qrScanScreen);
              },
              labelText: 'Scan QR Code',
              icon: const Icon(
                Icons.qr_code_scanner,
                color: Colors.white,
                size: 24,
              ),
              backgroundColor: Colors.blue)
        ],
      ),
    );
  }
}
