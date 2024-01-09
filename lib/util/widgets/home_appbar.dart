import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/presentation/task/bloc/filter_boc/filter_bloc.dart';
import 'package:axon_ivy/presentation/task/bloc/filter_boc/filter_state.dart';
import 'package:axon_ivy/presentation/task/bloc/task_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation/task/bloc/sort_bloc/sort_bloc.dart';
import '../../presentation/task/bloc/sort_bloc/sort_state.dart';
import '../../presentation/task/view/widgets/filter_widget.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
    this.isShowLastUpdated = false,
    this.scrolledUnderElevation = 1.0,
    this.isTaskScreen = false,
  });
  final bool isShowLastUpdated;
  final double scrolledUnderElevation;
  final bool isTaskScreen;

  @override
  Size get preferredSize =>
      isTaskScreen ? const Size.fromHeight(130) : const Size.fromHeight(50);

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
        isShowLastUpdated
            ? const Text(
                'last updated 20:17',
                style: TextStyle(color: AppColors.babyTalkGrey),
              )
            : Container(),
        const SizedBox(
          width: 10,
        ),
        isShowLastUpdated ? AppAssets.icons.offline.svg() : Container(),
        IconButton(
          onPressed: () {},
          icon: AppAssets.icons.notification.svg(),
        ),
        const SizedBox(
          width: 5,
        ),
      ],
      bottom: isTaskScreen
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
                  child: MultiBlocProvider(
                    providers: [
                      BlocProvider(
                          create: (context) =>
                              BlocProvider.of<FilterBloc>(context)),
                      BlocProvider(
                          create: (context) =>
                              BlocProvider.of<SortBloc>(context)),
                    ],
                    child: Builder(
                      builder: (context) {
                        final filterState = context.watch<FilterBloc>().state;
                        final sortState = context.watch<SortBloc>().state;
                        return FilterWidget(
                          filterState: filterState,
                          sortState: sortState,
                        );
                      },
                    ),
                  ),
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
}
