import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/presentation/task/bloc/filter_boc/filter_bloc.dart';
import 'package:axon_ivy/presentation/task/bloc/filter_boc/filter_event.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/generated/assets.gen.dart';
import '../../../../util/resources/constants.dart';
import '../../bloc/filter_boc/filter_state.dart';
import '../../bloc/sort_bloc/sort_bloc.dart';
import '../../bloc/sort_bloc/sort_event.dart';
import '../../bloc/sort_bloc/sort_state.dart';

class FilterWidget extends StatefulWidget {
  const FilterWidget(
      {super.key, required this.filterState, required this.sortState});
  final FilterState filterState;
  final SortState sortState;
  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  bool isSortButtonTapped = false;
  bool isDropdownOpen = false;
  GlobalKey key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final filterBloc = BlocProvider.of<FilterBloc>(context);
    final sortBloc = BlocProvider.of<SortBloc>(context);
    final activeFilter = filterBloc.state.activeFilter;
    final activeSortType = sortBloc.state.activeSortType;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                filterBloc.add(FilterEvent(FilterType.all));
              },
              child: Container(
                height: 40,
                width: 86,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0)),
                    color: getFilterColor(activeFilter == FilterType.all)),
                child: Center(
                  child: Text(
                    "tasksView.all".tr(),
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: activeFilter == FilterType.all
                              ? FontWeight.w500
                              : FontWeight.w400,
                          color: getFilterTextColor(
                              activeFilter == FilterType.all)),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                filterBloc.add(FilterEvent(FilterType.expired));
              },
              child: Container(
                height: 40,
                width: 86,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)),
                    color: getFilterColor(activeFilter == FilterType.expired)),
                child: Center(
                  child: Text(
                    "tasksView.expired".tr(),
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: activeFilter == FilterType.expired
                              ? FontWeight.w500
                              : FontWeight.w400,
                          color: getFilterTextColor(
                              activeFilter == FilterType.expired)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        PopupMenuButton<SortType>(
          elevation: 0.5,
          shadowColor: AppColors.babyTalkGrey,
          color: AppColors.drwhite,
          position: PopupMenuPosition.under,
          onSelected: (value) {
            switch (value) {
              case SortType.priority:
                if (!activeSortType.contains(SortType.priority)) {
                  activeSortType.removeWhere((item) =>
                      item == SortType.name ||
                      item == SortType.creationDate ||
                      item == SortType.expiryDate);

                  setState(() {
                    activeSortType.removeLast();
                    activeSortType.add(SortType.mostIm);
                    activeSortType.add(SortType.priority);
                  });
                }
              case SortType.name:
                if (!activeSortType.contains(SortType.name)) {
                  activeSortType.removeWhere((item) =>
                      item == SortType.priority ||
                      item == SortType.creationDate ||
                      item == SortType.expiryDate);
                  setState(() {
                    activeSortType.removeLast();
                    activeSortType.add(SortType.aToZ);
                    activeSortType.add(SortType.name);
                  });
                }

              case SortType.creationDate:
                if (!activeSortType.contains(SortType.creationDate)) {
                  activeSortType.removeWhere((item) =>
                      item == SortType.priority ||
                      item == SortType.name ||
                      item == SortType.expiryDate);
                  setState(() {
                    activeSortType.removeLast();
                    activeSortType.add(SortType.newest);
                    activeSortType.add(SortType.creationDate);
                  });
                }
              case SortType.expiryDate:
                if (!activeSortType.contains(SortType.expiryDate)) {
                  activeSortType.removeWhere((item) =>
                      item == SortType.priority ||
                      item == SortType.name ||
                      item == SortType.creationDate);
                  setState(() {
                    activeSortType.removeLast();
                    activeSortType.add(SortType.mostUrg);
                    activeSortType.add(SortType.expiryDate);
                  });
                }
              case SortType.newest:
                if (activeSortType.contains(SortType.creationDate)) {
                  if (activeSortType.contains(SortType.oldest)) {
                    activeSortType
                        .removeWhere((element) => element == SortType.oldest);
                    setState(() {
                      activeSortType.add(SortType.newest);
                    });
                  }
                }

              case SortType.oldest:
                if (activeSortType.contains(SortType.creationDate)) {
                  if (activeSortType.contains(SortType.newest)) {
                    activeSortType
                        .removeWhere((element) => element == SortType.newest);
                    setState(() {
                      activeSortType.add(SortType.oldest);
                    });
                  }
                }
              case SortType.aToZ:
                if (activeSortType.contains(SortType.name)) {
                  if (activeSortType.contains(SortType.zToA)) {
                    activeSortType
                        .removeWhere((element) => element == SortType.zToA);
                    setState(() {
                      activeSortType.add(SortType.aToZ);
                    });
                  }
                }
              case SortType.zToA:
                if (activeSortType.contains(SortType.name)) {
                  if (activeSortType.contains(SortType.aToZ)) {
                    activeSortType
                        .removeWhere((element) => element == SortType.aToZ);
                    setState(() {
                      activeSortType.add(SortType.zToA);
                    });
                  }
                }
              case SortType.mostIm:
                if (activeSortType.contains(SortType.priority)) {
                  if (activeSortType.contains(SortType.leastIm)) {
                    activeSortType
                        .removeWhere((element) => element == SortType.leastIm);
                    setState(() {
                      activeSortType.add(SortType.mostIm);
                    });
                  }
                }
              case SortType.leastIm:
                if (activeSortType.contains(SortType.priority)) {
                  if (activeSortType.contains(SortType.mostIm)) {
                    activeSortType
                        .removeWhere((element) => element == SortType.mostIm);
                    setState(() {
                      activeSortType.add(SortType.leastIm);
                    });
                  }
                }
              case SortType.mostUrg:
                if (activeSortType.contains(SortType.expiryDate)) {
                  if (activeSortType.contains(SortType.leastUrg)) {
                    activeSortType
                        .removeWhere((element) => element == SortType.leastUrg);
                    setState(() {
                      activeSortType.add(SortType.mostUrg);
                    });
                  }
                }
              case SortType.leastUrg:
                if (activeSortType.contains(SortType.expiryDate)) {
                  if (activeSortType.contains(SortType.mostUrg)) {
                    activeSortType
                        .removeWhere((element) => element == SortType.mostUrg);
                    setState(() {
                      activeSortType.add(SortType.leastUrg);
                    });
                  }
                }
            }
            sortBloc.add(SortEvent(activeSortType));

            setState(() {
              isSortButtonTapped = false;
            });
          },
          onCanceled: () {
            setState(() {
              isSortButtonTapped = false;
              isDropdownOpen = false;
            });
          },
          itemBuilder: (BuildContext context) {
            setState(() {
              isSortButtonTapped = true;
            });
            return [
              PopupMenuItem<SortType>(
                value: SortType.priority,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Priority',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 17,
                            color: activeSortType.contains(SortType.priority)
                                ? AppColors.tropicSea
                                : AppColors.eerieBlack,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    if (activeSortType.contains(SortType.priority))
                      const Icon(
                        Icons.check,
                        color: AppColors.tropicSea,
                      )
                  ],
                ),
              ),
              PopupMenuItem<SortType>(
                value: SortType.name,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Name',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 17,
                            color: activeSortType.contains(SortType.name)
                                ? AppColors.tropicSea
                                : AppColors.eerieBlack,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    if (activeSortType.contains(SortType.name))
                      const Icon(
                        Icons.check,
                        color: AppColors.tropicSea,
                      )
                  ],
                ),
              ),
              PopupMenuItem<SortType>(
                value: SortType.creationDate,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Creation date',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 17,
                            color:
                                activeSortType.contains(SortType.creationDate)
                                    ? AppColors.tropicSea
                                    : AppColors.eerieBlack,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    if (activeSortType.contains(SortType.creationDate))
                      const Icon(
                        Icons.check,
                        color: AppColors.tropicSea,
                      )
                  ],
                ),
              ),
              PopupMenuItem<SortType>(
                value: SortType.expiryDate,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Expired date',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 17,
                            color: activeSortType.contains(SortType.expiryDate)
                                ? AppColors.tropicSea
                                : AppColors.eerieBlack,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    if (activeSortType.contains(SortType.expiryDate))
                      const Icon(
                        Icons.check,
                        color: AppColors.tropicSea,
                      )
                  ],
                ),
              ),
              const PopupMenuDivider(),
              PopupMenuItem<SortType>(
                value: getSortTypeValue(1, activeSortType),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      getSortSubString(1, activeSortType),
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 17,
                            color: isSelectedOption(1, activeSortType)
                                ? AppColors.tropicSea
                                : AppColors.eerieBlack,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    if (isSelectedOption(1, activeSortType))
                      const Icon(
                        Icons.check,
                        color: AppColors.tropicSea,
                      )
                  ],
                ),
              ),
              PopupMenuItem<SortType>(
                value: getSortTypeValue(2, activeSortType),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      getSortSubString(2, activeSortType),
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 17,
                            color: isSelectedOption(2, activeSortType)
                                ? AppColors.tropicSea
                                : AppColors.eerieBlack,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    if (isSelectedOption(2, activeSortType))
                      const Icon(
                        Icons.check,
                        color: AppColors.tropicSea,
                      )
                  ],
                ),
              ),
            ];
          },
          child: Container(
            clipBehavior: Clip.hardEdge,
            padding: const EdgeInsets.fromLTRB(9, 8, 9, 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: isSortButtonTapped
                    ? AppColors.tropicSea
                    : AppColors.bleachedSilk),
            child: Row(
              children: [
                AppAssets.icons.filter.svg(
                    colorFilter: ColorFilter.mode(
                        isSortButtonTapped ? AppColors.white : AppColors.black,
                        BlendMode.srcIn)),
                Text(
                  "Sort",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                      color: isSortButtonTapped
                          ? AppColors.white
                          : AppColors.eerieBlack),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  SortType getSortTypeValue(int numOrder, List<SortType> sortType) {
    if (sortType.contains(SortType.priority)) {
      return numOrder == 1 ? SortType.mostIm : SortType.leastIm;
    } else if (sortType.contains(SortType.name)) {
      return numOrder == 1 ? SortType.aToZ : SortType.zToA;
    } else if (sortType.contains(SortType.creationDate)) {
      return numOrder == 1 ? SortType.newest : SortType.oldest;
    } else {
      return numOrder == 1 ? SortType.mostUrg : SortType.leastUrg;
    }
  }

  bool isSelectedOption(int numOrder, List<SortType> sortType) {
    if (sortType.contains(SortType.priority)) {
      return numOrder == 1
          ? sortType.contains(SortType.mostIm)
          : sortType.contains(SortType.leastIm);
    } else if (sortType.contains(SortType.name)) {
      return numOrder == 1
          ? sortType.contains(SortType.aToZ)
          : sortType.contains(SortType.zToA);
    } else if (sortType.contains(SortType.creationDate)) {
      return numOrder == 1
          ? sortType.contains(SortType.newest)
          : sortType.contains(SortType.oldest);
    } else {
      return numOrder == 1
          ? sortType.contains(SortType.mostUrg)
          : sortType.contains(SortType.leastUrg);
    }
  }

  String getSortSubString(int numOrder, List<SortType> sortType) {
    if (sortType.contains(SortType.priority)) {
      return numOrder == 1 ? "Most important" : "Least important";
    } else if (sortType.contains(SortType.name)) {
      return numOrder == 1 ? "A to Z" : "Z to A";
    } else if (sortType.contains(SortType.creationDate)) {
      return numOrder == 1 ? "Newest first" : "Oldest first";
    } else {
      return numOrder == 1 ? "Most urgent" : "Least urgent";
    }
  }

  Color getFilterColor(bool isCurrentFilterType) {
    return isCurrentFilterType ? AppColors.tropicSea : AppColors.bleachedSilk;
  }

  Color getFilterTextColor(bool isCurrentFilterType) {
    return isCurrentFilterType ? AppColors.white : AppColors.sonicSilver;
  }
}
