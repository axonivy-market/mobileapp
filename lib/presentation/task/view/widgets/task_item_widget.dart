import 'dart:math';

import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum DateTimeTaskType { normal, expired }

Widget getDateTimeTaskWidget(DateTimeTaskType dateTimeTaskType) {
  switch (dateTimeTaskType) {
    case DateTimeTaskType.expired:
      return Row(
        children: [
          Text(
            "Expired".tr(),
            style: GoogleFonts.inter(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: AppColors.watermelonade,
            ),
          ),
          AppAssets.icons.chevronRight.svg(
            colorFilter: const ColorFilter.mode(
                AppColors.watermelonade, BlendMode.srcIn),
          ),
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

Widget getIconPriority(int priorityNumber) {
  switch (priorityNumber) {
    case 4:
      return AppAssets.icons.priorityException.svg();
    case 3:
      return AppAssets.icons.priorityHigh.svg();
    case 2:
      return const SizedBox.square();
    default:
      return AppAssets.icons.priorityLow.svg();
  }
}

class TaskItemWidget extends StatelessWidget {
  TaskItemWidget(
      {super.key,
      required this.name,
      required this.description,
      required this.priority});
  final String name;
  final String description;
  final int priority;

  final Random _random = Random();

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
                child: getIconPriority(priority),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 21 - 42 - 20,
                child: Text(
                  name,
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
                      description,
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
