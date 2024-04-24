import 'package:axon_ivy/core/app/app.dart';
import 'package:axon_ivy/data/models/enums/file_local_state_enum.dart';
import 'package:axon_ivy/features/task/domain/entities/case/case.dart';
import 'package:axon_ivy/features/task/domain/entities/document/document.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@injectable
class HiveTaskStorage {
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

  List<CaseTask?> getAllCaseTasksPendingSyncFile() {
    Box<TaskIvy> taskBox = Hive.box<TaskIvy>(Constants.taskBox);
    var task = taskBox.values.where((element) => element.offline).toList();
    var caseTask = task.map((task) {
      var documents = task.caseTask?.documents
              .where((element) =>
                  element.fileLocalState ==
                      FileLocalStateEnum.kPendingUpload.value ||
                  element.fileLocalState ==
                      FileLocalStateEnum.kMarkedForDeletion.value)
              .toList() ??
          [];
      if (documents.isNotEmpty) {
        return task.caseTask?.copyWith(documents: documents);
      }
    }).toList();
    return caseTask;
  }

  void updateDocumentByCase(int caseId, Document document) {
    try {
      Box<TaskIvy> taskBox = Hive.box<TaskIvy>(Constants.taskBox);
      var task = taskBox.values
          .firstWhere((element) => element.caseTask?.id == caseId);
      var documents = task.caseTask?.documents.toList() ?? [];
      int idx =
          documents.indexWhere((element) => element.name == document.name);
      if (idx != -1) {
        documents[idx] = document;
      }
      var caseTask = task.caseTask?.copyWith(documents: documents);
      TaskIvy taskClone = task.copyWith(caseTask: caseTask);
      taskBox.put(task.id, taskClone);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void updateDocumentState(int caseId, String documentName, int fileState) {
    try {
      Box<TaskIvy> taskBox = Hive.box<TaskIvy>(Constants.taskBox);
      var task = taskBox.values
          .firstWhere((element) => element.caseTask?.id == caseId);
      var documents = task.caseTask?.documents.toList() ?? [];
      int idx = documents.indexWhere((element) => element.name == documentName);
      if (idx != -1) {
        documents[idx] = documents[idx].copyWith(fileLocalState: fileState);
      }
      var caseTask = task.caseTask?.copyWith(documents: documents);
      TaskIvy taskClone = task.copyWith(caseTask: caseTask);
      taskBox.put(task.id, taskClone);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void deleteDocument(int caseId, String documentName) {
    try {
      Box<TaskIvy> taskBox = Hive.box<TaskIvy>(Constants.taskBox);
      var task = taskBox.values
          .firstWhere((element) => element.caseTask?.id == caseId);
      var documents = task.caseTask?.documents.toList() ?? [];
      int idx = documents.indexWhere((element) => element.name == documentName);
      if (idx != -1) {
        documents.removeAt(idx);
      }
      var caseTask = task.caseTask?.copyWith(documents: documents);
      TaskIvy taskClone = task.copyWith(caseTask: caseTask);
      taskBox.put(task.id, taskClone);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
