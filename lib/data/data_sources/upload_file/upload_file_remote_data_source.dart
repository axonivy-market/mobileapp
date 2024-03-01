import 'package:axon_ivy/data/models/task/documents/document_response.dart';
import 'package:dio/dio.dart';

abstract class UploadFileRemoteDataSource {
  Future<DocumentResponse> uploadFiles(
      int caseId, String contentType, String requestBy, FormData data);
}
