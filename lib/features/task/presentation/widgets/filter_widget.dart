import 'package:axon_ivy/features/task/presentation/bloc/filter_bloc/filter_bloc.dart';
import 'package:axon_ivy/features/task/presentation/bloc/filter_bloc/filter_event.dart';
import 'package:axon_ivy/features/task/presentation/bloc/filter_bloc/filter_state.dart';
import 'package:axon_ivy/shared/extensions/sort_type_ext.dart';
import 'package:axon_ivy/shared/resources/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../generated/assets.gen.dart';
import '../bloc/sort_bloc/sort_bloc.dart';
import '../bloc/sort_bloc/sort_event.dart';

class FilterWidget extends StatefulWidget {
  const FilterWidget({
    super.key,
  });

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
    final activeSortType = sortBloc.state.activeSortType;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocBuilder<FilterBloc, FilterState>(
          builder: (context, state) {
            return Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    filterBloc.add(FilterEvent(FilterType.all));
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(86.w, 40.h)),
                    padding: const MaterialStatePropertyAll(EdgeInsets.zero),
                    elevation: const MaterialStatePropertyAll(0.0),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                          left: const Radius.circular(10.0).r,
                        ),
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll(
                      getFilterBackgroundColor(
                        state.activeFilter == FilterType.all,
                      ),
                    ),
                  ),
                  child: Text(
                    "tasksView.all".tr(),
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: state.activeFilter == FilterType.all
                            ? FontWeight.w500
                            : FontWeight.w400,
                        color: getFilterTextColor(
                          state.activeFilter == FilterType.all,
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    filterBloc.add(FilterEvent(FilterType.expired));
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(86.w, 40.h)),
                    padding: const MaterialStatePropertyAll(EdgeInsets.zero),
                    elevation: const MaterialStatePropertyAll(0.0),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                          right: const Radius.circular(10.0).r,
                        ),
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll(
                      getFilterBackgroundColor(
                        state.activeFilter == FilterType.expired,
                      ),
                    ),
                  ),
                  child: Text(
                    "tasksView.expired".tr(),
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: state.activeFilter == FilterType.expired
                            ? FontWeight.w500
                            : FontWeight.w400,
                        color: getFilterTextColor(
                          state.activeFilter == FilterType.expired,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.all(const Radius.circular(10.0).r),
          child: Material(
            color: Colors.transparent,
            child: PopupMenuButton<SortType>(
              elevation: 10,
              clipBehavior: Clip.antiAlias,
              shadowColor: Colors.black.withOpacity(0.3),
              color: Theme.of(context).colorScheme.onPrimaryContainer,
              position: PopupMenuPosition.under,
              surfaceTintColor:
                  Theme.of(context).colorScheme.onPrimaryContainer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(const Radius.circular(10.0).r),
              ),
              constraints: BoxConstraints(minWidth: 182.r),
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
                              fontSize: 17.sp,
                              color:
                                  activeSortType.contains(MainSortType.priority)
                                      ? Theme.of(context).colorScheme.primary
                                      : Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        if (activeSortType.contains(MainSortType.priority))
                          Icon(
                            Icons.check,
                            color: Theme.of(context).colorScheme.primary,
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
                              fontSize: 17.sp,
                              color: activeSortType.contains(MainSortType.name)
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        if (activeSortType.contains(MainSortType.name))
                          Icon(
                            Icons.check,
                            color: Theme.of(context).colorScheme.primary,
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
                              fontSize: 17.sp,
                              color: activeSortType
                                      .contains(MainSortType.creationDate)
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        if (activeSortType.contains(MainSortType.creationDate))
                          Icon(
                            Icons.check,
                            color: Theme.of(context).colorScheme.primary,
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
                              fontSize: 17.sp,
                              color: activeSortType
                                      .contains(MainSortType.expiryDate)
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        if (activeSortType.contains(MainSortType.expiryDate))
                          Icon(
                            Icons.check,
                            color: Theme.of(context).colorScheme.primary,
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
                              fontSize: 17.sp,
                              color: activeSortType.isSubTypeActive(0)
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        if (activeSortType.isSubTypeActive(0))
                          Icon(
                            Icons.check,
                            color: Theme.of(context).colorScheme.primary,
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
                              fontSize: 17.sp,
                              color: activeSortType.isSubTypeActive(1)
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        if (activeSortType.isSubTypeActive(1))
                          Icon(
                            Icons.check,
                            color: Theme.of(context).colorScheme.primary,
                          )
                      ],
                    ),
                  ),
                ];
              },
              child: Container(
                height: 40.h,
                width: 80.w,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).colorScheme.outline),
                    borderRadius: BorderRadius.circular(10).r,
                    color: isSortButtonTapped
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.onPrimaryContainer),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppAssets.icons.filter.svg(
                        colorFilter: ColorFilter.mode(
                            isSortButtonTapped
                                ? Theme.of(context).colorScheme.background
                                : Theme.of(context).colorScheme.surface,
                            BlendMode.srcIn)),
                    Text(
                      "tasksView.sort".tr(),
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 17.sp,
                          color: isSortButtonTapped
                              ? Theme.of(context).colorScheme.background
                              : Theme.of(context).colorScheme.surface),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Color getFilterBackgroundColor(bool isCurrentFilterType) {
    return isCurrentFilterType
        ? Theme.of(context).colorScheme.primary
        : Theme.of(context).colorScheme.onPrimaryContainer;
  }

  Color getFilterTextColor(bool isCurrentFilterType) {
    return isCurrentFilterType
        ? Theme.of(context).colorScheme.onSurface
        : Theme.of(context).colorScheme.secondary;
  }
}
