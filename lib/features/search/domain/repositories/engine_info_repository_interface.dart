import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/search/domain/entities/engine_info.dart';
import 'package:dartz/dartz.dart';

abstract class EngineInfoRepositoryInterface {
  Future<Either<Failure, EngineInfo>> getEngineInfo();
}
