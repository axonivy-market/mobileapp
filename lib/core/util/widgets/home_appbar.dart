import 'package:axon_ivy/core/app/app.dart';
import 'package:axon_ivy/core/extensions/date_time_ext.dart';
import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/features/task/presentation/bloc/offline_indicator_cubit/offline_indicator_cubit.dart';
import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
    this.isShowLastUpdated = false,
    this.scrolledUnderElevation = 1.0,
  });

  final bool isShowLastUpdated;
  final double scrolledUnderElevation;

  @override
  Size get preferredSize => const Size.fromHeight(Constants.appBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: scrolledUnderElevation,
      backgroundColor: Theme.of(context).colorScheme.background,
      shadowColor: Theme.of(context).colorScheme.outline,
      surfaceTintColor: Theme.of(context).colorScheme.background,
      elevation: 0,
      leadingWidth: 120.w,
      leading: Padding(
        padding: const EdgeInsets.only(left: 15).r,
        child: Theme.of(context).brightness == Brightness.light
            ? AppAssets.icons.logo.svg()
            : AppAssets.icons.logoDark.svg(),
      ),
      actions: [
        buildLastUpdatedTime(),
        IconButton(
          onPressed: () {},
          icon: AppAssets.icons.notification.svg(
            colorFilter: ColorFilter.mode(
              Theme.of(context).colorScheme.surface,
              BlendMode.srcIn,
            ),
          ),
        ),
        5.horizontalSpace
      ],
    );
  }

  Widget buildLastUpdatedTime() {
    return isShowLastUpdated
        ? BlocBuilder<OfflineIndicatorCubit, OfflineIndicatorState>(
            builder: (context, state) {
              final lastUpdatedTime = SharedPrefs.lastUpdatedTime;
              if (state is ShowOfflineIndicatorState &&
                  state.isNotEngineConnected &&
                  lastUpdatedTime != null) {
                final DateTime dateTime =
                    DateTime.fromMillisecondsSinceEpoch(lastUpdatedTime);
                return Row(
                  children: [
                    Text(
                      "tasksView.lastUpdated",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 13.sp),
                    ).tr(
                      namedArgs: {
                        'time': dateTime.lastUpdatedFormatted,
                      },
                    ),
                    5.horizontalSpace,
                    AppAssets.icons.offline.svg(
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.secondary,
                            BlendMode.srcIn))
                  ],
                );
              }
              return const SizedBox.shrink();
            },
          )
        : const SizedBox.shrink();
  }
}
