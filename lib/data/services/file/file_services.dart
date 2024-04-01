import 'package:axon_ivy/data/models/task/documents/document_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'file_services.g.dart';

@RestApi()
@injectable
abstract class FileServices {
  @factoryMethod
  factory FileServices(Dio dio) = _FileServices;

  @POST('/api/workflow/case/{caseId}/document')
  Future<DocumentResponse> uploadFiles(
    @Path('caseId') int caseId,
    @Header('Content-Type') String contentType,
    @Header('X-Requested-By') String requestBy,
    @Body() FormData data,
  );

  @DELETE('/api/workflow/case/{caseId}/document/{documentId}')
  Future<DocumentResponse> deleteFiles(
    @Path('caseId') int caseId,
    @Path('documentId') int documentId,
    @Header('X-Requested-By') String requestBy,
  );
}
