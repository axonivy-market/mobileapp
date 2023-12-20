import 'dart:math';

import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/core/shared/extensions/string_ext.dart';
import 'package:axon_ivy/data/models/processes/process.dart';
import 'package:axon_ivy/util/resources/resources.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final _randomizer = Random();

final _sampleImages = [
  AppAssets.icons.icDatabase,
  AppAssets.icons.icTrigger,
  AppAssets.icons.icNote,
  AppAssets.icons.icUsers,
];

Widget getProcessIcon() {
  return _sampleImages
      .elementAt(_randomizer.nextInt(_sampleImages.length))
      .svg();
}

class ProcessItemWidget extends StatelessWidget {
  const ProcessItemWidget({super.key, required this.process});

  final Process process;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: AppSize.s80,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.bleachedSilk,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getProcessIcon(),
          const SizedBox(width: 5),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  process.name.isEmptyOrNull
                      ? process.fullRequestPath.split('/').last
                      : process.name,
                  style: GoogleFonts.inter(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.eerieBlack),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  process.description.isEmptyOrNull
                      ? 'process.noDescription'.tr()
                      : process.description,
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
