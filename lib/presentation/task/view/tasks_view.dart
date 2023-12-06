import 'package:axon_ivy/presentation/task/view/widgets/task_item_widget.dart';
import 'package:flutter/material.dart';

import '../../../util/widgets/filter_widget.dart';
import '../../../util/widgets/home_appbar.dart';

class TasksView extends StatelessWidget {
  const TasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
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
        ),
      ),
    );
  }
}
