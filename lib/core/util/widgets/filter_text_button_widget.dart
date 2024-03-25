import 'package:axon_ivy/data/models/entity/entity.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterTextButton extends StatelessWidget {
  final VoidCallback onPressed;

  final TabFilterStyle filterButtonStyle;

  const FilterTextButton({
    super.key,
    required this.onPressed,
    required this.filterButtonStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 40.h,
        decoration: BoxDecoration(
            borderRadius: filterButtonStyle.borderRadius,
            color: filterButtonStyle.backgroundColor,
            border: filterButtonStyle.boxBorder),
        child: Center(
          child: Text(
            filterButtonStyle.textButton.tr(),
            style: GoogleFonts.inter(
                color: filterButtonStyle.textColor,
                fontWeight: filterButtonStyle.fontWeight,
                fontSize: 17.sp),
          ),
        ),
      ),
    );
  }
}
