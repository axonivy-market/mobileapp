import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/data/models/engine/engine_info.dart';
import 'package:dartz/dartz.dart';

abstract class EngineInfoRepository {
  Future<Either<Failure, EngineInfo>> getEngineInfo();
}
