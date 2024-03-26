import 'package:axon_ivy/data/models/engine/engine_info.dart';
import 'package:dio/dio.dart';

abstract class EngineInfoRemoteDataSource {
  Future<EngineInfo> getEngineInfo(CancelToken cancelToken);
}
