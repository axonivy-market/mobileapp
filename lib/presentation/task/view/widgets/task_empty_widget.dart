import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskEmptyWidget extends StatelessWidget {
  const TaskEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height / 4),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: -15,
            child: SizedBox(
              width: 240,
              child: Text(
                "tasksView.emptyTask".tr(),
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: AppColors.eerieBlack),
              ),
            ),
          ),
          AppAssets.images.koalaWithPassionFruit.svg(),
        ],
      ),
    );
  }
}
