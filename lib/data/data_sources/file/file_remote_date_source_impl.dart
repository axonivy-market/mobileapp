import 'package:axon_ivy/data/models/task/documents/document_response.dart';
import 'package:axon_ivy/data/services/file/file_services.dart';
import 'package:dio/src/form_data.dart';
import 'package:injectable/injectable.dart';

import 'file_remote_data_source.dart';

@Injectable(as: FileRemoteDataSource)
class FileRemoteDataSourceImpl implements FileRemoteDataSource {
  FileRemoteDataSourceImpl(this._service);

  final FileServices _service;

  @override
  Future<DocumentResponse> deleteFiles(
      int caseId, int documentId, String requestBy) {
    return _service.deleteFiles(caseId, documentId, requestBy);
  }

  @override
  Future<DocumentResponse> uploadFiles(
      int caseId, String contentType, String requestBy, FormData data) {
    return _service.uploadFiles(caseId, contentType, requestBy, data);
  }
}
