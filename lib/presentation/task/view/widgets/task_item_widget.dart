import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
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
          formatDate(dateTime),
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

Widget getIconPriority(int priorityNumber) {
  switch (priorityNumber) {
    case 0:
      return AppAssets.icons.priorityException.svg();
    case 1:
      return AppAssets.icons.priorityHigh.svg();
    case 2:
      return const SizedBox(
        width: 21,
        height: 21,
      );
    default:
      return AppAssets.icons.priorityLow.svg();
  }
}

String formatDate(DateTime dateTime) {
  String formattedDate =
      "${_twoDigits(dateTime.day)}.${_twoDigits(dateTime.month)}.${_twoDigits(dateTime.year % 100)}";
  return formattedDate;
}

String _twoDigits(int n) {
  if (n >= 10) return "$n";
  return "0$n";
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
      margin: const EdgeInsets.only(bottom: 10),
      height: 82,
      padding: const EdgeInsets.fromLTRB(5, 10, 0, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.bleachedSilk,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getIconPriority(priority),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                query.isEmptyOrNull || startNameIndex == -1
                    ? Text(
                        name.isEmptyOrNull ? "tasksView.noTaskName".tr() : name,
                        style: GoogleFonts.inter(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: query.isEmptyOrNull
                                ? AppColors.eerieBlack
                                : AppColors.darkSouls),
                        overflow: TextOverflow.ellipsis,
                      )
                    : _taskNameRichText(
                        text: name,
                        startIndex: startNameIndex,
                        maxLine: 1,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                query.isEmptyOrNull || startDescIndex == -1
                    ? Text(
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
                      )
                    : _taskNameRichText(
                        text: description,
                        startIndex: startDescIndex,
                        maxLine: 2,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: getDateTimeTaskWidget(expiryTimeStamp),
          ),
          const SizedBox(width: 5),
        ],
      ),
    );
  }

  Widget _taskNameRichText({
    required String text,
    required int startIndex,
    required int maxLine,
    required double fontSize,
    required FontWeight fontWeight,
  }) {
    return RichText(
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        text: text.substring(0, startIndex),
        style: GoogleFonts.inter(
            color: AppColors.darkSouls,
            fontWeight: fontWeight,
            fontSize: fontSize),
        children: [
          TextSpan(
            text: text.substring(startIndex, startIndex + query.length),
            style: GoogleFonts.inter(
                color: AppColors.eerieBlack,
                fontWeight: fontWeight,
                fontSize: fontSize),
          ),
          TextSpan(
              text: text.substring(startIndex + query.length),
              style: GoogleFonts.inter(
                  color: AppColors.darkSouls,
                  fontWeight: fontWeight,
                  fontSize: fontSize)),
        ],
      ),
    );
  }
}
