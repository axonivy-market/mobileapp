import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/task/domain/entities/response_document/response_document.dart';
import 'package:fpdart/fpdart.dart';
import 'package:dio/dio.dart';

abstract class FileRepositoryInterface {
  Future<Either<Failure, ResponseDocument>> uploadFiles({
    required int caseId,
    required String contentType,
    required String requestBy,
    required FormData data,
  });

  Future<Either<Failure, ResponseDocument>> deleteFiles({
    required int caseId,
    required int documentId,
    required String requestBy,
  });
}
