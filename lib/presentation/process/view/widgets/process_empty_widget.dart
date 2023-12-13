import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProcessEmptyWidget extends StatelessWidget {
  const ProcessEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppAssets.icons.processEmpty.svg(),
          const SizedBox(height: 10),
          SizedBox(
            width: 260,
            child: Text(
              'process.emptyList'.tr(),
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: AppColors.eerieBlack,
              ),
            ),
          )
        ],
      ),
    );
  }
}
