import 'package:axon_ivy/features/task/data/models/response_document_model/response_document_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'file_remote_data_source.g.dart';

@RestApi()
@injectable
abstract class FileRemoteDataSource {
  @factoryMethod
  factory FileRemoteDataSource(Dio dio) = _FileRemoteDataSource;

  @POST('/api/workflow/case/{caseId}/document')
  Future<ResponseDocumentModel> uploadFiles(
    @Path('caseId') int caseId,
    @Header('Content-Type') String contentType,
    @Header('X-Requested-By') String requestBy,
    @Body() FormData data,
  );

  @DELETE('/api/workflow/case/{caseId}/document/{documentId}')
  Future<ResponseDocumentModel> deleteFiles(
    @Path('caseId') int caseId,
    @Path('documentId') int documentId,
    @Header('X-Requested-By') String requestBy,
  );
}
