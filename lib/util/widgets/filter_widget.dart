import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum FilterType { all, expired }

String getFilterString({FilterType filterType = FilterType.all}) {
  switch (filterType) {
    case FilterType.all:
      return "All";
    case FilterType.expired:
      return "Expired";
  }
}

BorderRadius getStyleBorderRadius(FilterType filterType) {
  switch (filterType) {
    case FilterType.all:
      return const BorderRadius.only(
        topLeft: Radius.circular(10.0),
        bottomLeft: Radius.circular(10.0),
      );
    case FilterType.expired:
      return const BorderRadius.only(
        topRight: Radius.circular(10.0),
        bottomRight: Radius.circular(10.0),
      );
  }
}

Color getFilterColor(FilterType filterType) {
  switch (filterType) {
    case FilterType.all:
      return AppColors.tropicSea;
    case FilterType.expired:
      return AppColors.bleachedSilk;
  }
}

Color getFilterTextColor(FilterType filterType) {
  switch (filterType) {
    case FilterType.all:
      return AppColors.white;
    case FilterType.expired:
      return AppColors.sonicSilver;
  }
}

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          children: [
            FilterItemWidget(
              filterType: FilterType.all,
            ),
            FilterItemWidget(
              filterType: FilterType.expired,
            ),
          ],
        ),
        Container(
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
            ))
      ],
    );
  }
}

class FilterItemWidget extends StatelessWidget {
  const FilterItemWidget({super.key, required this.filterType});

  final FilterType filterType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 86,
      decoration: BoxDecoration(
          borderRadius: getStyleBorderRadius(filterType),
          color: getFilterColor(filterType)),
      child: Center(
        child: Text(
          getFilterString(filterType: filterType),
          style: GoogleFonts.inter(
            textStyle: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: getFilterTextColor(filterType)),
          ),
        ),
      ),
    );
  }
}
