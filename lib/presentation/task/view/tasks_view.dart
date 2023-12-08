import 'dart:math';

import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/presentation/task/view/widgets/task_empty_widget.dart';
import 'package:axon_ivy/presentation/task/view/widgets/task_item_widget.dart';
import 'package:flutter/material.dart';

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
  }

  @override
  Widget build(BuildContext context) {
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
        ),
      ),
    );
  }
}
