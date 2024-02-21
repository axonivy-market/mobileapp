import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/util/widgets/bot_toast_helper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class BasePageScreen extends StatefulWidget {
  const BasePageScreen({super.key});
}

abstract class BasePageScreenState<Page extends BasePageScreen>
    extends State<Page> {
  Function()? loading;

  void showLoading() {
    loading ??= showAppLoading();
  }

  void hideLoading() {
    loading?.call();
    loading = null;
  }

  void showConfirmDialog(
      {required String message,
      Function()? onCancel,
      String? title,
      String? confirmTitle,
      Function()? onConfirm,
      bool barrierDismissible = true,
      bool needShowCancel = false}) {
    showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            title ?? "",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                color: AppColors.black,
                fontSize: 17,
                fontWeight: FontWeight.w500),
          ),
          content: Text(
            message,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(color: AppColors.black, fontSize: 14),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (needShowCancel)
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                        onCancel?.call();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.white,
                          border: Border.all(
                            color: AppColors.tropicSea,
                            width: 1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "dialog.cancel".tr(),
                            style: GoogleFonts.inter(
                                color: AppColors.black, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  if (needShowCancel)
                    const SizedBox(
                      width: 40,
                    ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                      onConfirm?.call();
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.tropicSea),
                      child: Center(
                        child: Text(
                          confirmTitle ?? "dialog.ok".tr(),
                          style: GoogleFonts.inter(
                              color: AppColors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  void showUploadedDialog(
      {required String message,
      Function()? onCancel,
      String? title,
      String? confirmTitle,
      Function()? onConfirm,
      bool barrierDismissible = true,
      bool needShowCancel = false}) {
    showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            title ?? "",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                color: AppColors.black,
                fontSize: 17,
                fontWeight: FontWeight.w500),
          ),
          content: Text(
            message,
            textAlign: TextAlign.left,
            style: GoogleFonts.inter(color: AppColors.black, fontSize: 14),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                onConfirm?.call();
              },
              child: Center(
                child: Container(
                  width: 70,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.tropicSea),
                  child: Center(
                    child: Text(
                      confirmTitle ?? "dialog.ok".tr(),
                      style: GoogleFonts.inter(
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
