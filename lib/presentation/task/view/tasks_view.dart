<<<<<<< HEAD
<<<<<<< HEAD
import 'dart:math';

import 'package:axon_ivy/core/generated/colors.gen.dart';
=======
import 'package:axon_ivy/data/models/task/task.dart';
import 'package:axon_ivy/presentation/task/bloc/task_bloc.dart';
>>>>>>> d07b7ce (MIVY-959-mapping-data-to-ui)
import 'package:axon_ivy/presentation/task/view/widgets/task_empty_widget.dart';
=======
import 'package:axon_ivy/presentation/task/bloc/task_bloc.dart';
>>>>>>> e7517ab (MIVY-923-956-set-up-api-service)
import 'package:axon_ivy/presentation/task/view/widgets/task_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

<<<<<<< HEAD
<<<<<<< HEAD
import '../../../util/widgets/filter_widget.dart';
import '../../../util/widgets/home_appbar.dart';

class TasksView extends StatelessWidget {
=======
class TasksView extends StatefulWidget {
>>>>>>> 4cb5359 (feature/MIVY-892-display-task)
  const TasksView({super.key});

  @override
  _TasksViewState createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  // Dummy data for the ListView
  List<String> items = List.generate(10, (index) => 'Task $index');

  Future<void> _onRefresh() async {
    // Simulate a network request or data fetching
    await Future.delayed(const Duration(seconds: 2));

    // Update the ListView data
    setState(() {
      items = List.generate(10, (index) => 'Refreshed Task $index');
    });
=======
import '../../../core/di/di_setup.dart';
import '../../base_view/base_view.dart';

class TasksView extends BasePageScreen {
  const TasksView({super.key});

  @override
  State<TasksView> createState() => _TasksViewState();
}

class _TasksViewState extends BasePageScreenState<TasksView> {
  late final TaskBloc _taskBloc;

  @override
  void initState() {
    super.initState();
    _taskBloc = getIt<TaskBloc>();
<<<<<<< HEAD
>>>>>>> e7517ab (MIVY-923-956-set-up-api-service)
=======
    _taskBloc.add(const TaskEvent.getTasks());
>>>>>>> d07b7ce (MIVY-959-mapping-data-to-ui)
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
      appBar: const HomeAppBar(),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        color: AppColors.blueRibbon,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Random().nextBool()
              ? ListView.builder(
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
                          itemCount: items.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                TaskItemWidget(),
                                const SizedBox(height: 10),
                              ],
                            );
                          },
                        ),
                      ],
                    );
                  },
                )
              : const TaskEmptyWidget(),
=======
    return BlocProvider(
      create: (context) => _taskBloc,
      child: Scaffold(
        appBar: const HomeAppBar(),
        body: BlocBuilder<TaskBloc, TaskState>(
            builder: (BuildContext context, TaskState state) {
          if (state is TaskLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TaskErrorState) {
            return const Center(
              child: Text("Error"),
            );
          } else if (state is TaskSuccessState) {
            List<TaskIvy> tasks = state.tasks;
            return RefreshIndicator(
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
            return Expanded(
              child: Center(
                child: ListView(
                  shrinkWrap: true,
                  children: const [TaskEmptyWidget()],
                ),
              ),
            );
          }
<<<<<<< HEAD
        },
        child: Scaffold(
          appBar: const HomeAppBar(),
<<<<<<< HEAD
          body: Padding(
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
                      itemCount: 10,
=======
          body: RefreshIndicator(
            onRefresh: _onRefresh,
            child: Random().nextBool()
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: ListView.builder(
                      padding: const EdgeInsets.only(top: 20),
                      itemCount: 1,
>>>>>>> 895bde9 (feature/MIVY-892-display-task)
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            TaskItemWidget(),
                            const SizedBox(height: 10),
                          ],
                        );
                      },
<<<<<<< HEAD
                    ),
                  ],
                );
              },
            ),
=======
                    ))
                : ListView(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: TaskEmptyWidget(),
                      ),
                    ],
                  ),
>>>>>>> 895bde9 (feature/MIVY-892-display-task)
          ),
>>>>>>> e7517ab (MIVY-923-956-set-up-api-service)
        ),
=======
        }),
>>>>>>> d07b7ce (MIVY-959-mapping-data-to-ui)
      ),
    );
  }
}
