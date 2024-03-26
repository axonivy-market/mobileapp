import 'package:axon_ivy/data/data_sources/engine_info/engine_info_remote_data_source.dart';
import 'package:axon_ivy/data/models/engine/engine_info.dart';
import 'package:axon_ivy/data/services/engine_info/engine_info_service.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: EngineInfoRemoteDataSource)
class EngineInfoRemoteDataSourceImpl implements EngineInfoRemoteDataSource {
  EngineInfoRemoteDataSourceImpl(this._engineInfoService);

  final EngineInfoService _engineInfoService;

  @override
  Future<EngineInfo> getEngineInfo(CancelToken cancelToken) {
    return _engineInfoService.getEngineInfo(cancelToken);
  }
}
