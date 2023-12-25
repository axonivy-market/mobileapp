import 'package:axon_ivy/data/models/task/task.dart';
import 'package:axon_ivy/presentation/task/bloc/filter_boc/filter_bloc.dart';
import 'package:axon_ivy/presentation/task/bloc/filter_boc/filter_event.dart';
import 'package:axon_ivy/presentation/task/bloc/filter_boc/filter_state.dart';
import 'package:axon_ivy/presentation/task/bloc/task_bloc.dart';
import 'package:axon_ivy/presentation/task/view/widgets/task_empty_widget.dart';

import 'package:axon_ivy/presentation/task/view/widgets/task_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/di/di_setup.dart';
import '../../../util/resources/constants.dart';
import 'widgets/filter_widget.dart';
import '../../../util/widgets/home_appbar.dart';

class TasksView extends StatefulWidget {
  const TasksView({super.key});

  @override
  State<TasksView> createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  late final TaskBloc _taskBloc;
  late final FilterBloc _filterBloc;

  @override
  void initState() {
    super.initState();
    _filterBloc = getIt<FilterBloc>();
    _filterBloc.add(FilterEvent(FilterType.all));
    _taskBloc = getIt<TaskBloc>();
    _taskBloc.add(const TaskEvent.getTasks(FilterType.all));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => _taskBloc),
        BlocProvider(create: (context) => _filterBloc),
      ],
      child: Scaffold(
        appBar: const HomeAppBar(),
        body: Builder(
          builder: (context) {
            final taskState = context.watch<TaskBloc>().state;
            if (taskState is TaskErrorState) {
              return Center(
                child: Text(taskState.error),
              );
            } else if (taskState is TaskSuccessState) {
              List<TaskIvy> tasks = taskState.tasks;
              return Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: CustomScrollView(
                  slivers: [
                    CupertinoSliverRefreshControl(
                      onRefresh: () async {
                        final filterState =
                            BlocProvider.of<FilterBloc>(context).state;
                        _taskBloc
                            .add(TaskEvent.getTasks(filterState.activeFilter));
                      },
                    ),
                    if (tasks.isNotEmpty)
                      SliverToBoxAdapter(
                        child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: BlocListener<FilterBloc, FilterState>(
                              listener: (context, filterState) {
                                context.read<TaskBloc>().add(
                                    TaskEvent.filterTasks(
                                        filterState.activeFilter));
                              },
                              child: BlocBuilder<FilterBloc, FilterState>(
                                builder: (context, filterState) {
                                  return FilterWidget(
                                    state: filterState,
                                  );
                                },
                              ),
                            )),
                      ),
                    if (tasks.isNotEmpty)
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return TaskItemWidget(
                            name: tasks[index].name,
                            description: tasks[index].description,
                            priority: tasks[index].priority,
                            expiryTimeStamp: tasks[index].expiryTimeStamp,
                          );
                        }, childCount: tasks.length),
                      ),
                    if (tasks.isEmpty)
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return const Column(
                            children: [TaskEmptyWidget()],
                          );
                        }, childCount: 1),
                      )
                  ],
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
