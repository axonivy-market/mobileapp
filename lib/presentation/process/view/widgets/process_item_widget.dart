import 'dart:math';

import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/core/shared/extensions/string_ext.dart';
import 'package:axon_ivy/data/models/processes/process.dart';
import 'package:axon_ivy/util/resources/resources.dart';
import 'package:axon_ivy/util/widgets/text_highlight_widget.dart';
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
  const ProcessItemWidget({
    super.key,
    required this.process,
    this.query = '',
  });

  final Process process;
  final String query;

  @override
  Widget build(BuildContext context) {
    int startNameIndex =
        process.name.toLowerCase().indexOf(query.toLowerCase());
    int startDescIndex =
        process.description.toLowerCase().indexOf(query.toLowerCase());
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      constraints: const BoxConstraints(minHeight: AppSize.s82),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.bleachedSilk,
      ),
      child: Stack(
        children: [
          getProcessIcon(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                query.isEmptyOrNull || startNameIndex == -1
                    ? Text(
                        process.name.isEmptyOrNull
                            ? process.fullRequestPath.split('/').last
                            : process.name,
                        style: GoogleFonts.inter(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: query.isEmptyOrNull
                                ? AppColors.eerieBlack
                                : AppColors.darkSouls),
                        overflow: TextOverflow.ellipsis,
                      )
                    : TextHighlightWidget(
                        text: process.name,
                        startIndex: startNameIndex,
                        endIndex: query.length,
                        maxLine: 1,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                const SizedBox(height: 2),
                query.isEmptyOrNull || startDescIndex == -1
                    ? Text(
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
                      )
                    : TextHighlightWidget(
                        text: process.description,
                        startIndex: startDescIndex,
                        endIndex: query.length,
                        maxLine: 2,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: AppAssets.icons.chevronRight.svg(),
          ),
        ],
      ),
    );
  }
}
