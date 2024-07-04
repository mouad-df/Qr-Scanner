import 'package:get/get.dart';
import 'package:qr_scanner_app/features/qr_scanner/controllers/qr_scanner_controller.dart';

class QrScannerBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<QrScannerController>(() => QrScannerController());
  }
}
