import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
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
          fontSize: 12,
          color: AppColors.blackMana,
          fontWeight: FontWeight.w400,
        ),
      ).tr(
        namedArgs: {'version': versionName},
      ),
    );
  }
}
