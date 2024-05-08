import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:axon_ivy/shared/widgets/widgets.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

class ToastMessageUtils {
  static void showMessage(
      String message, SvgGenImage leadingIcon, BuildContext context) {
    BotToast.showCustomNotification(
      toastBuilder: (cancelFunc) => ToastMessageWidget(
        cancelFunc: cancelFunc,
        message: message,
        leadingIcon: leadingIcon,
      ),
      duration: const Duration(seconds: 3),
    );
  }
}
