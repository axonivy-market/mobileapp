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
import 'package:shared_preferences/shared_preferences.dart' as _i12;

import '../../data/data_sources/engine_info/engine_info_remote_data_source.dart'
    as _i19;
import '../../data/data_sources/engine_info/engine_info_remote_data_source_impl.dart'
    as _i20;
import '../../data/data_sources/process/process_remote_data_source.dart'
    as _i24;
import '../../data/data_sources/process/process_remote_date_source_impl.dart'
    as _i25;
import '../../data/data_sources/profile/profile_remote_data_source.dart'
    as _i28;
import '../../data/data_sources/profile/profile_remote_date_source_impl.dart'
    as _i29;
import '../../data/data_sources/task/task_remote_data_source.dart' as _i32;
import '../../data/data_sources/task/task_remote_date_source_impl.dart' as _i33;
import '../../data/data_sources/upload_file/upload_file_remote_data_source.dart'
    as _i37;
import '../../data/data_sources/upload_file/upload_file_remote_data_source_impl.dart'
    as _i38;
import '../../data/repositories/engine/engine_info_repository.dart' as _i21;
import '../../data/repositories/engine/engine_info_repository_impl.dart'
    as _i22;
import '../../data/repositories/process/process_repository.dart' as _i26;
import '../../data/repositories/process/process_repository_impl.dart' as _i27;
import '../../data/repositories/profile/profile_repository.dart' as _i30;
import '../../data/repositories/profile/profile_repository_impl.dart' as _i31;
import '../../data/repositories/task/task_repository.dart' as _i34;
import '../../data/repositories/task/task_repository_impl.dart' as _i35;
import '../../data/repositories/upload_file/upload_file_repository.dart'
    as _i39;
import '../../data/repositories/upload_file/upload_file_repository_impl.dart'
    as _i40;
import '../../data/services/engine_info/engine_info_service.dart' as _i4;
import '../../data/services/process/process_service.dart' as _i8;
import '../../data/services/profile/profile_service.dart' as _i9;
import '../../data/services/task/task_service.dart' as _i17;
import '../../data/services/upload_file/upload_file_service.dart' as _i18;
import '../../presentation/login/bloc/login_bloc.dart' as _i23;
import '../../presentation/process/bloc/process_bloc.dart' as _i43;
import '../../presentation/profile/bloc/logged_in_cubit.dart' as _i6;
import '../../presentation/profile/bloc/profile_bloc.dart' as _i44;
import '../../presentation/search/bloc/engine_info_cubit.dart' as _i42;
import '../../presentation/search/bloc/search_bloc.dart' as _i10;
import '../../presentation/search/bloc/search_filter_cubit.dart' as _i11;
import '../../presentation/splash/splash_cubit.dart' as _i14;
import '../../presentation/tabbar/bloc/connectivity_bloc/connectivity_bloc.dart'
    as _i41;
import '../../presentation/tabbar/bloc/tabbar_cubit.dart' as _i15;
import '../../presentation/task/bloc/filter_boc/filter_bloc.dart' as _i5;
import '../../presentation/task/bloc/offline_indicator_cubit.dart' as _i7;
import '../../presentation/task/bloc/sort_bloc/sort_bloc.dart' as _i13;
import '../../presentation/task/bloc/task_bloc.dart' as _i45;
import '../../presentation/task/bloc/task_detail/task_detail_cubit.dart'
    as _i16;
import '../../presentation/task/bloc/toast_message_cubit.dart' as _i36;
import '../../presentation/task_activity/bloc/upload_file_bloc.dart' as _i46;
import 'app_module.dart' as _i47;

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
  gh.singleton<_i3.Dio>(
    () => appModule.dio,
  ); // Change the argument to a function
  gh.factory<_i4.EngineInfoService>(() => _i4.EngineInfoService(gh<_i3.Dio>()));
  gh.factory<_i5.FilterBloc>(() => _i5.FilterBloc());
  gh.factory<_i6.LoggedInCubit>(() => _i6.LoggedInCubit());
  gh.factory<_i7.OfflineIndicatorCubit>(() => _i7.OfflineIndicatorCubit());
  gh.factory<_i8.ProcessService>(() => _i8.ProcessService(gh<_i3.Dio>()));
  gh.factory<_i9.ProfileService>(() => _i9.ProfileService(gh<_i3.Dio>()));
  gh.factory<_i10.SearchBloc>(() => _i10.SearchBloc());
  gh.factory<_i11.SearchFilterCubit>(() => _i11.SearchFilterCubit());
  await gh.factoryAsync<_i12.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i13.SortBloc>(() => _i13.SortBloc());
  gh.factory<_i14.SplashCubit>(() => _i14.SplashCubit());
  gh.factory<_i15.TabBarCubit>(() => _i15.TabBarCubit());
  gh.factory<_i16.TaskDetailCubit>(() => _i16.TaskDetailCubit());
  gh.factory<_i17.TaskService>(() => _i17.TaskService(gh<_i3.Dio>()));
  gh.factory<_i18.UploadFileService>(
      () => _i18.UploadFileService(gh<_i3.Dio>()));
  gh.factory<_i19.EngineInfoRemoteDataSource>(
      () => _i20.EngineInfoRemoteDataSourceImpl(gh<_i4.EngineInfoService>()));
  gh.factory<_i21.EngineInfoRepository>(() =>
      _i22.EngineInfoRepositoryImpl(gh<_i19.EngineInfoRemoteDataSource>()));
  gh.factory<_i23.LoginBloc>(
      () => _i23.LoginBloc(gh<_i21.EngineInfoRepository>()));
  gh.factory<_i24.ProcessRemoteDataSource>(
      () => _i25.ProcessRemoteDataSourceImpl(gh<_i8.ProcessService>()));
  gh.factory<_i26.ProcessRepository>(
      () => _i27.ProcessRepositoryImpl(gh<_i24.ProcessRemoteDataSource>()));
  gh.factory<_i28.ProfileRemoteDataSource>(
      () => _i29.ProfileRemoteDataSourceImpl(gh<_i9.ProfileService>()));
  gh.factory<_i30.ProfileRepository>(
      () => _i31.ProfileRepositoryImpl(gh<_i28.ProfileRemoteDataSource>()));
  gh.factory<_i32.TaskRemoteDataSource>(
      () => _i33.TaskRemoteDataSourceImpl(gh<_i17.TaskService>()));
  gh.factory<_i34.TaskRepository>(
      () => _i35.TaskRepositoryImpl(gh<_i32.TaskRemoteDataSource>()));
  gh.factory<_i36.ToastMessageCubit>(
      () => _i36.ToastMessageCubit(gh<_i34.TaskRepository>()));
  gh.factory<_i37.UploadFileRemoteDataSource>(
      () => _i38.UploadFileRemoteDataSourceImpl(gh<_i18.UploadFileService>()));
  gh.factory<_i39.UploadFileRepository>(() =>
      _i40.UploadFileRepositoryImpl(gh<_i37.UploadFileRemoteDataSource>()));
  gh.factory<_i41.ConnectivityBloc>(
      () => _i41.ConnectivityBloc(gh<_i21.EngineInfoRepository>()));
  gh.factory<_i42.EngineInfoCubit>(
      () => _i42.EngineInfoCubit(gh<_i21.EngineInfoRepository>()));
  gh.factory<_i43.ProcessBloc>(
      () => _i43.ProcessBloc(gh<_i26.ProcessRepository>()));
  gh.factory<_i44.ProfileBloc>(
      () => _i44.ProfileBloc(gh<_i30.ProfileRepository>()));
  gh.factory<_i45.TaskBloc>(() => _i45.TaskBloc(gh<_i34.TaskRepository>()));
  gh.factory<_i46.UploadFileBloc>(
      () => _i46.UploadFileBloc(gh<_i39.UploadFileRepository>()));
  return getIt;
}

class _$AppModule extends _i47.AppModule {}
