import 'package:axon_ivy/features/task/data/models/task_model/task_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'task_remote_data_source.g.dart';

@RestApi()
@injectable
abstract class TaskRemoteDataSource {
  @factoryMethod
  factory TaskRemoteDataSource(Dio dio) = _TaskRemoteDataSource;

  @GET('/api/workflow/tasks')
  Future<List<TaskIvyModel>> getTasks();

  @GET('/api/workflow/task/{taskId}')
  Future<TaskIvyModel> getTaskDetail(
    @Path('taskId') int taskId,
  );
}
