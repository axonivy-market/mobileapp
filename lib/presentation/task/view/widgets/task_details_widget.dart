import 'dart:ui';

import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/core/shared/extensions/string_ext.dart';
import 'package:axon_ivy/data/models/task/task.dart';
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
          formatDate(dateTime),
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

Widget getPriorityName(int priorityNumber) {
  switch (priorityNumber) {
    case 0:
      return Text(
        "Exception",
        style: GoogleFonts.inter(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: AppColors.sonicSilver,
        ),
      );
    case 1:
      return Text(
        "High",
        style: GoogleFonts.inter(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: AppColors.sonicSilver,
        ),
      );
    case 2:
      return Text(
        "Normal",
        style: GoogleFonts.inter(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: AppColors.sonicSilver,
        ),
      );
    default:
      return Text(
        "Low",
        style: GoogleFonts.inter(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: AppColors.sonicSilver,
        ),
      );
  }
}

String formatDate(DateTime dateTime) {
  String formattedDate =
      "${_twoDigits(dateTime.day)}.${_twoDigits(dateTime.month)}.${dateTime.year}";
  return formattedDate;
}

String _twoDigits(int n) {
  if (n >= 10) return "$n";
  return "0$n";
}

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
        Navigator.of(context).pop();
      },
      child: Material(
        color: Colors.transparent,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
          child: Builder(
            builder: (context) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Dialog(
                    insetPadding: const EdgeInsets.symmetric(horizontal: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(5, 15, 0, 15),
                        decoration: BoxDecoration(
                          color: AppColors.bleachedSilk,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 0),
                                  child: SizedBox.square(
                                    dimension: 21,
                                    child: getIconPriority(task.priority),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                      const SizedBox(
                                        height: 2,
                                      ),
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
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              AppAssets.icons.paperclip
                                                  .svg(height: 16),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "Attachments",
                                                style: GoogleFonts.inter(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.eerieBlack,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "${task.documents.length} documents",
                                                style: GoogleFonts.inter(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color:
                                                        AppColors.sonicSilver),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 0.5,
                                        color: AppColors.babyTalkGrey,
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              AppAssets.icons.clock
                                                  .svg(height: 16),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "Expiry date",
                                                style: GoogleFonts.inter(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.eerieBlack,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              getDateTimeTaskWidget(
                                                  task.expiryTimeStamp)
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 0.5,
                                        color: AppColors.babyTalkGrey,
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              AppAssets.icons.calendar
                                                  .svg(height: 16),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "Creation date",
                                                style: GoogleFonts.inter(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.eerieBlack,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              getDateTimeTaskWidget(
                                                  task.startTimeStamp),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 0.5,
                                        color: AppColors.babyTalkGrey,
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              AppAssets.icons.category2
                                                  .svg(height: 16),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "Category",
                                                style: GoogleFonts.inter(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.eerieBlack,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                task.category,
                                                style: GoogleFonts.inter(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color:
                                                        AppColors.sonicSilver),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 0.5,
                                        color: AppColors.babyTalkGrey,
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              AppAssets.icons.priorityHighBlack
                                                  .svg(height: 16),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "Priority",
                                                style: GoogleFonts.inter(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.eerieBlack,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              getPriorityName(task.priority)
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 0.5,
                                        color: AppColors.babyTalkGrey,
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              AppAssets.icons.users
                                                  .svg(height: 16),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "Responsible",
                                                style: GoogleFonts.inter(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.eerieBlack,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                task.activatorName,
                                                style: GoogleFonts.inter(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color:
                                                        AppColors.sonicSilver),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 0),
                                  child: SizedBox.square(
                                    dimension: 21,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Dialog(
                    insetPadding: const EdgeInsets.fromLTRB(128, 20, 128, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(1, 15, 1, 15),
                        decoration: BoxDecoration(
                          color: AppColors.bleachedSilk,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Start task",
                              style: GoogleFonts.inter(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: AppColors.tropicSea,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            AppAssets.icons.arrowRight.svg(
                              height: 21,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
