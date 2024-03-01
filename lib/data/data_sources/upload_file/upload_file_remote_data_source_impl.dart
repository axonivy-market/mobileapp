import 'package:axon_ivy/data/models/task/documents/document_response.dart';
import 'package:axon_ivy/data/services/upload_file/upload_file_service.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'upload_file_remote_data_source.dart';

@Injectable(as: UploadFileRemoteDataSource)
class UploadFileRemoteDataSourceImpl implements UploadFileRemoteDataSource {
  UploadFileRemoteDataSourceImpl(this._service);

  final UploadFileService _service;

  @override
  Future<DocumentResponse> uploadFiles(
      int caseId, String contentType, String requestBy, FormData data) {
    return _service.uploadFiles(caseId, contentType, requestBy, data);
  }
}
