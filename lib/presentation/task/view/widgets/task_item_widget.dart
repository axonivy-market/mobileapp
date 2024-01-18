import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/core/shared/extensions/date_time_ext.dart';
import 'package:axon_ivy/core/shared/extensions/number_ext.dart';
import 'package:axon_ivy/core/shared/extensions/string_ext.dart';
import 'package:axon_ivy/util/resources/resources.dart';
import 'package:axon_ivy/util/widgets/text_highlight_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget getDateTimeTaskWidget(DateTime? dateTime) {
  if (dateTime == null) {
    return AppAssets.icons.chevronRight.svg();
  }

  DateTime now = DateTime.now().toUtc();
  if (dateTime.isBefore(now)) {
    return Row(
      children: [
        Text(
          "tasksView.expired".tr(),
          style: GoogleFonts.inter(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: AppColors.watermelonade,
          ),
          overflow: TextOverflow.ellipsis,
          softWrap: true,
        ),
        AppAssets.icons.chevronRight.svg(
          colorFilter:
              const ColorFilter.mode(AppColors.watermelonade, BlendMode.srcIn),
        ),
      ],
    );
  } else {
    return Row(
      children: [
        Text(
          dateTime.formatDateYearWithTwoNumber(dateTime),
          style: GoogleFonts.inter(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: AppColors.sonicSilver,
          ),
          overflow: TextOverflow.ellipsis,
          softWrap: true,
        ),
        AppAssets.icons.chevronRight.svg()
      ],
    );
  }
}

class TaskItemWidget extends StatelessWidget {
  const TaskItemWidget({
    super.key,
    required this.name,
    required this.description,
    required this.priority,
    required this.expiryTimeStamp,
    this.query = '',
  });

  final String name;
  final String description;
  final int priority;
  final DateTime? expiryTimeStamp;
  final String query;

  @override
  Widget build(BuildContext context) {
    int startNameIndex = name.toLowerCase().indexOf(query.toLowerCase());
    int startDescIndex = description.toLowerCase().indexOf(query.toLowerCase());
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: AppSize.s82,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.bleachedSilk,
      ),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            priority.priorityIcon,
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: query.isEmptyOrNull || startNameIndex == -1
                        ? Text(
                            name.isEmptyOrNull
                                ? "tasksView.noTaskName".tr()
                                : name,
                            style: GoogleFonts.inter(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: query.isEmptyOrNull
                                    ? AppColors.eerieBlack
                                    : AppColors.darkSouls),
                            overflow: TextOverflow.ellipsis,
                          )
                        : TextHighlightWidget(
                            text: name,
                            startIndex: startNameIndex,
                            endIndex: query.length,
                            maxLine: 1,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: query.isEmptyOrNull || startDescIndex == -1
                            ? Text(
                                description.isEmptyOrNull
                                    ? "tasksView.noTaskDescription".tr()
                                    : description,
                                style: GoogleFonts.inter(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.sonicSilver,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              )
                            : TextHighlightWidget(
                                text: description,
                                startIndex: startDescIndex,
                                endIndex: query.length,
                                maxLine: 2,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                      ),
                      SizedBox(
                        height: 34,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: getDateTimeTaskWidget(expiryTimeStamp),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
