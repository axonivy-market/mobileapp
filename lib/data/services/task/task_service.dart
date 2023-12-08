import 'package:axon_ivy/data/models/task/task.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'task_service.g.dart';

@RestApi()
@injectable
abstract class TaskService {
  @factoryMethod
  factory TaskService(Dio dio) = _TaskService;

  @GET('/workflow/tasks')
  Future<List<TaskIvy>> getTasks();
}
