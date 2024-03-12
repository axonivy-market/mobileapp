import 'package:axon_ivy/data/models/engine/engine_info.dart';

abstract class EngineInfoRemoteDataSource {
  Future<EngineInfo> getEngineInfo();
}
