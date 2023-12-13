import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
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
            'No expiry date',
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
          "Expired".tr(),
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
  });
  final String name;
  final String description;
  final int priority;
  final DateTime? expiryTimeStamp;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.bleachedSilk,
      ),
      child: Row(
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
