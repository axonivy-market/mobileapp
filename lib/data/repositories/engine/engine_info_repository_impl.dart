import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/data/data_sources/engine_info/engine_info_remote_data_source.dart';
import 'package:axon_ivy/data/models/engine/engine_info.dart';
import 'package:axon_ivy/data/repositories/engine/engine_info_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: EngineInfoRepository)
class EngineInfoRepositoryImpl implements EngineInfoRepository {
  EngineInfoRepositoryImpl(this._engineInfoRemoteDataSource);

  final EngineInfoRemoteDataSource _engineInfoRemoteDataSource;

  @override
  Future<Either<Failure, EngineInfo>> getEngineInfo() async {
    try {
      final result = await _engineInfoRemoteDataSource.getEngineInfo();
      return right(result);
    } catch (e) {
      print(e.toString());
      return left(AppError.handle(e).failure);
    }
  }
}
