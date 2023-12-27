import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataEmptyWidget extends StatelessWidget {
  const DataEmptyWidget({super.key, required this.message, required this.icon});

  final String message;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          const SizedBox(height: 10),
          SizedBox(
            width: 250,
            child: Text(
              message.tr(),
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
