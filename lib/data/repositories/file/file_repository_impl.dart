import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/data/data_sources/file/file_remote_data_source.dart';
import 'package:axon_ivy/data/models/task/documents/document_response.dart';
import 'package:axon_ivy/data/repositories/file/file_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../core/network/dio_error_handler.dart';

@Injectable(as: FileRepository)
class FileRepositoryImpl extends FileRepository {
  FileRepositoryImpl(this._remoteDataSource);

  final FileRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, DocumentResponse>> uploadFiles(
      int caseId, String contentType, String requestBy, FormData data) async {
    try {
      final result = await _remoteDataSource.uploadFiles(
          caseId, contentType, requestBy, data);

      return right(result);
    } catch (e) {
      return left(AppError.handle(e).failure);
    }
  }

  @override
  Future<Either<Failure, DocumentResponse>> deleteFiles(
      int caseId, int documentId, String requestBy) async {
    try {
      final result =
          await _remoteDataSource.deleteFiles(caseId, documentId, requestBy);

      return right(result);
    } catch (e) {
      return left(AppError.handle(e).failure);
    }
  }
}
