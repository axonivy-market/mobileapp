import 'dart:convert';
import 'dart:developer';

import 'package:axon_ivy/features/profile/domain/entities/qr/qr_model.dart';
import 'package:axon_ivy/shared/widgets/back_button_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRParentPage extends StatefulWidget {
  const QRParentPage({super.key});

  @override
  State<StatefulWidget> createState() => _QRParentPageState();
}

class _QRParentPageState extends State<QRParentPage> {
  BarcodeCapture? result;
  MobileScannerController controller = MobileScannerController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        leadingWidth: 100.w,
        title: Text(
          "qr.title".tr(),
          style: GoogleFonts.inter(
              color: Theme.of(context).colorScheme.surface,
              fontSize: 17.sp,
              fontWeight: FontWeight.w500),
        ),
        leading: BackButtonWidget(),
      ),
      body: _buildQrView(context),
    );
  }

  Widget _buildQrView(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400.w ||
            MediaQuery.of(context).size.height < 400.h)
        ? 150.0.h
        : 300.0.h;
    return Center(
      child: SizedBox(
        width: scanArea,
        height: scanArea,
        child: MobileScanner(
          controller: controller,
          onDetect: (BarcodeCapture capture) {
            if (result == null && capture.barcodes.isNotEmpty) {
              setState(() {
                result = capture;
              });
              final code = capture.barcodes.first.rawValue;
              debugPrint(code);
              if (code != null &&
                  code.contains("loginUrl") &&
                  code.contains("username")) {
                try {
                  Map<String, dynamic> data = jsonDecode(code);
                  final model = QRModel.fromJson(data);
                  context.pop({model});
                } catch (e) {
                  log('Failed to parse QR: $e');
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("qr.invalidData".tr())),
                  );
                }
              }
            }
          },
        ),
      ),
    );
  }
}
