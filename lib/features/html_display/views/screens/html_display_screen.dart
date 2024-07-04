import 'package:flutter/material.dart';
import 'package:qr_scanner_app/features/html_display/views/widgets/html_display_body.dart';

class HtmlDisplayScreen extends StatelessWidget {
  const HtmlDisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HTML WebView'),
          backgroundColor: Colors.blue,
        ),
        body: const HtmlDisplayBody());
  }
}
