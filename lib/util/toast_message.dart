import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/util/widgets/toast_message_widget.dart';
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
