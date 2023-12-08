// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import '../../data/data_sources/task_remote_data_source.dart' as _i6;
import '../../data/data_sources/task_remote_date_source_impl.dart' as _i7;
import '../../data/repositories/task_repository.dart' as _i8;
import '../../data/repositories/task_repository_impl.dart' as _i9;
import '../../data/services/task/task_service.dart' as _i5;
import '../../presentation/task/bloc/task_bloc.dart' as _i10;
import 'app_module.dart' as _i11;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.singleton<_i3.Dio>(appModule.dio);
  await gh.factoryAsync<_i4.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i5.TaskService>(() => _i5.TaskService(gh<_i3.Dio>()));
  gh.factory<_i6.TaskRemoteDataSource>(
      () => _i7.TaskRemoteDataSourceImpl(gh<_i5.TaskService>()));
  gh.factory<_i8.TaskRepository>(
      () => _i9.TaskRepositoryImpl(gh<_i6.TaskRemoteDataSource>()));
  gh.factory<_i10.TaskBloc>(() => _i10.TaskBloc(gh<_i8.TaskRepository>()));
  return getIt;
}

class _$AppModule extends _i11.AppModule {}
