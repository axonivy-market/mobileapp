import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/task/domain/entities/response_document/response_document.dart';
import 'package:axon_ivy/features/task/domain/repositories/file_repository_interface.dart';
import 'package:fpdart/fpdart.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class UploadFileUseCase {
  final FileRepositoryInterface repository;

  UploadFileUseCase({required this.repository});

  Future<Either<Failure, ResponseDocument>> execute({
    required int caseId,
    required String contentType,
    required String requestBy,
    required FormData data,
  }) async {
    try {
      final result = await repository.uploadFiles(
        caseId: caseId,
        contentType: contentType,
        requestBy: requestBy,
        data: data,
      );
      return result;
    } catch (error) {
      return left(AppError.handle(error).failure);
    }
  }
}
