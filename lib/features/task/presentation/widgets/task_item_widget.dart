import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:axon_ivy/shared/extensions/extensions.dart';
import 'package:axon_ivy/shared/widgets/text_highlight_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget getDateTimeTaskWidget(
    DateTime? dateTime, BuildContext context, bool isTaskDone, bool isOffline) {
  if (dateTime == null) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isOffline)
          AppAssets.icons.iconCloudOffTaskItem.svg(
              height: 16.h,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.onSecondary, BlendMode.srcIn)),
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
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isOffline)
          AppAssets.icons.iconCloudOffTaskItem.svg(
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
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isOffline)
          AppAssets.icons.iconCloudOffTaskItem.svg(
              height: 16.h,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.onSecondary, BlendMode.srcIn)),
        5.horizontalSpace,
        Text(
          dateTime.formatDateYearWithTwoNumber,
          style: GoogleFonts.inter(
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
            color: Theme.of(context).colorScheme.onSecondary,
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
    this.onTap,
    this.onLongPress,
    this.isSearchPage = false,
  });

  final String name;
  final String description;
  final int priority;
  final DateTime? expiryTimeStamp;
  final String query;
  final bool isTaskDone;
  final bool isOffline;
  final bool isSearchPage;
  final void Function()? onTap;
  final void Function()? onLongPress;

  @override
  Widget build(BuildContext context) {
    int startNameIndex = name.toLowerCase().indexOf(query.toLowerCase());
    int startDescIndex = description.toLowerCase().indexOf(query.toLowerCase());

    return Card(
      margin: EdgeInsets.zero,
      color: Colors.transparent,
      elevation: 0,
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 2, vertical: 10).r,
        visualDensity: VisualDensity(
          vertical: ScreenUtil().screenHeight > 845.0
              ? 0
              : -2, // 845 is the height of the iPhone 13. Using Device Preview to check other screens
        ),
        horizontalTitleGap: 0,
        minLeadingWidth: 0,
        minVerticalPadding: 0,
        onTap: onTap,
        onLongPress: onLongPress,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: Theme.of(context).colorScheme.outline, width: 1),
          borderRadius: BorderRadius.circular(12).r,
        ),
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            priority.priorityIcon(context),
          ],
        ),
        title: TextHighlightWidget(
          isTaskDone: isTaskDone,
          isSearchPage: isSearchPage,
          text: name,
          textColor: getTaskNameColor(context, query, isTaskDone),
          startIndex: startNameIndex,
          endIndex: query.length,
          maxLine: 1,
          fontSize: 17.sp,
          fontWeight: FontWeight.w600,
        ),
        subtitle: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Flexible(
              fit: FlexFit.tight,
              child: TextHighlightWidget(
                isTaskDone: isTaskDone,
                isSearchPage: isSearchPage,
                textColor: Theme.of(context).colorScheme.onSecondary,
                text: description.isEmptyOrNull
                    ? "tasksView.noTaskDescription".tr()
                    : description,
                startIndex: startDescIndex,
                endIndex: query.length,
                maxLine: 2,
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            getDateTimeTaskWidget(
                expiryTimeStamp, context, isTaskDone, isOffline),
          ],
        ),
        tileColor: Theme.of(context).colorScheme.onPrimaryContainer,
      ),
    );
  }
}
