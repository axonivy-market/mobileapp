import 'dart:ui';

import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/core/shared/extensions/date_time_ext.dart';
import 'package:axon_ivy/core/shared/extensions/number_ext.dart';
import 'package:axon_ivy/core/shared/extensions/string_ext.dart';
import 'package:axon_ivy/data/models/task/task.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskDetailsWidget extends StatelessWidget {
  const TaskDetailsWidget({
    super.key,
    required this.task,
  });

  final TaskIvy task;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pop();
      },
      child: Material(
        color: Colors.transparent,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
          child: Builder(
            builder: (context) {
              return Center(
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
              );
            },
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
                  _buildRow(
                    AppAssets.icons.paperclip.svg(height: 16),
                    "taskDetails.attactments".tr(),
                    "taskDetails.documents".plural(task.documents.length),
                  ),
                  _buildDivider(),
                  _buildRow(
                    AppAssets.icons.clock.svg(height: 16),
                    "taskDetails.expiryDate".tr(),
                    task.expiryTimeStamp == null
                        ? "taskDetails.na".tr()
                        : task.expiryTimeStamp!.formatDateYearWithFourNumber(),
                  ),
                  _buildDivider(),
                  _buildRow(
                    AppAssets.icons.calendar.svg(height: 16),
                    "taskDetails.creationDate".tr(),
                    task.startTimeStamp.formatDateYearWithFourNumber(),
                  ),
                  _buildDivider(),
                  _buildRow(
                    AppAssets.icons.category2.svg(height: 16),
                    "taskDetails.category".tr(),
                    task.category.isNotEmptyOrNull
                        ? task.category
                        : "taskDetails.na".tr(),
                  ),
                  _buildDivider(),
                  _buildRow(
                    AppAssets.icons.priorityHighBlack.svg(height: 16),
                    "taskDetails.priority".tr(),
                    task.priority.getPriorityName(),
                  ),
                  _buildDivider(),
                  _buildRow(
                    AppAssets.icons.users.svg(height: 16),
                    "taskDetails.responsible".tr(),
                    task.activatorName,
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
          child: task.priority.getPriorityIcon(),
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
              const SizedBox.square(
                dimension: 21,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 21,
        )
      ],
    );
  }

  Widget _buildRow(SvgPicture icon, String title, String value) {
    return Row(
      children: [
        icon,
        const SizedBox(
          width: 5,
        ),
        Text(
          title,
          style: GoogleFonts.inter(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: AppColors.eerieBlack,
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              value,
              style: GoogleFonts.inter(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: AppColors.sonicSilver),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 0.5,
      color: AppColors.babyTalkGrey,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
    );
  }

  Widget _buildStartTaskButton(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Center(
        child: Container(
          width: 136,
          height: 44,
          decoration: BoxDecoration(
            color: AppColors.bleachedSilk,
            borderRadius: BorderRadius.circular(8),
          ),
          child: GestureDetector(
            onTap: () {},
            child: Center(
              child: Row(
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
          ),
        ),
      ),
    );
  }

  Widget getDateTimeTaskWidget(DateTime? dateTime) {
    if (dateTime == null) {
      return Row(
        children: [
          SizedBox(
            child: Text(
              "taskDetails.na".tr(),
              style: GoogleFonts.inter(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: AppColors.sonicSilver,
              ),
            ),
          ),
        ],
      );
    } else {
      return Row(
        children: [
          Text(
            dateTime.formatDateYearWithFourNumber(),
            style: GoogleFonts.inter(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: AppColors.sonicSilver,
            ),
          ),
        ],
      );
    }
  }
}
