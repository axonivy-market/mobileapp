import 'package:axon_ivy/core/network/failure.dart';
import 'package:dartz/dartz.dart';

import '../models/search/search.dart';

abstract class SearchRepository {
  Future<Either<Failure, List<SearchResult>>> getSearchItems();
}
