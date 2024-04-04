import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/task/domain/entities/response_document/response_document.dart';
import 'package:axon_ivy/features/task/domain/repositories/file_repository_interface.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteFileUseCase {
  final FileRepositoryInterface repository;

  DeleteFileUseCase({required this.repository});

  Future<Either<Failure, ResponseDocument>> execute(
    int caseId,
    int documentId,
    String requestBy,
  ) async {
    try {
      final result = await repository.deleteFiles(
        caseId: caseId,
        documentId: documentId,
        requestBy: requestBy,
      );
      return result;
    } catch (error) {
      return left(AppError.handle(error).failure);
    }
  }
}
