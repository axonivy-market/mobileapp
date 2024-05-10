import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:axon_ivy/shared/extensions/date_time_ext.dart';
import 'package:axon_ivy/shared/extensions/number_ext.dart';
import 'package:axon_ivy/shared/extensions/string_ext.dart';
import 'package:axon_ivy/shared/widgets/text_highlight_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget getDateTimeTaskWidget(
    DateTime? dateTime, BuildContext context, bool isTaskDone, bool isOffline) {
  if (dateTime == null) {
    return Row(
      children: [
        if (isOffline)
          AppAssets.icons.cloudOff.svg(
              height: 16.h,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.secondary, BlendMode.srcIn)),
        2.horizontalSpace,
        !isTaskDone
            ? AppAssets.icons.chevronRight.svg(
                height: 21.h,
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.surface, BlendMode.srcIn))
            : 5.horizontalSpace,
      ],
    );
  }

  DateTime now = DateTime.now().toUtc();
  if (dateTime.isBefore(now)) {
    return Row(
      children: [
        if (isOffline)
          AppAssets.icons.cloudOff.svg(
              height: 16.h,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.secondary, BlendMode.srcIn)),
        5.horizontalSpace,
        Text(
          "tasksView.expired".tr(),
          style: GoogleFonts.inter(
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
            color: isTaskDone
                ? Theme.of(context).colorScheme.secondary
                : Theme.of(context).colorScheme.error,
          ),
          overflow: TextOverflow.ellipsis,
          softWrap: true,
        ),
        !isTaskDone
            ? AppAssets.icons.chevronRight.svg(
                height: 21.h,
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.error, BlendMode.srcIn),
              )
            : 5.horizontalSpace,
      ],
    );
  } else {
    return Row(
      children: [
        if (isOffline)
          AppAssets.icons.cloudOff.svg(
              height: 16.h,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.secondary, BlendMode.srcIn)),
        5.horizontalSpace,
        Text(
          dateTime.formatDateYearWithTwoNumber,
          style: GoogleFonts.inter(
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
            color: Theme.of(context).colorScheme.secondary,
          ),
          overflow: TextOverflow.ellipsis,
          softWrap: true,
        ),
        !isTaskDone
            ? AppAssets.icons.chevronRight.svg(
                height: 21.h,
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.surface, BlendMode.srcIn))
            : 5.horizontalSpace,
      ],
    );
  }
}

Color getTaskNameColor(BuildContext context, String query, bool isTaskDone) {
  var secondaryColor = Theme.of(context).colorScheme.secondary;
  return query.isEmptyOrNull
      ? (isTaskDone ? secondaryColor : Theme.of(context).colorScheme.surface)
      : secondaryColor;
}

class TaskItemWidget extends StatelessWidget {
  const TaskItemWidget({
    super.key,
    required this.name,
    required this.description,
    required this.priority,
    required this.expiryTimeStamp,
    this.query = '',
    this.isTaskDone = false,
    this.isOffline = false,
  });

  final String name;
  final String description;
  final int priority;
  final DateTime? expiryTimeStamp;
  final String query;
  final bool isTaskDone;
  final bool isOffline;

  @override
  Widget build(BuildContext context) {
    int startNameIndex = name.toLowerCase().indexOf(query.toLowerCase());
    int startDescIndex = description.toLowerCase().indexOf(query.toLowerCase());
    return Container(
      margin: const EdgeInsets.only(bottom: 10).h,
      constraints: BoxConstraints(minHeight: 77.h),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5).h,
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.outline),
        borderRadius: BorderRadius.circular(10).h,
        color: Theme.of(context).colorScheme.onPrimaryContainer,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          priority.priorityIcon(context),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20).r,
                  child: query.isEmptyOrNull || startNameIndex == -1
                      ? Text(
                          name.isEmptyOrNull
                              ? "tasksView.noTaskName".tr()
                              : name,
                          style: GoogleFonts.inter(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                            color: getTaskNameColor(context, query, isTaskDone),
                          ),
                          overflow: TextOverflow.ellipsis,
                        )
                      : TextHighlightWidget(
                          text: name,
                          startIndex: startNameIndex,
                          endIndex: query.length,
                          maxLine: 1,
                          fontSize: 17.sp,
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
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            )
                          : TextHighlightWidget(
                              text: description,
                              startIndex: startDescIndex,
                              endIndex: query.length,
                              maxLine: 2,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                            ),
                    ),
                    SizedBox(
                      height: 35.w,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: getDateTimeTaskWidget(
                            expiryTimeStamp, context, isTaskDone, isOffline),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
