import 'dart:math';

import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final _randomizer = Random();

final _sampleImages = [
  AppAssets.icons.process,
  AppAssets.icons.camera,
  AppAssets.icons.paperclip,
  AppAssets.icons.filter,
  AppAssets.icons.list,
  AppAssets.icons.notification
];

Widget getProcessIcon() {
  return _sampleImages
      .elementAt(_randomizer.nextInt(_sampleImages.length))
      .svg();
}

class ProcessItemWidget extends StatelessWidget {
  const ProcessItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.fromLTRB(5, 8, 5, 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.bleachedSilk,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: SizedBox.square(
              dimension: 21,
              child: getProcessIcon(),
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Master data management. This could be a long text",
                  style: GoogleFonts.inter(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.eerieBlack),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  _randomizer.nextInt(2) == 0
                      ? "Here is the placeholder for description of this process. Here is the placeholder for description of this process. Here is the placeholder for description of this process"
                      : "No description",
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: AppColors.sonicSilver,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ),
          const SizedBox(width: 5),
          Align(
            alignment: Alignment.bottomLeft,
            child: AppAssets.icons.chevronRight.svg(),
          )
        ],
      ),
    );
  }
}
