import 'package:axon_ivy/data/models/task/task.dart';
import 'package:axon_ivy/data/services/task/task_service.dart';
import 'package:injectable/injectable.dart';

import 'task_remote_data_source.dart';

@Injectable(as: TaskRemoteDataSource)
class TaskRemoteDataSourceImpl implements TaskRemoteDataSource {
  TaskRemoteDataSourceImpl(this._service);

  final TaskService _service;

  @override
  Future<List<TaskIvy>> getTasks() {
    return _service.getTasks();
  }

  @override
  Future<TaskIvy> getTask(int id) {
    return _service.getTask(id);
  }
}
