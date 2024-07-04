// features/html_display/controllers/html_display_controller.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HtmlDisplayController extends GetxController {
  late WebViewController controller;
  var isLoading = false.obs;

  void fetchHtmlContent(String url) async {
    isLoading.value = true;

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {},
          onPageStarted: (String url) {
            isLoading.value = true;
          },
          onPageFinished: (String url) {
            isLoading.value = false;
          },
          onWebResourceError: (WebResourceError error) {
            isLoading.value = false;
          },
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(url));
  }

  @override
  void onInit() {
    super.onInit();
    final url = Get.arguments as String;
    fetchHtmlContent(url);
  }
}
