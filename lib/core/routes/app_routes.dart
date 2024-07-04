import 'package:get/get.dart';
import 'package:qr_scanner_app/core/routes/route_names.dart';
import 'package:qr_scanner_app/features/home/bindings/home_binding.dart';
import 'package:qr_scanner_app/features/home/views/screens/home_screen.dart';
import 'package:qr_scanner_app/features/html_display/bindings/html_display_binding.dart';
import 'package:qr_scanner_app/features/html_display/views/screens/html_display_screen.dart';
import 'package:qr_scanner_app/features/qr_scanner/bindings/qr_scanner_binding.dart';
import 'package:qr_scanner_app/features/qr_scanner/views/screens/qr_scanner_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(
        name: RouteNames.homeScreen,
        page: () => const HomeScreen(),
        binding: HomeBinding()),
    GetPage(
        name: RouteNames.qrScanScreen,
        page: () => const QrScannerScreen(),
        binding: QrScannerBinding()),
    GetPage(
        name: RouteNames.htmlDisplayScreen,
        page: () => const HtmlDisplayScreen(),
        binding: HtmlDisplayBinding()),
  ];
}
