import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/core/shared/extensions/date_time_ext.dart';
import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/presentation/task/bloc/filter_boc/filter_bloc.dart';
import 'package:axon_ivy/presentation/task/bloc/filter_boc/filter_state.dart';
import 'package:axon_ivy/presentation/task/bloc/offline_indicator_cubit.dart';
import 'package:axon_ivy/presentation/task/bloc/task_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../presentation/task/bloc/sort_bloc/sort_bloc.dart';
import '../../presentation/task/bloc/sort_bloc/sort_state.dart';
import '../../presentation/task/view/widgets/filter_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
    this.isShowLastUpdated = false,
    this.scrolledUnderElevation = 1.0,
    this.isShowFilterBar = false,
  });

  final bool isShowLastUpdated;
  final double scrolledUnderElevation;
  final bool isShowFilterBar;

  @override
  Size get preferredSize =>
      isShowFilterBar ? const Size.fromHeight(130) : const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: scrolledUnderElevation,
      shadowColor: AppColors.mercury,
      surfaceTintColor: Colors.white,
      elevation: 0,
      leadingWidth: 120,
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: AppAssets.icons.logo.svg(),
      ),
      actions: [
        buildLastUpdatedTime(),
        IconButton(
          onPressed: () {},
          icon: AppAssets.icons.notification.svg(),
        ),
        const SizedBox(
          width: 5,
        ),
      ],
      bottom: isShowFilterBar
          ? PreferredSize(
              preferredSize: const Size.fromHeight(0.0), // Set your height
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 20),
                child: MultiBlocListener(
                  listeners: [
                    BlocListener<FilterBloc, FilterState>(
                      listener: (context, filterState) {
                        context.read<TaskBloc>().add(
                            TaskEvent.filterTasks(filterState.activeFilter));
                      },
                    ),
                    BlocListener<SortBloc, SortState>(
                      listener: (context, sortState) {
                        context
                            .read<TaskBloc>()
                            .add(TaskEvent.sortTasks(sortState.activeSortType));
                      },
                    ),
                  ],
                  child: FilterWidget(),
                ),
              ),
            )
          : const PreferredSize(
              preferredSize: Size.fromHeight(0.0),
              child: SizedBox(
                height: 0,
                width: 0,
              ),
            ),
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
                          color: AppColors.silver,
                          fontSize: 13),
                    ).tr(
                      namedArgs: {
                        'time': dateTime.lastUpdatedFormatted,
                      },
                    ),
                    const SizedBox(width: 5),
                    AppAssets.icons.offline.svg()
                  ],
                );
              }
              return const SizedBox.shrink();
            },
          )
        : const SizedBox.shrink();
  }
}
