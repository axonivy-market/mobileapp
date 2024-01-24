import 'package:axon_ivy/data/models/task/task.dart';
import 'package:axon_ivy/presentation/task/bloc/filter_boc/filter_bloc.dart';
import 'package:axon_ivy/presentation/task/bloc/task_bloc.dart';
import 'package:axon_ivy/presentation/task/view/widgets/task_details_widget.dart';
import 'package:axon_ivy/presentation/task/view/widgets/task_empty_widget.dart';

import 'package:axon_ivy/presentation/task/view/widgets/task_item_widget.dart';
import 'package:axon_ivy/router/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../util/resources/constants.dart';
import '../../../util/widgets/home_appbar.dart';
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
      ],
      child: BlocBuilder<TaskBloc, TaskState>(
        builder: (context, taskState) {
          final activeFilter = context.watch<FilterBloc>().state.activeFilter;
          final tasksIsEmpty =
              taskState is TaskSuccessState && taskState.tasks.isEmpty;
          return TasksViewContent(
            showAppBar: !tasksIsEmpty || activeFilter == FilterType.expired,
          );
        },
      ),
    );
  }
}

class TasksViewContent extends StatelessWidget {
  const TasksViewContent({super.key, required this.showAppBar});

  final bool showAppBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(isTaskScreen: showAppBar),
      body: BlocBuilder<TaskBloc, TaskState>(
        builder: (context, taskState) {
          if (taskState is TaskErrorState) {
            return Center(child: Text(taskState.error));
          } else if (taskState is TaskSuccessState) {
            return _buildTaskList(context, taskState.tasks);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Widget _buildTaskList(BuildContext context, List<TaskIvy> tasks) {
    final activeFilter = context.watch<FilterBloc>().state.activeFilter;
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: [
          CupertinoSliverRefreshControl(
            onRefresh: () async => _onRefresh(context),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) =>
                  _buildTaskItem(context, tasks, activeFilter, index),
              childCount: tasks.isEmpty ? 1 : tasks.length,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _onRefresh(BuildContext context) async {
    final taskBloc = context.read<TaskBloc>();
    final filterState = context.read<FilterBloc>().state;
    await Future.delayed(const Duration(seconds: 1));
    taskBloc.add(TaskEvent.getTasks(filterState.activeFilter));
  }

  Widget _buildTaskItem(BuildContext context, List<TaskIvy> tasks,
      FilterType activeFilter, int index) {
    if (tasks.isEmpty && activeFilter == FilterType.expired) {
      return TaskEmptyWidget(activeFilter: activeFilter);
    } else if (tasks.isEmpty) {
      return TaskEmptyWidget(activeFilter: activeFilter);
    } else {
      final task = tasks[index];
      return GestureDetector(
        onTap: () {
          context
              .push(AppRoutes.taskActivity, extra: tasks[index])
              .then((value) {
            if (value as bool) {
              final filterState = context.read<FilterBloc>().state;
              context
                  .read<TaskBloc>()
                  .add(TaskEvent.getTasks(filterState.activeFilter));
            }
          });
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
        return TaskDetailsWidget(task: task);
      },
    );
  }
}
