import 'package:axon_ivy/data/models/task/task.dart';

abstract class TaskRemoteDataSource {
  Future<List<TaskIvy>> getTasks();

  Future<TaskIvy> getTask(int id);
}
