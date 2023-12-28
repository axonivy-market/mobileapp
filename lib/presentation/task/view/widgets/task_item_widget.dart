import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/core/shared/extensions/date_time_ext.dart';
import 'package:axon_ivy/core/shared/extensions/number_ext.dart';
import 'package:axon_ivy/core/shared/extensions/string_ext.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget getDateTimeTaskWidget(DateTime? dateTime) {
  if (dateTime == null) {
    return Row(
      children: [
        SizedBox(
          width: 50,
          child: Text(
            "",
            style: GoogleFonts.inter(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: AppColors.sonicSilver,
            ),
            overflow: TextOverflow.ellipsis,
            softWrap: true,
          ),
        ),
        AppAssets.icons.chevronRight.svg()
      ],
    );
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
  });

  final String name;
  final String description;
  final int priority;
  final DateTime? expiryTimeStamp;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.fromLTRB(5, 10, 0, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.bleachedSilk,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          priority.priorityIcon,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 21 - 42 - 20,
                child: Text(
                  name.isEmptyOrNull ? "tasksView.noTaskName".tr() : name,
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
                    height: 34,
                    width: MediaQuery.of(context).size.width - 42 - 92 - 10,
                    child: Text(
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
                    ),
                  ),
                  getDateTimeTaskWidget(expiryTimeStamp)
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
