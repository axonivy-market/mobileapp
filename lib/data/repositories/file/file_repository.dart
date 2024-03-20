import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/data/models/task/documents/document_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class FileRepository {
  Future<Either<Failure, DocumentResponse>> uploadFiles(
      int caseId, String contentType, String requestBy, FormData data);

  Future<Either<Failure, DocumentResponse>> deleteFiles(
      int caseId, int documentId, String requestBy);
}
