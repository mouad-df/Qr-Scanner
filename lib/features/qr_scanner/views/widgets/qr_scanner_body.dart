import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:qr_scanner_app/core/routes/route_names.dart';
import 'package:qr_scanner_app/features/qr_scanner/controllers/qr_scanner_controller.dart';

class QrScannerScreenBody extends GetView<QrScannerController> {
  const QrScannerScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: QRView(
              key: controller.qrKey,
              onQRViewCreated: (QRViewController qrController) {
                controller.qrViewController = qrController;
                qrController.scannedDataStream.listen((scanData) {
                  controller.result.value = scanData.code!;
                  Get.toNamed(RouteNames.htmlDisplayScreen,
                      arguments: scanData.code);
                });
              },
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                    size: 24,
                  ),
                  label: const Text(
                    'Quitter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
