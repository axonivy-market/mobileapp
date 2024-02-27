import 'package:axon_ivy/data/models/processes/process.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'process_service.g.dart';

@RestApi()
@injectable
abstract class ProcessService {
  @factoryMethod
  factory ProcessService(Dio dio) = _ProcessService;

  @GET('/api/workflow/processstarts')
  Future<List<Process>> getProcesses();
}
