import 'package:axon_ivy/data/models/processes/process.dart';

abstract class ProcessRemoteDataSource {
  Future<List<Process>> getProcesses();
}