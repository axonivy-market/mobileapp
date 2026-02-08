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
  String? result;
  late final MobileScannerController controller;

  @override
  void initState() {
    super.initState();
    controller = MobileScannerController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        leadingWidth: 100.w,
        title: Text(
          "qr.title".tr(),
          style: GoogleFonts.inter(
              color: Theme.of(context).colorScheme.onSurface,
              fontSize: 17.sp,
              fontWeight: FontWeight.w500),
        ),
        leading: BackButtonWidget(),
      ),
      body: _buildQrView(context),
    );
  }

  Widget _buildQrView(BuildContext context) {
    return MobileScanner(
      controller: controller,
      onDetect: (BarcodeCapture capture) {
        if (result != null) return;
        final barcode = capture.barcodes.firstOrNull;
        if (barcode == null || barcode.rawValue == null) return;

        setState(() {
          result = barcode.rawValue;
        });

        debugPrint("$result");
        if (result != null) {
          if (result!.contains("loginUrl") &&
              result!.contains("username")) {
            String jsonData = result!;
            Map<String, dynamic> data = jsonDecode(jsonData);
            final model = QRModel.fromJson(data);
            context.pop({model});
          }
        }
      },
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
