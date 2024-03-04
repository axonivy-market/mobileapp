import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/core/shared/extensions/string_ext.dart';
import 'package:axon_ivy/data/models/processes/customfield/customfield.dart';
import 'package:axon_ivy/data/models/processes/process.dart';
import 'package:axon_ivy/util/resources/icons_helper.dart';
import 'package:axon_ivy/util/resources/resources.dart';
import 'package:axon_ivy/util/widgets/text_highlight_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
      padding: const EdgeInsets.only(
        left: 8,
        right: 5,
        top: 10,
        bottom: 10,
      ),
      constraints: const BoxConstraints(minHeight: AppSize.s82),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.bleachedSilk,
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: getProcessIcon(process.customFields),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 26),
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

  Widget getProcessIcon(List<CustomField> customFields) {
    final cssIcon = customFields
        .firstWhere((element) => element.name == "cssIcon",
            orElse: () => CustomField())
        .value;

    if (cssIcon.isEmpty) {
      return getIconDefaultIcon();
    }
    final icon = getIconUsingPrefix(name: cssIcon);
    return icon is SvgPicture
        ? icon
        : Icon(
            icon,
            size: 13,
          );
  }
}
