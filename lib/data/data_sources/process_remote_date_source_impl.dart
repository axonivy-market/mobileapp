import 'package:axon_ivy/data/data_sources/process_remote_data_source.dart';
import 'package:axon_ivy/data/models/processes/process.dart';
import 'package:axon_ivy/data/services/process/process_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProcessRemoteDataSource)
class ProcessRemoteDataSourceImpl implements ProcessRemoteDataSource {
  ProcessRemoteDataSourceImpl(this._service);

  final ProcessService _service;

  @override
  Future<List<Process>> getProcesses() {
    return _service.getProcesses();
  }
}
