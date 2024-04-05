import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        return AppAssets.icons.priorityException.svg(height: 21.h);
      case 1:
        return AppAssets.icons.priorityHigh.svg(height: 21.h);
      case 2:
        return SizedBox.square(dimension: 21.h);
      default:
        return AppAssets.icons.priorityLow.svg(
          height: 21.h,
          colorFilter: ColorFilter.mode(
              Theme.of(context).colorScheme.surface, BlendMode.srcIn),
        );
    }
  }
}
