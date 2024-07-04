import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScannerController extends GetxController {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  var result = ''.obs;
  QRViewController? qrViewController;

  @override
  void onClose() {
    qrViewController?.dispose();
    super.onClose();
  }

  @override
  void onInit() {
    super.onInit();
  }
}
