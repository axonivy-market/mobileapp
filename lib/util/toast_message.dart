import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToastMessageUtils {
  static void showMessage(String message, SvgGenImage leadingIcon) {
    BotToast.showNotification(
      leading: (cancel) => Padding(
        padding: const EdgeInsets.only(left: 15),
        child: SizedBox.fromSize(
          size: const Size(21, 21),
          child: leadingIcon.svg(),
        ),
      ),
      title: (_) => Text(
        message,
        style: GoogleFonts.inter(
          textStyle: const TextStyle(
              fontSize: 17,
              color: AppColors.eerieBlack,
              fontWeight: FontWeight.w400),
        ),
      ),
      enableSlideOff: true,
      backButtonBehavior: BackButtonBehavior.none,
      crossPage: true,
      contentPadding: const EdgeInsets.only(right: 15),
      margin: const EdgeInsets.all(15),
      onlyOne: true,
      animationDuration: const Duration(milliseconds: 200),
      animationReverseDuration: const Duration(milliseconds: 200),
      backgroundColor: AppColors.drwhite,
      duration: const Duration(seconds: 3),
    );
  }
}
