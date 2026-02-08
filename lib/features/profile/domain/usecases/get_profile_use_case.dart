import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/profile/domain/entities/profile/profile.dart';
import 'package:axon_ivy/features/profile/domain/repositories/profile_repository_interface.dart';
import 'package:fpdart/fpdart.dart';

class GetProfileUseCase {
  final ProfileRepositoryInterface repository;

  GetProfileUseCase({required this.repository});

  Future<Either<Failure, Profile>> execute({required int taskId}) async {
    try {
      final result = await repository.getProfileInfo();
      return result;
    } catch (error) {
      return left(AppError.handle(error).failure);
    }
  }
}
