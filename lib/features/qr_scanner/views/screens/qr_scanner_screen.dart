import 'package:flutter/material.dart';
import 'package:qr_scanner_app/features/qr_scanner/views/widgets/qr_scanner_body.dart';

class QrScannerScreen extends StatelessWidget {
  const QrScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('QR Scanner'),
          backgroundColor: Colors.blue,
        ),
        body: const QrScannerScreenBody());
  }
}
