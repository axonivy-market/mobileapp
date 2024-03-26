import 'package:axon_ivy/data/models/engine/engine_info.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'engine_info_service.g.dart';

@RestApi()
@injectable
abstract class EngineInfoService {
  @factoryMethod
  factory EngineInfoService(Dio dio) = _EngineInfoService;

  @GET('/api/engine/info')
  Future<EngineInfo> getEngineInfo([@CancelRequest() CancelToken? cancelToken]);
}
