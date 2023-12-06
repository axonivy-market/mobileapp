import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskEmptyWidget extends StatelessWidget {
  const TaskEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: -15,
            child: SizedBox(
              width: 230,
              child: Text(
                'Nice Work! You don\'t have any tasks at the moment',
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
