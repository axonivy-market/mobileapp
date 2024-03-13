import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/util/resources/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskEmptyWidget extends StatelessWidget {
  const TaskEmptyWidget({super.key, required this.activeFilter});
  final FilterType activeFilter;

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
            bottom: activeFilter == FilterType.all ? -15 : -60,
            child: SizedBox(
              width: 240,
              child: Text(
                activeFilter == FilterType.all
                    ? "tasksView.emptyTask".tr()
                    : "tasksView.emptyTaskExpired".tr(),
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: AppColors.eerieBlack),
              ),
            ),
          ),
          activeFilter == FilterType.all
              ? AppAssets.images.koalaWithPassionFruit.svg()
              : AppAssets.icons.noExpiredTask.svg(),
        ],
      ),
    );
  }
}
