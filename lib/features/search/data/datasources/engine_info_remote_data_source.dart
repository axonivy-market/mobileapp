import 'package:axon_ivy/features/search/domain/entities/engine_info.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'engine_info_remote_data_source.g.dart';

@RestApi()
@injectable
abstract class EngineInfoRemoteDataSource {
  @factoryMethod
  factory EngineInfoRemoteDataSource(Dio dio) = _EngineInfoRemoteDataSource;

  @GET('/api/engine/info')
  Future<EngineInfo> getEngineInfo();
}
