import 'package:axon_ivy/core/extensions/date_time_ext.dart';
import 'package:axon_ivy/core/extensions/number_ext.dart';
import 'package:axon_ivy/core/extensions/string_ext.dart';
import 'package:axon_ivy/core/util/widgets/text_highlight_widget.dart';
import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget getDateTimeTaskWidget(DateTime? dateTime, BuildContext context) {
  if (dateTime == null) {
    return AppAssets.icons.chevronRight.svg(
        width: 21.h,
        height: 21.h,
        colorFilter: ColorFilter.mode(
            Theme.of(context).colorScheme.surface, BlendMode.srcIn));
  }

  DateTime now = DateTime.now().toUtc();
  if (dateTime.isBefore(now)) {
    return Row(
      children: [
        Text(
          "tasksView.expired".tr(),
          style: GoogleFonts.inter(
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
            color: Theme.of(context).colorScheme.error,
          ),
          overflow: TextOverflow.ellipsis,
          softWrap: true,
        ),
        AppAssets.icons.chevronRight.svg(
          width: 21.h,
          height: 21.h,
          colorFilter: ColorFilter.mode(
              Theme.of(context).colorScheme.error, BlendMode.srcIn),
        ),
      ],
    );
  } else {
    return Row(
      children: [
        Text(
          dateTime.formatDateYearWithTwoNumber(dateTime),
          style: GoogleFonts.inter(
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
            color: Theme.of(context).colorScheme.secondary,
          ),
          overflow: TextOverflow.ellipsis,
          softWrap: true,
        ),
        AppAssets.icons.chevronRight.svg(
            width: 21.h,
            height: 21.h,
            colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.surface, BlendMode.srcIn))
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
                  padding: const EdgeInsets.only(right: 20).h,
                  child: query.isEmptyOrNull || startNameIndex == -1
                      ? Text(
                          name.isEmptyOrNull
                              ? "tasksView.noTaskName".tr()
                              : name,
                          style: GoogleFonts.inter(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                            color: query.isEmptyOrNull
                                ? Theme.of(context).colorScheme.surface
                                : Theme.of(context).colorScheme.secondary,
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
                        child: getDateTimeTaskWidget(expiryTimeStamp, context),
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
