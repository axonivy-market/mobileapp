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
import 'package:shared_preferences/shared_preferences.dart' as _i10;

import '../../data/data_sources/process_remote_data_source.dart' as _i14;
import '../../data/data_sources/process_remote_date_source_impl.dart' as _i15;
import '../../data/data_sources/task_remote_data_source.dart' as _i18;
import '../../data/data_sources/task_remote_date_source_impl.dart' as _i19;
import '../../data/repositories/process_repository.dart' as _i16;
import '../../data/repositories/process_repository_impl.dart' as _i17;
import '../../data/repositories/task_repository.dart' as _i20;
import '../../data/repositories/task_repository_impl.dart' as _i21;
import '../../data/services/process/process_service.dart' as _i6;
import '../../data/services/task/task_service.dart' as _i13;
import '../../presentation/login/bloc/login_bloc.dart' as _i22;
import '../../presentation/process/bloc/process_bloc.dart' as _i23;
import '../../presentation/profile/bloc/logged_in_cubit.dart' as _i5;
import '../../presentation/profile/bloc/profile_bloc.dart' as _i7;
import '../../presentation/search/bloc/search_bloc.dart' as _i8;
import '../../presentation/search/bloc/search_filter_cubit.dart' as _i9;
import '../../presentation/splash/splash_cubit.dart' as _i12;
import '../../presentation/task/bloc/filter_boc/filter_bloc.dart' as _i4;
import '../../presentation/task/bloc/sort_bloc/sort_bloc.dart' as _i11;
import '../../presentation/task/bloc/task_bloc.dart' as _i24;
import 'app_module.dart' as _i25;

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
  gh.factory<_i5.LoggedInCubit>(() => _i5.LoggedInCubit());
  gh.factory<_i6.ProcessService>(() => _i6.ProcessService(gh<_i3.Dio>()));
  gh.factory<_i7.ProfileBloc>(() => _i7.ProfileBloc());
  gh.factory<_i8.SearchBloc>(() => _i8.SearchBloc());
  gh.factory<_i9.SearchFilterCubit>(() => _i9.SearchFilterCubit());
  await gh.factoryAsync<_i10.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i11.SortBloc>(() => _i11.SortBloc());
  gh.factory<_i12.SplashCubit>(() => _i12.SplashCubit());
  gh.factory<_i13.TaskService>(() => _i13.TaskService(gh<_i3.Dio>()));
  gh.factory<_i14.ProcessRemoteDataSource>(
      () => _i15.ProcessRemoteDataSourceImpl(gh<_i6.ProcessService>()));
  gh.factory<_i16.ProcessRepository>(
      () => _i17.ProcessRepositoryImpl(gh<_i14.ProcessRemoteDataSource>()));
  gh.factory<_i18.TaskRemoteDataSource>(
      () => _i19.TaskRemoteDataSourceImpl(gh<_i13.TaskService>()));
  gh.factory<_i20.TaskRepository>(
      () => _i21.TaskRepositoryImpl(gh<_i18.TaskRemoteDataSource>()));
  gh.factory<_i22.LoginBloc>(() => _i22.LoginBloc(gh<_i20.TaskRepository>()));
  gh.factory<_i23.ProcessBloc>(
      () => _i23.ProcessBloc(gh<_i16.ProcessRepository>()));
  gh.factory<_i24.TaskBloc>(() => _i24.TaskBloc(gh<_i20.TaskRepository>()));
  return getIt;
}

class _$AppModule extends _i25.AppModule {}
