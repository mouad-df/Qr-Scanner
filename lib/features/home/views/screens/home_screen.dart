import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_scanner_app/core/buttons/custom_button.dart';
import 'package:qr_scanner_app/core/routes/route_names.dart';
import 'package:qr_scanner_app/features/home/views/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: HomeScreenBody());
  }
}
