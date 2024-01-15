import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/presentation/task/bloc/filter_boc/filter_bloc.dart';
import 'package:axon_ivy/presentation/task/bloc/filter_boc/filter_event.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../util/resources/constants.dart';
import '../../bloc/filter_boc/filter_state.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key, required this.state});
  final FilterState state;

  @override
  Widget build(BuildContext context) {
    final filterBloc = BlocProvider.of<FilterBloc>(context);
    final activeFilter = filterBloc.state.activeFilter;
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
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.fromLTRB(9, 8, 9, 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.bleachedSilk),
            child: Row(
              children: [
                AppAssets.icons.filter.svg(),
                Text(
                  "Sort",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400, fontSize: 17),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Color getFilterColor(bool isCurrentFilterType) {
    return isCurrentFilterType ? AppColors.tropicSea : AppColors.bleachedSilk;
  }

  Color getFilterTextColor(bool isCurrentFilterType) {
    return isCurrentFilterType ? AppColors.white : AppColors.sonicSilver;
  }
}
