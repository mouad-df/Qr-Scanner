// features/html_display/bindings/html_display_binding.dart
import 'package:get/get.dart';
import '../controllers/html_display_controller.dart';

class HtmlDisplayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HtmlDisplayController>(() => HtmlDisplayController());
  }
}
