import 'package:axon_ivy/core/abstracts/base_page.dart';
import 'package:axon_ivy/core/app/app_constants.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/router/router.dart';
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
import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:axon_ivy/shared/resources/constants.dart';
import 'package:axon_ivy/shared/widgets/toast_message.dart';
import 'package:axon_ivy/shared/widgets/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../bloc/sort_bloc/sort_bloc.dart';

class TasksPage extends BasePage {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends BasePageState<TasksPage> {
  bool isTaskOnline = true;
  List<TaskIvy> taskList = [];
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
          BlocListener<TaskBloc, TaskState>(
            listener: (context, state) {
              if (state is TaskLoadingState) {
                showLoading();
              } else {
                hideLoading();
                context.read<OfflineIndicatorCubit>().showOfflineIndicator(
                    state is TaskSuccessState && !state.isOnline);
              }
            },
          ),
          BlocListener<ConnectivityBloc, ConnectivityState>(
            listener: (context, state) {
              context.read<TaskBloc>().add(
                  TaskEvent.showOfflinePopupEvent(state is ConnectedState));
            },
          ),
          BlocListener<ToastMessageCubit, ToastMessageState>(
              listener: (context, state) {
            if (state is ShowToastMessageState) {
              ToastMessageUtils.showMessage(
                'taskCompletedMessage'
                    .tr(namedArgs: {'taskName': state.taskName}),
                AppAssets.icons.success,
                context,
              );
            }
          }),
        ],
        child: TasksViewContent(
          isTaskOnline: isTaskOnline,
          taskList: taskList,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class TasksViewContent extends StatelessWidget {
  TasksViewContent({
    super.key,
    required this.isTaskOnline,
    required this.taskList,
  });

  List<TaskIvy> taskList;
  bool isTaskOnline;

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
            if (taskState is TaskErrorState) {
              return _buildErrorView(context, taskState);
            } else if (taskState is TaskSuccessState) {
              taskList = taskState.tasks;
              isTaskOnline = taskState.isOnline;
            }
            return Stack(
              children: [
                _buildTaskList(context, taskList),
                if (!isTaskOnline)
                  OfflinePopupWidget(
                    description: "offline.task_description".tr(),
                    onRefresh: () => _onRefresh(context),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildErrorView(BuildContext context, TaskErrorState taskState) {
    return CustomScrollView(
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      slivers: [
        CupertinoSliverRefreshControl(
          onRefresh: () async => _onRefresh(context),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => SizedBox(
              height: MediaQuery.of(context).size.height -
                  Constants.appBarHeight -
                  Constants.bottomNavigationBarHeight,
              child: DataEmptyWidget(
                message: "errorCanNotAccessScreen".tr(),
                icon: AppAssets.icons.tool.svg(
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.tertiaryContainer,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            childCount: 1,
          ),
        ),
      ],
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
          toolbarHeight: 70.h,
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
              (context, index) =>
                  _buildTaskItem(context, tasks, activeFilter, index),
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
        onTap: () => context.read<TaskConflictCubit>().checkTaskConflict(task),
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
          onPressed: (task) =>
              context.read<TaskConflictCubit>().checkTaskConflict(task),
        );
      },
    );
  }
}
