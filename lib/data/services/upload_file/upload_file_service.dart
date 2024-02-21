import 'package:axon_ivy/data/models/task/documents/document_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'upload_file_service.g.dart';

@RestApi()
@injectable
abstract class UploadFileService {
  @factoryMethod
  factory UploadFileService(Dio dio) = _UploadFileService;

  @POST('/api/workflow/case/{caseId}/document')
  Future<DocumentResponse> uploadFiles(
    @Path('caseId') int caseId,
    @Header('Content-Type') String contentType,
    @Header('X-Requested-By') String requestBy,
    @Body() FormData data,
  );
}
