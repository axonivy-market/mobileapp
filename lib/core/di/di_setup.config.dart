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
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../../data/data_sources/process_remote_data_source.dart' as _i8;
import '../../data/data_sources/process_remote_date_source_impl.dart' as _i9;
import '../../data/data_sources/task_remote_data_source.dart' as _i12;
import '../../data/data_sources/task_remote_date_source_impl.dart' as _i13;
import '../../data/repositories/process_repository.dart' as _i10;
import '../../data/repositories/process_repository_impl.dart' as _i11;
import '../../data/repositories/task_repository.dart' as _i14;
import '../../data/repositories/task_repository_impl.dart' as _i15;
import '../../data/services/process/process_service.dart' as _i5;
import '../../data/services/task/task_service.dart' as _i7;
import '../../presentation/process/bloc/process_bloc.dart' as _i16;
import '../../presentation/task/bloc/filter_boc/filter_bloc.dart' as _i4;
import '../../presentation/task/bloc/task_bloc.dart' as _i17;
import 'app_module.dart' as _i18;

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
  gh.factory<_i4.FilterBloc>(() => _i4.FilterBloc());
  gh.factory<_i5.ProcessService>(() => _i5.ProcessService(gh<_i3.Dio>()));
  await gh.factoryAsync<_i6.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i7.TaskService>(() => _i7.TaskService(gh<_i3.Dio>()));
  gh.factory<_i8.ProcessRemoteDataSource>(
      () => _i9.ProcessRemoteDataSourceImpl(gh<_i5.ProcessService>()));
  gh.factory<_i10.ProcessRepository>(
      () => _i11.ProcessRepositoryImpl(gh<_i8.ProcessRemoteDataSource>()));
  gh.factory<_i12.TaskRemoteDataSource>(
      () => _i13.TaskRemoteDataSourceImpl(gh<_i7.TaskService>()));
  gh.factory<_i14.TaskRepository>(
      () => _i15.TaskRepositoryImpl(gh<_i12.TaskRemoteDataSource>()));
  gh.factory<_i16.ProcessBloc>(
      () => _i16.ProcessBloc(gh<_i10.ProcessRepository>()));
  gh.factory<_i17.TaskBloc>(() => _i17.TaskBloc(gh<_i14.TaskRepository>()));
  return getIt;
}

class _$AppModule extends _i18.AppModule {}
