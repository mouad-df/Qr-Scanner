import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("ON INIT _ HOME CONTROLLER");
  }

  var someValue = 0.obs;

  void incrementValue() {
    someValue++;
  }
}
