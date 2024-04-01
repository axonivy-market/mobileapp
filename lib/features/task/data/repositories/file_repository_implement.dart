import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/task/data/datasources/file_remote_data_source/file_remote_data_source.dart';
import 'package:axon_ivy/features/task/domain/entities/response_document/response_document.dart';
import 'package:axon_ivy/features/task/domain/repositories/file_repository_interface.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/network/dio_error_handler.dart';

@Injectable(as: FileRepositoryInterface)
class FileRepositoryImplement extends FileRepositoryInterface {
  FileRepositoryImplement(this._remoteDataSource);

  final FileRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, ResponseDocument>> uploadFiles({
    required int caseId,
    required String contentType,
    required String requestBy,
    required FormData data,
  }) async {
    try {
      final result = await _remoteDataSource.uploadFiles(
        caseId,
        contentType,
        requestBy,
        data,
      );

      return right(result.toEntity());
    } catch (e) {
      return left(AppError.handle(e).failure);
    }
  }

  @override
  Future<Either<Failure, ResponseDocument>> deleteFiles({
    required int caseId,
    required int documentId,
    required String requestBy,
  }) async {
    try {
      final result = await _remoteDataSource.deleteFiles(
        caseId,
        documentId,
        requestBy,
      );

      return right(result.toEntity());
    } catch (e) {
      return left(AppError.handle(e).failure);
    }
  }
}
