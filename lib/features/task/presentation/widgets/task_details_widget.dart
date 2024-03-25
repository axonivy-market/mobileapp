import 'dart:ui';

import 'package:axon_ivy/core/extensions/date_time_ext.dart';
import 'package:axon_ivy/core/extensions/number_ext.dart';
import 'package:axon_ivy/core/extensions/string_ext.dart';
import 'package:axon_ivy/core/util/widgets/widgets.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskDetailsWidget extends StatelessWidget {
  const TaskDetailsWidget({
    super.key,
    required this.task,
    required this.onPressed,
  });

  final TaskIvy task;
  final Function(TaskIvy) onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Material(
        color: Colors.transparent,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildDialog(context),
                20.verticalSpace,
                _buildStartTaskButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDialog(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15).r,
        padding: const EdgeInsets.fromLTRB(5, 15, 5, 15).r,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(10).r,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTaskHeader(context),
            15.verticalSpace,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 21).r,
              child: Column(
                children: [
                  TaskInfoRowWidget(
                    icon: AppAssets.icons.paperclip.svg(
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.surface,
                            BlendMode.srcIn),
                        height: 16.r),
                    title: "taskDetails.attachments".tr(),
                    value: "taskDetails.documents"
                        .plural(task.caseTask?.documents.length ?? 0),
                  ),
                  TaskInfoRowWidget(
                    icon: AppAssets.icons.clock.svg(
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.surface,
                            BlendMode.srcIn),
                        height: 16.r),
                    title: "taskDetails.expiryDate".tr(),
                    value: task.expiryTimeStamp == null
                        ? "taskDetails.na".tr()
                        : task.expiryTimeStamp!.formatDateYearWithFourNumber,
                  ),
                  TaskInfoRowWidget(
                    icon: AppAssets.icons.calendar.svg(
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.surface,
                            BlendMode.srcIn),
                        height: 16.r),
                    title: "taskDetails.creationDate".tr(),
                    value: task.startTimeStamp.formatDateYearWithFourNumber,
                  ),
                  TaskInfoRowWidget(
                    icon: AppAssets.icons.category2.svg(
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.surface,
                            BlendMode.srcIn),
                        height: 16.r),
                    title: "taskDetails.category".tr(),
                    value: task.category.isNotEmptyOrNull
                        ? task.category
                        : "taskDetails.na".tr(),
                  ),
                  TaskInfoRowWidget(
                    icon: AppAssets.icons.priorityHighBlack.svg(
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.surface,
                            BlendMode.srcIn),
                        height: 16.r),
                    title: "taskDetails.priority".tr(),
                    value: task.priority.priorityName,
                  ),
                  TaskInfoRowWidget(
                    icon: AppAssets.icons.users.svg(
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.surface,
                            BlendMode.srcIn),
                        height: 16.r),
                    title: "taskDetails.responsible".tr(),
                    value: task.activatorName,
                    isShowDivider: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTaskHeader(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox.square(
          dimension: 21.r,
          child: task.priority.priorityIcon(context),
        ),
        5.verticalSpace,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                task.name.isEmptyOrNull
                    ? "tasksView.noTaskName".tr()
                    : task.name,
                style: GoogleFonts.inter(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.surface),
              ),
              2.verticalSpace,
              Text(
                task.description.isEmptyOrNull
                    ? 'tasksView.noTaskDescription'.tr()
                    : task.description,
                style: GoogleFonts.inter(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildStartTaskButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
        onPressed(task);
      },
      child: Container(
        width: 136.h,
        height: 44.w,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(8).r,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Your dialog content here
            Text(
              "taskDetails.startTask".tr(),
              style: GoogleFonts.inter(
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            5.horizontalSpace,
            AppAssets.icons.arrowRight.svg(
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.primary, BlendMode.srcIn),
              height: 21.r,
            ),
          ],
        ),
      ),
    );
  }
}
