import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

extension PriorityNumberExtension on int {
  String get priorityName {
    switch (this) {
      case 0:
        return "priority.exception".tr();
      case 1:
        return "priority.high".tr();
      case 2:
        return "priority.normal".tr();
      default:
        return "priority.low".tr();
    }
  }
}

extension PriorityIconExtension on int {
  Widget priorityIcon(BuildContext context) {
    switch (this) {
      case 0:
        return AppAssets.icons.priorityException.svg();
      case 1:
        return AppAssets.icons.priorityHigh.svg();
      case 2:
        return const SizedBox(
          width: 21,
          height: 21,
        );
      default:
        return AppAssets.icons.priorityLow.svg(
          colorFilter: ColorFilter.mode(
              Theme.of(context).colorScheme.surface, BlendMode.srcIn),
        );
    }
  }
}
