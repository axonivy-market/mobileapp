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
import 'package:shared_preferences/shared_preferences.dart' as _i14;

import '../../data/data_sources/engine_info/engine_info_remote_data_source.dart'
    as _i20;
import '../../data/data_sources/engine_info/engine_info_remote_data_source_impl.dart'
    as _i21;
import '../../data/data_sources/file/file_remote_data_source.dart' as _i24;
import '../../data/data_sources/file/file_remote_date_source_impl.dart' as _i25;
import '../../data/data_sources/process/process_remote_data_source.dart'
    as _i29;
import '../../data/data_sources/process/process_remote_date_source_impl.dart'
    as _i30;
import '../../data/data_sources/profile/profile_remote_data_source.dart'
    as _i33;
import '../../data/data_sources/profile/profile_remote_date_source_impl.dart'
    as _i34;
import '../../data/data_sources/task/task_remote_data_source.dart' as _i37;
import '../../data/data_sources/task/task_remote_date_source_impl.dart' as _i38;
import '../../data/repositories/engine/engine_info_repository.dart' as _i22;
import '../../data/repositories/engine/engine_info_repository_impl.dart'
    as _i23;
import '../../data/repositories/file/file_repository.dart' as _i26;
import '../../data/repositories/file/file_repository_impl.dart' as _i27;
import '../../data/repositories/process/process_repository.dart' as _i31;
import '../../data/repositories/process/process_repository_impl.dart' as _i32;
import '../../data/repositories/profile/profile_repository.dart' as _i35;
import '../../data/repositories/profile/profile_repository_impl.dart' as _i36;
import '../../data/repositories/task/task_repository.dart' as _i39;
import '../../data/repositories/task/task_repository_impl.dart' as _i40;
import '../../data/services/engine_info/engine_info_service.dart' as _i5;
import '../../data/services/file/file_services.dart' as _i6;
import '../../data/services/process/process_service.dart' as _i10;
import '../../data/services/profile/profile_service.dart' as _i11;
import '../../data/services/task/task_service.dart' as _i19;
import '../../presentation/login/bloc/login_bloc.dart' as _i28;
import '../../presentation/process/bloc/process_bloc.dart' as _i46;
import '../../presentation/profile/bloc/logged_in_cubit.dart' as _i8;
import '../../presentation/profile/bloc/profile_bloc.dart' as _i47;
import '../../presentation/search/bloc/engine_info_cubit.dart' as _i45;
import '../../presentation/search/bloc/search_bloc.dart' as _i12;
import '../../presentation/search/bloc/search_filter_cubit.dart' as _i13;
import '../../presentation/splash/splash_cubit.dart' as _i16;
import '../../presentation/tabbar/bloc/connectivity_bloc/connectivity_bloc.dart'
    as _i43;
import '../../presentation/tabbar/bloc/tabbar_cubit.dart' as _i17;
import '../../presentation/task/bloc/filter_boc/filter_bloc.dart' as _i7;
import '../../presentation/task/bloc/offline_indicator_cubit.dart' as _i9;
import '../../presentation/task/bloc/sort_bloc/sort_bloc.dart' as _i15;
import '../../presentation/task/bloc/task_bloc.dart' as _i48;
import '../../presentation/task/bloc/task_detail/task_detail_cubit.dart'
    as _i18;
import '../../presentation/task/bloc/toast_message_cubit.dart' as _i41;
import '../../presentation/task_activity/bloc/delete_file/delete_file_bloc.dart'
    as _i44;
import '../../presentation/task_activity/bloc/download_file/download_file_bloc.dart'
    as _i4;
import '../../presentation/task_activity/bloc/task_detail/task_detail_bloc.dart'
    as _i49;
import '../../presentation/task_activity/bloc/upload_file/upload_file_bloc.dart'
    as _i42;
import 'app_module.dart' as _i50;

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
  gh.factory<_i4.DownloadFileBloc>(() => _i4.DownloadFileBloc());
  gh.factory<_i5.EngineInfoService>(() => _i5.EngineInfoService(gh<_i3.Dio>()));
  gh.factory<_i6.FileServices>(() => _i6.FileServices(gh<_i3.Dio>()));
  gh.factory<_i7.FilterBloc>(() => _i7.FilterBloc());
  gh.factory<_i8.LoggedInCubit>(() => _i8.LoggedInCubit());
  gh.factory<_i9.OfflineIndicatorCubit>(() => _i9.OfflineIndicatorCubit());
  gh.factory<_i10.ProcessService>(() => _i10.ProcessService(gh<_i3.Dio>()));
  gh.factory<_i11.ProfileService>(() => _i11.ProfileService(gh<_i3.Dio>()));
  gh.factory<_i12.SearchBloc>(() => _i12.SearchBloc());
  gh.factory<_i13.SearchFilterCubit>(() => _i13.SearchFilterCubit());
  await gh.factoryAsync<_i14.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i15.SortBloc>(() => _i15.SortBloc());
  gh.factory<_i16.SplashCubit>(() => _i16.SplashCubit());
  gh.factory<_i17.TabBarCubit>(() => _i17.TabBarCubit());
  gh.factory<_i18.TaskDetailCubit>(() => _i18.TaskDetailCubit());
  gh.factory<_i19.TaskService>(() => _i19.TaskService(gh<_i3.Dio>()));
  gh.factory<_i20.EngineInfoRemoteDataSource>(
      () => _i21.EngineInfoRemoteDataSourceImpl(gh<_i5.EngineInfoService>()));
  gh.factory<_i22.EngineInfoRepository>(() =>
      _i23.EngineInfoRepositoryImpl(gh<_i20.EngineInfoRemoteDataSource>()));
  gh.factory<_i24.FileRemoteDataSource>(
      () => _i25.FileRemoteDataSourceImpl(gh<_i6.FileServices>()));
  gh.factory<_i26.FileRepository>(
      () => _i27.FileRepositoryImpl(gh<_i24.FileRemoteDataSource>()));
  gh.factory<_i28.LoginBloc>(
      () => _i28.LoginBloc(gh<_i22.EngineInfoRepository>()));
  gh.factory<_i29.ProcessRemoteDataSource>(
      () => _i30.ProcessRemoteDataSourceImpl(gh<_i10.ProcessService>()));
  gh.factory<_i31.ProcessRepository>(
      () => _i32.ProcessRepositoryImpl(gh<_i29.ProcessRemoteDataSource>()));
  gh.factory<_i33.ProfileRemoteDataSource>(
      () => _i34.ProfileRemoteDataSourceImpl(gh<_i11.ProfileService>()));
  gh.factory<_i35.ProfileRepository>(
      () => _i36.ProfileRepositoryImpl(gh<_i33.ProfileRemoteDataSource>()));
  gh.factory<_i37.TaskRemoteDataSource>(
      () => _i38.TaskRemoteDataSourceImpl(gh<_i19.TaskService>()));
  gh.factory<_i39.TaskRepository>(
      () => _i40.TaskRepositoryImpl(gh<_i37.TaskRemoteDataSource>()));
  gh.factory<_i41.ToastMessageCubit>(
      () => _i41.ToastMessageCubit(gh<_i39.TaskRepository>()));
  gh.factory<_i42.UploadFileBloc>(
      () => _i42.UploadFileBloc(gh<_i26.FileRepository>()));
  gh.factory<_i43.ConnectivityBloc>(
      () => _i43.ConnectivityBloc(gh<_i22.EngineInfoRepository>()));
  gh.factory<_i44.DeleteFileBloc>(
      () => _i44.DeleteFileBloc(gh<_i26.FileRepository>()));
  gh.factory<_i45.EngineInfoCubit>(
      () => _i45.EngineInfoCubit(gh<_i22.EngineInfoRepository>()));
  gh.factory<_i46.ProcessBloc>(
      () => _i46.ProcessBloc(gh<_i31.ProcessRepository>()));
  gh.factory<_i47.ProfileBloc>(
      () => _i47.ProfileBloc(gh<_i35.ProfileRepository>()));
  gh.factory<_i48.TaskBloc>(() => _i48.TaskBloc(gh<_i39.TaskRepository>()));
  gh.factory<_i49.TaskDetailBloc>(
      () => _i49.TaskDetailBloc(gh<_i39.TaskRepository>()));
  return getIt;
}

class _$AppModule extends _i50.AppModule {}
