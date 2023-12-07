import 'dart:math';

import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum DateTimeTaskType { normal, expired }

enum PriorityTaskType { exception, high, normal, low }

Widget getIconPriority(PriorityTaskType priorityTaskType) {
  switch (priorityTaskType) {
    case PriorityTaskType.exception:
      return AppAssets.icons.priorityException.svg();
    case PriorityTaskType.high:
      return AppAssets.icons.priorityHigh.svg();
    case PriorityTaskType.normal:
      return const SizedBox.square();
    case PriorityTaskType.low:
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
    final int randomIndex = _random.nextInt(DateTimeTaskType.values.length);
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
          Column(
            children: [
              SizedBox(
                height: 24,
                width: 24,
                child: getIconPriority(getRandomPriorityType()),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 21 - 42 - 20,
                child: Text(
                  (Random().nextBool())
                      ? "Elevator Maintenance for Axon Ivy"
                      : "Elevator Maintenance for Axon Ivy Elevator Maintenance for Axon Ivy",
                  style: GoogleFonts.inter(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.eerieBlack),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    // max width,
                    width: MediaQuery.of(context).size.width - 42 - 92 - 10,
                    child: Text(
                      (Random().nextBool())
                          ? "Elevator #14574 at Axon Active needs to be maintained."
                          : "Elevator #14574 at Axon Active needs to be maintained. Pertains to the scheduled upkeep and inspection of an elevator situated at Axon Ivy. This routine maintenance involves thorough examinations, safety feature testing, and addressing any identified issues.",
                      style: GoogleFonts.inter(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: AppColors.sonicSilver,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
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
