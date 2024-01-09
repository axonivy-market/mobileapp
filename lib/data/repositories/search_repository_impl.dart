import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/core/shared/extensions/task_ext.dart';
import 'package:axon_ivy/data/data_sources/process_remote_data_source.dart';
import 'package:axon_ivy/data/models/search/search_result.dart';
import 'package:axon_ivy/data/repositories/search_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/network/dio_error_handler.dart';
import '../data_sources/task_remote_data_source.dart';

@Injectable(as: SearchRepository)
class SearchRepositoryImpl extends SearchRepository {
  SearchRepositoryImpl(
      this._taskRemoteDataSource, this._processRemoteDataSource);

  final TaskRemoteDataSource _taskRemoteDataSource;
  final ProcessRemoteDataSource _processRemoteDataSource;

  @override
  Future<Either<Failure, List<SearchResult>>> getSearchItems() async {
    try {
      final tasks = await _taskRemoteDataSource.getTasks();
      final processes = await _processRemoteDataSource.getProcesses();
      final List<SearchResult> allItems = [
        ...tasks.sortDefaultTasks.map((task) => SearchResult.task(task)),
        ...processes.map((process) => SearchResult.process(process)),
      ];
      return right(allItems);
    } catch (e) {
      return left(AppError.handle(e).failure);
    }
  }
}
