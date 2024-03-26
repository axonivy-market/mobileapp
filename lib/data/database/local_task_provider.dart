import 'package:axon_ivy/core/app/app.dart';
import 'package:axon_ivy/data/models/task/task.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@injectable
class LocalTaskProvider {
  void addTask(TaskIvy taskIvy) {
    Box<TaskIvy> taskBox = Hive.box<TaskIvy>(Constants.taskBox);
    taskBox.put(taskIvy.id, taskIvy);
  }

  List<TaskIvy> taskList() {
    Box<TaskIvy> taskBox = Hive.box<TaskIvy>(Constants.taskBox);
    return taskBox.values.toList();
  }

  void removeTask(int id) {
    Box<TaskIvy> taskBox = Hive.box<TaskIvy>(Constants.taskBox);
    taskBox.delete(id);
  }

  void removeAllTasks() {
    Box<TaskIvy> taskBox = Hive.box<TaskIvy>(Constants.taskBox);
    taskBox.clear();
  }
}
