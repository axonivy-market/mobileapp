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
import 'package:shared_preferences/shared_preferences.dart' as _i11;

import '../../data/data_sources/process_remote_data_source.dart' as _i15;
import '../../data/data_sources/process_remote_date_source_impl.dart' as _i16;
import '../../data/data_sources/task_remote_data_source.dart' as _i19;
import '../../data/data_sources/task_remote_date_source_impl.dart' as _i20;
import '../../data/repositories/process_repository.dart' as _i17;
import '../../data/repositories/process_repository_impl.dart' as _i18;
import '../../data/repositories/task_repository.dart' as _i21;
import '../../data/repositories/task_repository_impl.dart' as _i22;
import '../../data/services/process/process_service.dart' as _i7;
import '../../data/services/task/task_service.dart' as _i14;
import '../../presentation/login/bloc/login_bloc.dart' as _i23;
import '../../presentation/process/bloc/process_bloc.dart' as _i24;
import '../../presentation/profile/bloc/logged_in_cubit.dart' as _i5;
import '../../presentation/profile/bloc/profile_bloc.dart' as _i8;
import '../../presentation/search/bloc/search_bloc.dart' as _i9;
import '../../presentation/search/bloc/search_filter_cubit.dart' as _i10;
import '../../presentation/splash/splash_cubit.dart' as _i13;
import '../../presentation/task/bloc/filter_boc/filter_bloc.dart' as _i4;
import '../../presentation/task/bloc/offline_indicator_cubit.dart' as _i6;
import '../../presentation/task/bloc/sort_bloc/sort_bloc.dart' as _i12;
import '../../presentation/task/bloc/task_bloc.dart' as _i25;
import 'app_module.dart' as _i26;

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
  gh.factory<_i6.OfflineIndicatorCubit>(() => _i6.OfflineIndicatorCubit());
  gh.factory<_i7.ProcessService>(() => _i7.ProcessService(gh<_i3.Dio>()));
  gh.factory<_i8.ProfileBloc>(() => _i8.ProfileBloc());
  gh.factory<_i9.SearchBloc>(() => _i9.SearchBloc());
  gh.factory<_i10.SearchFilterCubit>(() => _i10.SearchFilterCubit());
  await gh.factoryAsync<_i11.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i12.SortBloc>(() => _i12.SortBloc());
  gh.factory<_i13.SplashCubit>(() => _i13.SplashCubit());
  gh.factory<_i14.TaskService>(() => _i14.TaskService(gh<_i3.Dio>()));
  gh.factory<_i15.ProcessRemoteDataSource>(
      () => _i16.ProcessRemoteDataSourceImpl(gh<_i7.ProcessService>()));
  gh.factory<_i17.ProcessRepository>(
      () => _i18.ProcessRepositoryImpl(gh<_i15.ProcessRemoteDataSource>()));
  gh.factory<_i19.TaskRemoteDataSource>(
      () => _i20.TaskRemoteDataSourceImpl(gh<_i14.TaskService>()));
  gh.factory<_i21.TaskRepository>(
      () => _i22.TaskRepositoryImpl(gh<_i19.TaskRemoteDataSource>()));
  gh.factory<_i23.LoginBloc>(() => _i23.LoginBloc(gh<_i21.TaskRepository>()));
  gh.factory<_i24.ProcessBloc>(
      () => _i24.ProcessBloc(gh<_i17.ProcessRepository>()));
  gh.factory<_i25.TaskBloc>(() => _i25.TaskBloc(gh<_i21.TaskRepository>()));
  return getIt;
}

class _$AppModule extends _i26.AppModule {}
