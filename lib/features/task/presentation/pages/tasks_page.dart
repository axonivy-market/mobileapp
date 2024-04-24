import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/router/router.dart';
import 'package:axon_ivy/core/util/toast_message.dart';
import 'package:axon_ivy/core/util/widgets/widgets.dart';
import 'package:axon_ivy/features/tabbar/bloc/connectivity_bloc/connectivity_bloc.dart';
import 'package:axon_ivy/features/tabbar/bloc/tabbar_cubit.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:axon_ivy/features/task/presentation/bloc/filter_bloc/filter_bloc.dart';
import 'package:axon_ivy/features/task/presentation/bloc/filter_bloc/filter_state.dart';
import 'package:axon_ivy/features/task/presentation/bloc/offline_indicator_cubit/offline_indicator_cubit.dart';
import 'package:axon_ivy/features/task/presentation/bloc/sort_bloc/sort_state.dart';
import 'package:axon_ivy/features/task/presentation/bloc/task_bloc/task_bloc.dart';
import 'package:axon_ivy/features/task/presentation/bloc/task_detail_bloc/task_detail_bloc.dart';
import 'package:axon_ivy/features/task/presentation/bloc/toast_message_cubit/toast_message_cubit.dart';
import 'package:axon_ivy/features/task/presentation/widgets/filter_widget.dart';
import 'package:axon_ivy/features/task/presentation/widgets/task_details_widget.dart';
import 'package:axon_ivy/features/task/presentation/widgets/task_empty_widget.dart';
import 'package:axon_ivy/features/task/presentation/widgets/task_item_widget.dart';
import 'package:axon_ivy/features/task/presentation/widgets/task_web_view_widget.dart';
import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/util/resources/constants.dart';
import '../bloc/sort_bloc/sort_bloc.dart';

class TasksView extends StatelessWidget {
  const TasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: BlocProvider.of<TaskBloc>(context)),
        BlocProvider.value(value: BlocProvider.of<FilterBloc>(context)),
        BlocProvider.value(value: BlocProvider.of<SortBloc>(context)),
        BlocProvider(create: (context) => getIt<TaskDetailBloc>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<TaskDetailBloc, TaskDetailState>(
            listener: (context, state) {
              if (state is TaskDetailStartSuccessState) {
                context.push(
                  AppRoutes.taskActivity,
                  extra: {
                    'task': state.task,
                    'path': state.task.fullRequestPath
                  },
                ).then(
                  (value) {
                    if (value != null && value is Map) {
                      context.read<TabBarCubit>().navigateTaskList(value);
                    }
                  },
                );
              }
            },
          ),
          BlocListener<ConnectivityBloc, ConnectivityState>(
              listener: (context, state) {
            context.read<TaskBloc>().isOfflineMode = state is NotConnectedState;
            context
                .read<OfflineIndicatorCubit>()
                .showOfflineIndicator(state is NotConnectedState);
            if (state is ConnectedState) {
              context
                  .read<TaskBloc>()
                  .add(const TaskEvent.syncDataOnEngineRestore());
            } else {
              context.read<TaskBloc>().add(const TaskEvent.showTasksOffline());
            }
          }),
          BlocListener<ToastMessageCubit, ToastMessageState>(
              listener: (context, state) {
            if (state is ShowToastMessageState) {
              ToastMessageUtils.showMessage(
                  "finishedTaskMessage".tr(namedArgs: {
                    'name': state.taskName,
                  }),
                  AppAssets.icons.success,
                  context);
            }
          }),
          BlocListener<TaskBloc, TaskState>(listener: (context, state) {
            context.read<OfflineIndicatorCubit>().showOfflineIndicator(
                state is TaskSuccessState && !state.isOnline);
          }),
        ],
        child: BlocBuilder<TaskBloc, TaskState>(
          builder: (context, taskState) {
            final activeFilter = context.watch<FilterBloc>().state.activeFilter;
            final tasksIsEmpty =
                taskState is TaskSuccessState && taskState.tasks.isNotEmpty;
            return TasksViewContent(
              isShowFilterBar:
                  tasksIsEmpty || activeFilter == FilterType.expired,
            );
          },
        ),
      ),
    );
  }
}

class TasksViewContent extends StatelessWidget {
  const TasksViewContent({super.key, required this.isShowFilterBar});

  final TaskIvy? taskSelecting = null;
  final bool isShowFilterBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(
        isShowLastUpdated: true,
        scrolledUnderElevation: 0,
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<FilterBloc, FilterState>(
            listener: (context, filterState) {
              context
                  .read<TaskBloc>()
                  .add(TaskEvent.filterTasks(filterState.activeFilter));
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
        child: BlocBuilder<TaskBloc, TaskState>(
          builder: (context, taskState) {
            if (taskState is TaskSuccessState) {
              return Stack(
                children: [
                  // For cached css task offline on WebView
                  if (taskState.tasks.firstOrNull?.fullRequestPath != null)
                    SizedBox(
                      height: 0,
                      width: 0,
                      child: TaskWebViewWidget(
                        key: GlobalKey(),
                        fullRequestPath: taskState.tasks.first.fullRequestPath,
                        onScrollToTop: (value) => {},
                        canScrollVertical: (value) => {},
                        onProgressChanged: (value) => {},
                      ),
                    ),
                  _buildTaskList(context, taskState.tasks),
                ],
              );
            } else {
              return const LoadingWidget();
            }
          },
        ),
      ),
    );
  }

  Widget _buildTaskList(BuildContext context, List<TaskIvy> tasks) {
    final activeFilter = context.watch<FilterBloc>().state.activeFilter;
    return CustomScrollView(
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      slivers: [
        SliverAppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          toolbarHeight: 62.h,
          pinned: true,
          scrolledUnderElevation: 15,
          shadowColor: Colors.black.withOpacity(0.3),
          surfaceTintColor: Theme.of(context).colorScheme.background,
          elevation: 0,
          bottom: tasks.isNotEmpty || activeFilter == FilterType.expired
              ? PreferredSize(
                  preferredSize: const Size.fromHeight(0.0), // Set your height
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 10).r,
                    child: const FilterWidget(),
                  ),
                )
              : null,
        ),
        CupertinoSliverRefreshControl(
          onRefresh: () async => _onRefresh(context),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10).r,
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, index) => _buildTaskItem(context, tasks, activeFilter, index),
              childCount: tasks.isEmpty ? 1 : tasks.length,
            ),
          ),
        ),
      ],
    );
  }

  void _onRefresh(BuildContext context) async {
    final taskBloc = context.read<TaskBloc>();
    final filterState = context.read<FilterBloc>().state;
    await Future.delayed(const Duration(seconds: 1));
    taskBloc.add(TaskEvent.getTasks(filterState.activeFilter));
  }

  Widget _buildTaskItem(BuildContext context, List<TaskIvy> tasks,
      FilterType activeFilter, int index) {
    if (tasks.isEmpty) {
      return TaskEmptyWidget(activeFilter: activeFilter);
    } else {
      final task = tasks[index];
      return GestureDetector(
        onTap: () => task.isTaskDone
            ? null
            : _navigateTaskActivity(context, tasks[index]),
        onLongPress: () => task.isTaskDone ? null : _showDetails(context, task),
        child: TaskItemWidget(
          name: task.name,
          description: task.description,
          priority: task.priority,
          expiryTimeStamp: task.expiryTimeStamp,
          isTaskDone: task.isTaskDone,
          isOffline: task.offline,
        ),
      );
    }
  }

  void _showDetails(BuildContext context, TaskIvy task) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (BuildContext buildContext, Animation animation,
          Animation secondaryAnimation) {
        return TaskDetailsWidget(
          task: task,
          onPressed: (task) => context
              .read<TaskDetailBloc>()
              .add(TaskDetailEvent.startTask(task)),
        );
      },
    );
  }

  _navigateTaskActivity(BuildContext context, TaskIvy taskIvy) {
    context.push(AppRoutes.taskActivity, extra: {
      'task': taskIvy,
      'path': taskIvy.fullRequestPath
    }).then((value) {
      if (value != null && value is Map) {
        context.read<TabBarCubit>().navigateTaskList(value);
      } else if (value is bool && value == true) {
        context.read<TaskBloc>().add(const TaskEvent.getTasks(FilterType.all));
      }
    });
  }
}
