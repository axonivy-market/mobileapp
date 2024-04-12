import 'package:axon_ivy/core/app/app.dart';
import 'package:axon_ivy/features/task/domain/entities/case/case.dart';
import 'package:axon_ivy/features/task/domain/entities/document/document.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:flutter/foundation.dart';
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

  void addDocument(int taskId, Document document) {
    Box<TaskIvy> taskBox = Hive.box<TaskIvy>(Constants.taskBox);
    try {
      var task = taskBox.values.firstWhere((task) => task.id == taskId);
      List<Document> documents =
          task.caseTask?.documents.toList() ?? List.empty();
      documents.add(document);
      var caseTask = task.caseTask?.copyWith(documents: documents);

      TaskIvy taskClone = task.copyWith(caseTask: caseTask);
      taskBox.put(taskId, taskClone);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  CaseTask? getCaseByTaskId(int taskId) {
    Box<TaskIvy> taskBox = Hive.box<TaskIvy>(Constants.taskBox);
    try {
      var task = taskBox.values.firstWhere((task) => task.id == taskId);
      return task.caseTask;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
