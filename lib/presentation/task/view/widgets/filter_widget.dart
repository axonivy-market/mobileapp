import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/core/shared/extensions/sort_type_ext.dart';
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
  const FilterWidget({
    super.key,
    required this.filterState,
    required this.sortState,
  });
  final FilterState filterState;
  final SortState sortState;
  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  bool isSortButtonTapped = false;
  bool isDropdownOpen = false;
  @override
  Widget build(BuildContext context) {
    final filterBloc = BlocProvider.of<FilterBloc>(context);
    final sortBloc = BlocProvider.of<SortBloc>(context);
    final activeFilter = filterBloc.state.activeFilter;
    final activeSortType = sortBloc.state.activeSortType;
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => filterBloc),
        BlocProvider(create: (context) => sortBloc)
      ],
      child: Row(
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
                      color:
                          getFilterColor(activeFilter == FilterType.expired)),
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
                case MainSortType.priority:
                  sortBloc.add(SortEvent(
                      [MainSortType.priority, SubSortType.mostImportant]));
                case MainSortType.name:
                  sortBloc
                      .add(SortEvent([MainSortType.name, SubSortType.aToZ]));
                case MainSortType.creationDate:
                  sortBloc.add(SortEvent(
                      [MainSortType.creationDate, SubSortType.newest]));
                case MainSortType.expiryDate:
                  sortBloc.add(SortEvent(
                      [MainSortType.expiryDate, SubSortType.mostUrgent]));
                case SubSortType.newest:
                  sortBloc.add(SortEvent(
                      [MainSortType.creationDate, SubSortType.newest]));
                case SubSortType.oldest:
                  sortBloc.add(SortEvent(
                      [MainSortType.creationDate, SubSortType.oldest]));
                case SubSortType.aToZ:
                  sortBloc
                      .add(SortEvent([MainSortType.name, SubSortType.aToZ]));
                case SubSortType.zToA:
                  sortBloc
                      .add(SortEvent([MainSortType.name, SubSortType.zToA]));
                case SubSortType.mostImportant:
                  sortBloc.add(SortEvent(
                      [MainSortType.priority, SubSortType.mostImportant]));
                case SubSortType.leastImportant:
                  sortBloc.add(SortEvent(
                      [MainSortType.priority, SubSortType.leastImportant]));
                case SubSortType.mostUrgent:
                  sortBloc.add(SortEvent(
                      [MainSortType.expiryDate, SubSortType.mostUrgent]));
                case SubSortType.leastUrgent:
                  sortBloc.add(SortEvent(
                      [MainSortType.expiryDate, SubSortType.leastUrgent]));
              }

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
              setState(
                () {
                  isSortButtonTapped = true;
                },
              );
              return [
                PopupMenuItem<SortType>(
                  value: MainSortType.priority,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        MainSortType.priority.toString(),
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontSize: 17,
                            color:
                                activeSortType.contains(MainSortType.priority)
                                    ? AppColors.tropicSea
                                    : AppColors.eerieBlack,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      if (activeSortType.contains(MainSortType.priority))
                        const Icon(
                          Icons.check,
                          color: AppColors.tropicSea,
                        ),
                    ],
                  ),
                ),
                PopupMenuItem<SortType>(
                  value: MainSortType.name,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        MainSortType.name.toString(),
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontSize: 17,
                              color: activeSortType.contains(MainSortType.name)
                                  ? AppColors.tropicSea
                                  : AppColors.eerieBlack,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      if (activeSortType.contains(MainSortType.name))
                        const Icon(
                          Icons.check,
                          color: AppColors.tropicSea,
                        )
                    ],
                  ),
                ),
                PopupMenuItem<SortType>(
                  value: MainSortType.creationDate,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        MainSortType.creationDate.toString(),
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontSize: 17,
                              color: activeSortType
                                      .contains(MainSortType.creationDate)
                                  ? AppColors.tropicSea
                                  : AppColors.eerieBlack,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      if (activeSortType.contains(MainSortType.creationDate))
                        const Icon(
                          Icons.check,
                          color: AppColors.tropicSea,
                        )
                    ],
                  ),
                ),
                PopupMenuItem<SortType>(
                  value: MainSortType.expiryDate,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        MainSortType.expiryDate.toString(),
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontSize: 17,
                              color: activeSortType
                                      .contains(MainSortType.expiryDate)
                                  ? AppColors.tropicSea
                                  : AppColors.eerieBlack,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      if (activeSortType.contains(MainSortType.expiryDate))
                        const Icon(
                          Icons.check,
                          color: AppColors.tropicSea,
                        )
                    ],
                  ),
                ),
                const PopupMenuDivider(),
                PopupMenuItem<SubSortType>(
                  value: activeSortType.getSubTypes()[0],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        activeSortType.getSubTypes()[0].toString(),
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontSize: 17,
                              color: activeSortType.isSubTypeActive(0)
                                  ? AppColors.tropicSea
                                  : AppColors.eerieBlack,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      if (activeSortType.isSubTypeActive(0))
                        const Icon(
                          Icons.check,
                          color: AppColors.tropicSea,
                        )
                    ],
                  ),
                ),
                PopupMenuItem<SortType>(
                  value: activeSortType.getSubTypes()[1],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        activeSortType.getSubTypes()[1].toString(),
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontSize: 17,
                              color: activeSortType.isSubTypeActive(1)
                                  ? AppColors.tropicSea
                                  : AppColors.eerieBlack,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      if (activeSortType.isSubTypeActive(1))
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
                          isSortButtonTapped
                              ? AppColors.white
                              : AppColors.black,
                          BlendMode.srcIn)),
                  Text(
                    "tasksView.sort".tr(),
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
      ),
    );
  }

  Color getFilterColor(bool isCurrentFilterType) {
    return isCurrentFilterType ? AppColors.tropicSea : AppColors.bleachedSilk;
  }

  Color getFilterTextColor(bool isCurrentFilterType) {
    return isCurrentFilterType ? AppColors.white : AppColors.sonicSilver;
  }
}
