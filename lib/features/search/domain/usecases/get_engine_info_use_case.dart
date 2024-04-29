import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/search/domain/entities/engine_info.dart';
import 'package:axon_ivy/features/search/domain/repositories/engine_info_repository_interface.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetEngineInfoUseCase {
  final EngineInfoRepositoryInterface repository;

  GetEngineInfoUseCase({required this.repository});

  Future<Either<Failure, EngineInfo>> execute() async {
    try {
      final result = await repository.getEngineInfo();
      return result;
    } catch (error) {
      return left(AppError.handle(error).failure);
    }
  }
}
