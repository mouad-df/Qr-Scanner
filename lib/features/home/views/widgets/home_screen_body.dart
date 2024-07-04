import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_scanner_app/core/routes/route_names.dart';
import 'package:qr_scanner_app/features/home/controllers/home_controller.dart';
import 'package:qr_scanner_app/features/qr_scanner/views/screens/qr_scanner_screen.dart';

class HomeScreenBody extends GetView<HomeController> {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ), 
      ),
      onPressed: () {
        Get.toNamed(RouteNames.qrScanScreen);
      },
      child: const Text(
        'Scan QR Code',
        style: TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
      ),
    ));
  }
}
