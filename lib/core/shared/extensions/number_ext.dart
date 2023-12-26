import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension PriorityNumberExtension on int {
  Widget getPriorityName() {
    switch (this) {
      case 0:
        return Text(
          "priority.exception".tr(),
          style: GoogleFonts.inter(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: AppColors.sonicSilver,
          ),
        );
      case 1:
        return Text(
          "priority.high".tr(),
          style: GoogleFonts.inter(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: AppColors.sonicSilver,
          ),
        );
      case 2:
        return Text(
          "priority.normal".tr(),
          style: GoogleFonts.inter(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: AppColors.sonicSilver,
          ),
        );
      default:
        return Text(
          "priority.low".tr(),
          style: GoogleFonts.inter(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: AppColors.sonicSilver,
          ),
        );
    }
  }
}

extension PriorityIconExtension on int {
  Widget getPriorityIcon() {
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
        return AppAssets.icons.priorityLow.svg();
    }
  }
}
