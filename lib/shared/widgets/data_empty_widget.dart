import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DataEmptyWidget extends StatelessWidget {
  const DataEmptyWidget({super.key, required this.message, required this.icon});

  final String message;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            10.verticalSpace,
            SizedBox(
              width: 250.w,
              child: Text(
                message.tr(),
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.surface,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
