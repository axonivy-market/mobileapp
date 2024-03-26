import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/data/models/task/task.dart';
import 'package:axon_ivy/presentation/task_activity/widgets/task_web_view_widget.dart';
import 'package:axon_ivy/presentation/tabbar/bloc/connectivity_bloc/connectivity_bloc.dart';
import 'package:axon_ivy/presentation/tabbar/bloc/tabbar_cubit.dart';
import 'package:axon_ivy/presentation/task/bloc/filter_boc/filter_bloc.dart';
import 'package:axon_ivy/presentation/task/bloc/filter_boc/filter_state.dart';
import 'package:axon_ivy/presentation/task/bloc/sort_bloc/sort_state.dart';
import 'package:axon_ivy/presentation/task/bloc/task_bloc.dart';
import 'package:axon_ivy/presentation/task/bloc/task_detail/task_detail_cubit.dart';
import 'package:axon_ivy/presentation/task/bloc/toast_message_cubit.dart';
import 'package:axon_ivy/presentation/task/view/widgets/filter_widget.dart';
import 'package:axon_ivy/presentation/task/view/widgets/task_details_widget.dart';
import 'package:axon_ivy/presentation/task/view/widgets/task_empty_widget.dart';
import 'package:axon_ivy/presentation/task/view/widgets/task_item_widget.dart';
import 'package:axon_ivy/router/router.dart';
import 'package:axon_ivy/util/toast_message.dart';
import 'package:axon_ivy/util/widgets/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../util/resources/constants.dart';
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
        BlocProvider(create: (context) => getIt<TaskDetailCubit>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<TaskDetailCubit, TaskDetailState>(
              listener: (context, state) {
            if (state is StartTaskState) {
              context.push(AppRoutes.taskActivity, extra: {
                'task': state.taskIvy,
                'path': state.taskIvy.fullRequestPath
              }).then((value) {
                if (value != null && value is Map) {
                  context.read<TabBarCubit>().navigateTaskList(value);
                }
              });
            }
          }),
          BlocListener<ConnectivityBloc, ConnectivityState>(
              listener: (context, state) {
            context.read<TaskBloc>().isOfflineMode = state is NotConnectedState;
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
                        fullRequestPath: taskState.tasks.first.fullRequestPath,
                        onScrollToTop: (value) => {},
                        canScrollVertical: (value) => {},
                        onProgressChanged: (value) => {},
                      ),
                    ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                        child: FilterWidget(),
                      ),
                      Expanded(child: _buildTaskList(context, taskState.tasks)),
                    ],
                  ),
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
          toolbarHeight: 10,
          pinned: true,
          scrolledUnderElevation: 0.2,
          shadowColor: Theme.of(context).colorScheme.outline,
          surfaceTintColor: Theme.of(context).colorScheme.background,
          elevation: 0,
        ),
        CupertinoSliverRefreshControl(
          onRefresh: () async => _onRefresh(context),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
        onTap: () {
          _navigateTaskActivity(context, tasks[index]);
        },
        onLongPress: () => _showDetails(context, task),
        child: TaskItemWidget(
          name: task.name,
          description: task.description,
          priority: task.priority,
          expiryTimeStamp: task.expiryTimeStamp,
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
          onPressed: (task) => context.read<TaskDetailCubit>().startTask(task),
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
