import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/data/models/task/task.dart';
import 'package:axon_ivy/presentation/task/bloc/task_bloc.dart';
import 'package:axon_ivy/presentation/task/view/widgets/task_empty_widget.dart';

import 'package:axon_ivy/presentation/task/view/widgets/task_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/di/di_setup.dart';
import '../../../core/generated/colors.gen.dart';
import '../../../util/widgets/filter_widget.dart';
import '../../../util/widgets/home_appbar.dart';

class TasksView extends StatefulWidget {
  const TasksView({super.key});

  @override
  State<TasksView> createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  late final TaskBloc _taskBloc;

  @override
  void initState() {
    super.initState();
    _taskBloc = getIt<TaskBloc>();
    _taskBloc.add(const TaskEvent.getTasks());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _taskBloc,
      child: Scaffold(
        appBar: const HomeAppBar(),
        body: BlocBuilder<TaskBloc, TaskState>(
          builder: (BuildContext context, TaskState state) {
            if (state is TaskLoadingState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is TaskErrorState) {
              return Center(
                child: Text(state.error),
              );
            } else if (state is TaskSuccessState) {
              List<TaskIvy> tasks = state.tasks;
              return RefreshIndicator(
                color: AppColors.tropicSea,
                onRefresh: () async {
                  tasks = [];
                  _taskBloc.add(const TaskEvent.getTasks());
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: ListView.builder(
                    padding: const EdgeInsets.only(top: 20),
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          const FilterWidget(),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            itemCount: tasks.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  TaskItemWidget(
                                    name: tasks[index].name,
                                    description: tasks[index].description,
                                    priority: tasks[index].priority,
                                    expiryTimeStamp:
                                        tasks[index].expiryTimeStamp,
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              );
                            },
                          ),
                        ],
                      );
                    },
                  ),
                ),
              );
            } else {
              return Center(
                child: RefreshIndicator(
                  color: AppColors.tropicSea,
                  onRefresh: () async {
                    _taskBloc.add(const TaskEvent.getTasks());
                  },
                  child: ListView(
                    shrinkWrap: true,
                    children: const [TaskEmptyWidget()],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
