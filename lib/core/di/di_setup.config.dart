// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i18;

import '../../data/data_sources/engine_info/engine_info_remote_data_source.dart'
    as _i29;
import '../../data/data_sources/engine_info/engine_info_remote_data_source_impl.dart'
    as _i30;
import '../../data/data_sources/process/process_remote_data_source.dart'
    as _i36;
import '../../data/data_sources/process/process_remote_date_source_impl.dart'
    as _i37;
import '../../data/data_sources/profile/profile_remote_data_source.dart'
    as _i40;
import '../../data/data_sources/profile/profile_remote_date_source_impl.dart'
    as _i41;
import '../../data/repositories/engine/engine_info_repository.dart' as _i31;
import '../../data/repositories/engine/engine_info_repository_impl.dart'
    as _i32;
import '../../data/repositories/process/process_repository.dart' as _i38;
import '../../data/repositories/process/process_repository_impl.dart' as _i39;
import '../../data/repositories/profile/profile_repository.dart' as _i42;
import '../../data/repositories/profile/profile_repository_impl.dart' as _i43;
import '../../data/services/engine_info/engine_info_service.dart' as _i6;
import '../../data/services/process/process_service.dart' as _i14;
import '../../data/services/profile/profile_service.dart' as _i15;
import '../../features/login/bloc/login_bloc.dart' as _i35;
import '../../features/process/bloc/process_bloc.dart' as _i49;
import '../../features/profile/bloc/logged_in_cubit.dart' as _i12;
import '../../features/profile/bloc/profile_bloc.dart' as _i50;
import '../../features/search/bloc/engine_info_cubit/engine_info_cubit.dart'
    as _i48;
import '../../features/search/bloc/search_bloc/search_bloc.dart' as _i16;
import '../../features/search/bloc/search_filter_cubit/search_filter_cubit.dart'
    as _i17;
import '../../features/splash/splash_cubit.dart' as _i20;
import '../../features/tabbar/bloc/connectivity_bloc/connectivity_bloc.dart'
    as _i3;
import '../../features/tabbar/bloc/tabbar_cubit.dart' as _i21;
import '../../features/task/data/datasources/file_remote_data_source/file_remote_data_source.dart'
    as _i7;
import '../../features/task/data/datasources/hive_task_storage.dart' as _i11;
import '../../features/task/data/datasources/task_remote_data_source/task_remote_data_source.dart'
    as _i23;
import '../../features/task/data/repositories/file_repository_implement.dart'
    as _i9;
import '../../features/task/data/repositories/task_repository_implement.dart'
    as _i25;
import '../../features/task/domain/repositories/file_repository_interface.dart'
    as _i8;
import '../../features/task/domain/repositories/task_repository_interface.dart'
    as _i24;
import '../../features/task/domain/usecases/delete_file_use_case.dart' as _i28;
import '../../features/task/domain/usecases/get_task_use_case.dart' as _i34;
import '../../features/task/domain/usecases/get_tasks_use_case.dart' as _i33;
import '../../features/task/domain/usecases/upload_file_use_case.dart' as _i27;
import '../../features/task/presentation/bloc/delete_file_bloc/delete_file_bloc.dart'
    as _i47;
import '../../features/task/presentation/bloc/download_file_bloc/download_file_bloc.dart'
    as _i5;
import '../../features/task/presentation/bloc/filter_bloc/filter_bloc.dart'
    as _i10;
import '../../features/task/presentation/bloc/offline_indicator_cubit/offline_indicator_cubit.dart'
    as _i13;
import '../../features/task/presentation/bloc/sort_bloc/sort_bloc.dart' as _i19;
import '../../features/task/presentation/bloc/task_activity_bloc/task_activity_bloc.dart'
    as _i22;
import '../../features/task/presentation/bloc/task_bloc/task_bloc.dart' as _i44;
import '../../features/task/presentation/bloc/task_detail_bloc/task_detail_bloc.dart'
    as _i45;
import '../../features/task/presentation/bloc/toast_message_cubit/toast_message_cubit.dart'
    as _i46;
import '../../features/task/presentation/bloc/upload_file_bloc/upload_file_bloc.dart'
    as _i26;
import 'app_module.dart' as _i51;

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
  gh.factory<_i3.ConnectivityBloc>(() => _i3.ConnectivityBloc());
  gh.singleton<_i4.Dio>(appModule.dio);
  gh.factory<_i5.DownloadFileBloc>(() => _i5.DownloadFileBloc());
  gh.factory<_i6.EngineInfoService>(() => _i6.EngineInfoService(gh<_i4.Dio>()));
  gh.factory<_i7.FileRemoteDataSource>(
      () => _i7.FileRemoteDataSource(gh<_i4.Dio>()));
  gh.factory<_i8.FileRepositoryInterface>(
      () => _i9.FileRepositoryImplement(gh<_i7.FileRemoteDataSource>()));
  gh.factory<_i10.FilterBloc>(() => _i10.FilterBloc());
  gh.factory<_i11.HiveTaskStorage>(() => _i11.HiveTaskStorage());
  gh.factory<_i12.LoggedInCubit>(
      () => _i12.LoggedInCubit(gh<_i11.HiveTaskStorage>()));
  gh.factory<_i13.OfflineIndicatorCubit>(() => _i13.OfflineIndicatorCubit());
  gh.factory<_i14.ProcessService>(() => _i14.ProcessService(gh<_i4.Dio>()));
  gh.factory<_i15.ProfileService>(() => _i15.ProfileService(gh<_i4.Dio>()));
  gh.factory<_i16.SearchBloc>(() => _i16.SearchBloc());
  gh.factory<_i17.SearchFilterCubit>(() => _i17.SearchFilterCubit());
  await gh.factoryAsync<_i18.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i19.SortBloc>(() => _i19.SortBloc());
  gh.factory<_i20.SplashCubit>(() => _i20.SplashCubit());
  gh.factory<_i21.TabBarCubit>(() => _i21.TabBarCubit());
  gh.factory<_i22.TaskActivityBloc>(
      () => _i22.TaskActivityBloc(gh<_i11.HiveTaskStorage>()));
  gh.factory<_i23.TaskRemoteDataSource>(
      () => _i23.TaskRemoteDataSource(gh<_i4.Dio>()));
  gh.factory<_i24.TaskRepositoryInterface>(
      () => _i25.TaskRepositoryImplement(gh<_i23.TaskRemoteDataSource>()));
  gh.factory<_i26.UploadFileBloc>(() => _i26.UploadFileBloc(
        gh<_i8.FileRepositoryInterface>(),
        gh<_i11.HiveTaskStorage>(),
      ));
  gh.factory<_i27.UploadFileUseCase>(() =>
      _i27.UploadFileUseCase(repository: gh<_i8.FileRepositoryInterface>()));
  gh.factory<_i28.DeleteFileUseCase>(() =>
      _i28.DeleteFileUseCase(repository: gh<_i8.FileRepositoryInterface>()));
  gh.factory<_i29.EngineInfoRemoteDataSource>(
      () => _i30.EngineInfoRemoteDataSourceImpl(gh<_i6.EngineInfoService>()));
  gh.factory<_i31.EngineInfoRepository>(() =>
      _i32.EngineInfoRepositoryImpl(gh<_i29.EngineInfoRemoteDataSource>()));
  gh.factory<_i33.GetTaskListUseCase>(() =>
      _i33.GetTaskListUseCase(repository: gh<_i24.TaskRepositoryInterface>()));
  gh.factory<_i34.GetTaskUseCase>(() =>
      _i34.GetTaskUseCase(repository: gh<_i24.TaskRepositoryInterface>()));
  gh.factory<_i35.LoginBloc>(
      () => _i35.LoginBloc(gh<_i31.EngineInfoRepository>()));
  gh.factory<_i36.ProcessRemoteDataSource>(
      () => _i37.ProcessRemoteDataSourceImpl(gh<_i14.ProcessService>()));
  gh.factory<_i38.ProcessRepository>(
      () => _i39.ProcessRepositoryImpl(gh<_i36.ProcessRemoteDataSource>()));
  gh.factory<_i40.ProfileRemoteDataSource>(
      () => _i41.ProfileRemoteDataSourceImpl(gh<_i15.ProfileService>()));
  gh.factory<_i42.ProfileRepository>(
      () => _i43.ProfileRepositoryImpl(gh<_i40.ProfileRemoteDataSource>()));
  gh.factory<_i44.TaskBloc>(() => _i44.TaskBloc(
        gh<_i33.GetTaskListUseCase>(),
        gh<_i11.HiveTaskStorage>(),
        gh<_i27.UploadFileUseCase>(),
        gh<_i28.DeleteFileUseCase>(),
      ));
  gh.factory<_i45.TaskDetailBloc>(() => _i45.TaskDetailBloc(
        gh<_i34.GetTaskUseCase>(),
        gh<_i11.HiveTaskStorage>(),
      ));
  gh.factory<_i46.ToastMessageCubit>(
      () => _i46.ToastMessageCubit(gh<_i34.GetTaskUseCase>()));
  gh.factory<_i47.DeleteFileBloc>(() => _i47.DeleteFileBloc(
        gh<_i28.DeleteFileUseCase>(),
        gh<_i11.HiveTaskStorage>(),
      ));
  gh.factory<_i48.EngineInfoCubit>(
      () => _i48.EngineInfoCubit(gh<_i31.EngineInfoRepository>()));
  gh.factory<_i49.ProcessBloc>(
      () => _i49.ProcessBloc(gh<_i38.ProcessRepository>()));
  gh.factory<_i50.ProfileBloc>(
      () => _i50.ProfileBloc(gh<_i42.ProfileRepository>()));
  return getIt;
}

class _$AppModule extends _i51.AppModule {}
