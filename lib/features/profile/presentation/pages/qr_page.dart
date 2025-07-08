import 'dart:convert';
import 'dart:io';

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
  final MobileScannerController controller = MobileScannerController();
  late BuildContext qrViewContext;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller.stop();
    }
    controller.start();
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
        ? 350.0.h
        : 600.0.h;

    final scanAreaSize = Size(scanArea, scanArea);

    return Stack(
      children: [
        Positioned.fill(
          child: MobileScanner(
            controller: controller,
            fit: BoxFit.cover,
            onDetect: _onDetect,
            errorBuilder: (context, error, child) {
              return Center(
                child: Text(
                  "Camera error: $error",
                  style: const TextStyle(color: Colors.red),
                ),
              );
            },
          ),
        ),
        Positioned.fill(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final width = constraints.maxWidth;
              final height = constraints.maxHeight;
              final left = (width - scanAreaSize.width) / 2;
              final top = (height - scanAreaSize.height) / 2;

              return Stack(
                children: [
                  // Top
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    height: top,
                    child: _TransparentOverlay(),
                  ),
                  // Bottom
                  Positioned(
                    left: 0,
                    top: top + scanAreaSize.height,
                    right: 0,
                    bottom: 0,
                    child: _TransparentOverlay(),
                  ),
                  // Left
                  Positioned(
                    left: 0,
                    top: top,
                    width: left,
                    height: scanAreaSize.height,
                    child: _TransparentOverlay(),
                  ),
                  // Right
                  Positioned(
                    left: left + scanAreaSize.width,
                    top: top,
                    right: 0,
                    height: scanAreaSize.height,
                    child: _TransparentOverlay(),
                  ),
                  // Border
                  Positioned(
                    left: left,
                    top: top,
                    width: scanAreaSize.width,
                    height: scanAreaSize.height,
                    child: IgnorePointer(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red, width: 4),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  void _onDetect(BarcodeCapture barcodeCapture) {
    if (result != null) return;
    setState(() {
      result = barcodeCapture;
    });
    final barcodes = barcodeCapture.barcodes;
    if (barcodes.isNotEmpty) {
      final code = barcodes.first.rawValue;
      debugPrint("$code");
      if (code != null) {
        if (code.contains("loginUrl") && code.contains("username")) {
          String jsonData = code;
          Map<String, dynamic> data = jsonDecode(jsonData);
          final model = QRModel.fromJson(data);
          context.pop({model});
        }
      }
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class _TransparentOverlay extends StatelessWidget {
  const _TransparentOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.4), // transparent but dimmed
    );
  }
}
