import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:axon_ivy/features/profile/domain/entities/qr/qr_model.dart';
import 'package:axon_ivy/shared/widgets/back_button_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRParentPage extends StatefulWidget {
  const QRParentPage({super.key});

  @override
  State<StatefulWidget> createState() => _QRParentPageState();
}

class _QRParentPageState extends State<QRParentPage> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  late BuildContext qrViewContext;
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
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
        leading: const BackButtonWidget(),
      ),
      body: _buildQrView(context),
    );
  }

  Widget _buildQrView(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400.w ||
            MediaQuery.of(context).size.height < 400.h)
        ? 150.0.h
        : 300.0.h;
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10.r,
          borderLength: 30.r,
          borderWidth: 10.r,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      if (result == null) {
        setState(() {
          result ??= scanData;
        });
        debugPrint("${result?.code}");
        if (result?.code != null) {
          if (result!.code!.contains("loginUrl") &&
              result!.code!.contains("username")) {
            String jsonData = result!.code!;
            Map<String, dynamic> data = jsonDecode(jsonData);
            final model = QRModel.fromJson(data);
            context.pop({model});
          }
        }
      }
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("qr.noPermission".tr())),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
