import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';

class DialogMessageUtils {
  static void showMessageDialog(
      {required String message,
      required BuildContext context,
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
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0))),
          elevation: 0,
          backgroundColor: Theme.of(context).colorScheme.background,
          title: Text(
            title ?? "",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                color: Theme.of(context).colorScheme.surface,
                fontSize: 17,
                fontWeight: FontWeight.w500),
          ),
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                  color: Theme.of(context).colorScheme.secondary, fontSize: 17),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                onConfirm?.call();
              },
              child: Center(
                child: Container(
                  height: 44,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Theme.of(context).colorScheme.primaryContainer),
                  child: Center(
                    child: Text(
                      confirmTitle ?? "dialog.ok".tr(),
                      style: GoogleFonts.inter(
                          fontSize: 17,
                          color: Theme.of(context).colorScheme.primary,
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
