import 'dart:math';

import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum DateTimeTaskType { normal, expired }

enum PriorityTaskType { normal, critical }

Widget getIconPriority(PriorityTaskType priorityTaskType) {
  switch (priorityTaskType) {
    case PriorityTaskType.critical:
      return AppAssets.icons.priorityHigh.svg(
        colorFilter: const ColorFilter.mode(
          AppColors.watermelonade,
          BlendMode.srcIn,
        ),
      );
    case PriorityTaskType.normal:
      return AppAssets.icons.priorityLow.svg();
  }
}

Widget getDateTimeTaskWidget(DateTimeTaskType dateTimeTaskType) {
  switch (dateTimeTaskType) {
    case DateTimeTaskType.expired:
      return Row(
        children: [
          Text(
            "Expired",
            style: GoogleFonts.inter(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: AppColors.watermelonade,
            ),
          ),
          AppAssets.icons.chevronRight.svg(
              colorFilter: const ColorFilter.mode(
                  AppColors.watermelonade, BlendMode.srcIn))
        ],
      );
    case DateTimeTaskType.normal:
      return Row(
        children: [
          Text(
            "10.11.23",
            style: GoogleFonts.inter(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: AppColors.sonicSilver,
            ),
          ),
          AppAssets.icons.chevronRight.svg()
        ],
      );
  }
}

class TaskItemWidget extends StatelessWidget {
  TaskItemWidget({super.key});
  final Random _random = Random();

  PriorityTaskType getRandomPriorityType() {
    final int randomIndex = _random.nextInt(PriorityTaskType.values.length);
    return PriorityTaskType.values[randomIndex];
  }

  DateTimeTaskType getRandomDateTimeTaskType() {
    final int randomIndex = _random.nextInt(PriorityTaskType.values.length);
    return DateTimeTaskType.values[randomIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.bleachedSilk,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getIconPriority(getRandomPriorityType()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Elevator Maintenance for Axon Ivy",
                style: GoogleFonts.inter(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: AppColors.eerieBlack),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    // max width,
                    width: MediaQuery.of(context).size.width - 42 - 92 - 10,
                    child: Text(
                      "Elevator #14574 at Axon Active needs to be maintained. Date:10/11/2023, Time: ",
                      style: GoogleFonts.inter(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: AppColors.sonicSilver,
                      ),
                    ),
                  ),
                  getDateTimeTaskWidget(getRandomDateTimeTaskType())
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
