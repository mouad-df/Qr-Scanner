import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_scanner_app/core/buttons/custom_button.dart';
import 'package:qr_scanner_app/core/routes/route_names.dart';
import 'package:qr_scanner_app/features/html_display/controllers/html_display_controller.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HtmlDisplayBody extends GetView<HtmlDisplayController> {
  const HtmlDisplayBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Obx(() {
            if (controller.isLoading.value) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return WebViewWidget(
                controller: controller.controller,
              );
            }
          }),
        ),
        const Divider(
          thickness: 2,
          color: Colors.black,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          color: Colors.white.withOpacity(0.8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  flex: 3,
                  child: CustomButton(
                      onPress: () {
                        Get.back();
                      },
                      labelText: 'Scanner à nouveau',
                      icon: const Icon(
                        Icons.qr_code_scanner,
                        color: Colors.white,
                        size: 24,
                      ),
                      backgroundColor: Colors.blue)),
              const SizedBox(
                width: 8,
              ),

              // Quit Button
              Expanded(
                flex: 2,
                child: CustomButton(
                    onPress: () {
                      Get.offAllNamed(RouteNames.homeScreen);
                    },
                    labelText: 'Quitter',
                    icon: const Icon(
                      Icons.exit_to_app,
                      color: Colors.white,
                      size: 24,
                    ),
                    backgroundColor: Colors.red),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
