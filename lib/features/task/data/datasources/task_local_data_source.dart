import 'package:axon_ivy/core/app/app.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@injectable
class TaskLocalDataSource {
  void addTask(TaskIvy taskIvy) {
    Box<TaskIvy> taskBox = Hive.box<TaskIvy>(Constants.taskBox);
    taskBox.put(taskIvy.id, taskIvy);
  }

  List<TaskIvy> getAllTasks() {
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