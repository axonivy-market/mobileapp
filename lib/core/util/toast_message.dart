import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ToastMessageUtils {
  static void showMessage(
      String message, SvgGenImage leadingIcon, BuildContext context) {
    BotToast.showNotification(
      leading: (cancel) => Padding(
        padding: const EdgeInsets.only(left: 15).r,
        child: SizedBox.fromSize(
          size: Size.square(21.h),
          child: leadingIcon.svg(),
        ),
      ),
      title: (_) => Text(
        message,
        style: GoogleFonts.inter(
          textStyle: TextStyle(
              fontSize: 17.sp,
              color: Theme.of(context).colorScheme.surface,
              fontWeight: FontWeight.w400),
        ),
      ),
      enableSlideOff: true,
      backButtonBehavior: BackButtonBehavior.none,
      crossPage: true,
      contentPadding: const EdgeInsets.only(right: 15).r,
      margin: const EdgeInsets.all(15).r,
      onlyOne: true,
      animationDuration: const Duration(milliseconds: 200),
      animationReverseDuration: const Duration(milliseconds: 200),
      backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
      duration: const Duration(seconds: 3),
    );
  }
}
