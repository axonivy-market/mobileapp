import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class VersionNameWidget extends StatelessWidget {
  const VersionNameWidget({
    super.key,
    required this.versionName,
  });

  final String versionName;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'splashCopyright',
        style: GoogleFonts.inter(
          fontSize: 12.sp,
          color: Theme.of(context).colorScheme.onSecondary,
          fontWeight: FontWeight.w400,
        ),
      ).tr(
        namedArgs: {'version': versionName},
      ),
    );
  }
}
