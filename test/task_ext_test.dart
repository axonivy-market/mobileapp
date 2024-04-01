import 'package:axon_ivy/core/extensions/task_ext.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('sorted by high priority and closest expire date', () {
    final task = TaskIvy(id: 1, startTimeStamp: DateTime.now(), priority: 1);
    final task2 = TaskIvy(id: 2, startTimeStamp: DateTime.now(), priority: 3);
    final task3 = TaskIvy(id: 3, startTimeStamp: DateTime.now(), priority: 4);
    final task4 = TaskIvy(
      id: 4,
      expiryTimeStamp: DateTime.parse('1969-07-22 20:18:04Z'),
      priority: 2,
      startTimeStamp: DateTime.now(),
    );
    final task5 = TaskIvy(
      id: 5,
      expiryTimeStamp: DateTime.parse('1969-07-21 20:18:04Z'),
      priority: 2,
      startTimeStamp: DateTime.now(),
    );
    List<TaskIvy> tasks = List.empty(growable: true);
    tasks.add(task);
    tasks.add(task2);
    tasks.add(task3);
    tasks.add(task4);
    tasks.add(task5);
    final sorted = tasks.sortDefaultTasks;
    expect(sorted[0].id, 1);
    expect(sorted[1].id, 5);
    expect(sorted[2].id, 4);
    expect(sorted[3].id, 2);
    expect(sorted[4].id, 3);
  });
}
