import 'package:axon_ivy/features/process/domain/entities/process.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'process_remote_data_source.g.dart';

@RestApi()
@injectable
abstract class ProcessRemoteDataSource {
  @factoryMethod
  factory ProcessRemoteDataSource(Dio dio) = _ProcessRemoteDataSource;

  @GET('/api/workflow/startables')
  Future<List<Process>> getProcesses();
}
