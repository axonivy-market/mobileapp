import 'dart:ui';

import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/core/shared/extensions/date_time_ext.dart';
import 'package:axon_ivy/core/shared/extensions/number_ext.dart';
import 'package:axon_ivy/core/shared/extensions/string_ext.dart';
import 'package:axon_ivy/data/models/task/task.dart';
import 'package:axon_ivy/util/widgets/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
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
                const SizedBox(
                  height: 20,
                ),
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
        margin: const EdgeInsets.symmetric(horizontal: 15),
        padding: const EdgeInsets.fromLTRB(5, 15, 5, 15),
        decoration: BoxDecoration(
          color: AppColors.bleachedSilk,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTaskHeader(),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: Column(
                children: [
                  TaskInfoRowWidget(
                    icon: AppAssets.icons.paperclip.svg(height: 16),
                    title: "taskDetails.attachments".tr(),
                    value: "taskDetails.documents"
                        .plural(task.caseTask?.documents.length ?? 0),
                  ),
                  TaskInfoRowWidget(
                    icon: AppAssets.icons.clock.svg(height: 16),
                    title: "taskDetails.expiryDate".tr(),
                    value: task.expiryTimeStamp == null
                        ? "taskDetails.na".tr()
                        : task.expiryTimeStamp!.formatDateYearWithFourNumber,
                  ),
                  TaskInfoRowWidget(
                    icon: AppAssets.icons.calendar.svg(height: 16),
                    title: "taskDetails.creationDate".tr(),
                    value: task.startTimeStamp.formatDateYearWithFourNumber,
                  ),
                  TaskInfoRowWidget(
                    icon: AppAssets.icons.category2.svg(height: 16),
                    title: "taskDetails.category".tr(),
                    value: task.category.isNotEmptyOrNull
                        ? task.category
                        : "taskDetails.na".tr(),
                  ),
                  TaskInfoRowWidget(
                    icon: AppAssets.icons.priorityHighBlack.svg(height: 16),
                    title: "taskDetails.priority".tr(),
                    value: task.priority.priorityName,
                  ),
                  TaskInfoRowWidget(
                    icon: AppAssets.icons.users.svg(height: 16),
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

  Widget _buildTaskHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox.square(
          dimension: 21,
          child: task.priority.priorityIcon,
        ),
        const SizedBox(width: 5),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                task.name.isEmptyOrNull
                    ? "tasksView.noTaskName".tr()
                    : task.name,
                style: GoogleFonts.inter(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: AppColors.eerieBlack),
              ),
              const SizedBox(height: 2),
              Text(
                task.description.isEmptyOrNull
                    ? 'tasksView.noTaskDescription'.tr()
                    : task.description,
                style: GoogleFonts.inter(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: AppColors.sonicSilver,
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
        width: 136,
        height: 44,
        decoration: BoxDecoration(
          color: AppColors.bleachedSilk,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Your dialog content here
            Text(
              "taskDetails.startTask".tr(),
              style: GoogleFonts.inter(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: AppColors.tropicSea,
              ),
            ),
            const SizedBox(width: 5),
            AppAssets.icons.arrowRight.svg(
              height: 21,
            ),
          ],
        ),
      ),
    );
  }
}
