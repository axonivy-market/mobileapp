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
import 'package:shared_preferences/shared_preferences.dart' as _i16;

import '../../data/data_sources/engine_info/engine_info_remote_data_source.dart'
    as _i26;
import '../../data/data_sources/engine_info/engine_info_remote_data_source_impl.dart'
    as _i27;
import '../../data/data_sources/process/process_remote_data_source.dart'
    as _i33;
import '../../data/data_sources/process/process_remote_date_source_impl.dart'
    as _i34;
import '../../data/data_sources/profile/profile_remote_data_source.dart'
    as _i37;
import '../../data/data_sources/profile/profile_remote_date_source_impl.dart'
    as _i38;
import '../../data/repositories/engine/engine_info_repository.dart' as _i28;
import '../../data/repositories/engine/engine_info_repository_impl.dart'
    as _i29;
import '../../data/repositories/process/process_repository.dart' as _i35;
import '../../data/repositories/process/process_repository_impl.dart' as _i36;
import '../../data/repositories/profile/profile_repository.dart' as _i39;
import '../../data/repositories/profile/profile_repository_impl.dart' as _i40;
import '../../data/services/engine_info/engine_info_service.dart' as _i5;
import '../../data/services/process/process_service.dart' as _i12;
import '../../data/services/profile/profile_service.dart' as _i13;
import '../../features/login/bloc/login_bloc.dart' as _i32;
import '../../features/process/bloc/process_bloc.dart' as _i47;
import '../../features/profile/bloc/logged_in_cubit.dart' as _i10;
import '../../features/profile/bloc/profile_bloc.dart' as _i48;
import '../../features/search/bloc/engine_info_cubit/engine_info_cubit.dart'
    as _i46;
import '../../features/search/bloc/search_bloc/search_bloc.dart' as _i14;
import '../../features/search/bloc/search_filter_cubit/search_filter_cubit.dart'
    as _i15;
import '../../features/splash/splash_cubit.dart' as _i18;
import '../../features/tabbar/bloc/connectivity_bloc/connectivity_bloc.dart'
    as _i44;
import '../../features/tabbar/bloc/tabbar_cubit.dart' as _i19;
import '../../features/task/data/datasources/file_remote_data_source/file_remote_data_source.dart'
    as _i6;
import '../../features/task/data/datasources/task_remote_data_source/task_remote_data_source.dart'
    as _i20;
import '../../features/task/data/repositories/file_repository_implement.dart'
    as _i8;
import '../../features/task/data/repositories/task_repository_implement.dart'
    as _i22;
import '../../features/task/domain/repositories/file_repository_interface.dart'
    as _i7;
import '../../features/task/domain/repositories/task_repository_interface.dart'
    as _i21;
import '../../features/task/domain/usecases/delete_file_use_case.dart' as _i25;
import '../../features/task/domain/usecases/get_task_use_case.dart' as _i31;
import '../../features/task/domain/usecases/get_tasks_use_case.dart' as _i30;
import '../../features/task/domain/usecases/upload_file_use_case.dart' as _i24;
import '../../features/task/presentation/bloc/delete_file_bloc/delete_file_bloc.dart'
    as _i45;
import '../../features/task/presentation/bloc/download_file_bloc/download_file_bloc.dart'
    as _i4;
import '../../features/task/presentation/bloc/filter_bloc/filter_bloc.dart'
    as _i9;
import '../../features/task/presentation/bloc/offline_indicator_cubit/offline_indicator_cubit.dart'
    as _i11;
import '../../features/task/presentation/bloc/sort_bloc/sort_bloc.dart' as _i17;
import '../../features/task/presentation/bloc/task_bloc/task_bloc.dart' as _i41;
import '../../features/task/presentation/bloc/task_detail_bloc/task_detail_bloc.dart'
    as _i42;
import '../../features/task/presentation/bloc/toast_message_cubit/toast_message_cubit.dart'
    as _i43;
import '../../features/task/presentation/bloc/upload_file_bloc/upload_file_bloc.dart'
    as _i23;
import 'app_module.dart' as _i49;

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
  gh.factory<_i6.FileRemoteDataSource>(
      () => _i6.FileRemoteDataSource(gh<_i3.Dio>()));
  gh.factory<_i7.FileRepositoryInterface>(
      () => _i8.FileRepositoryImplement(gh<_i6.FileRemoteDataSource>()));
  gh.factory<_i9.FilterBloc>(() => _i9.FilterBloc());
  gh.factory<_i10.LoggedInCubit>(() => _i10.LoggedInCubit());
  gh.factory<_i11.OfflineIndicatorCubit>(() => _i11.OfflineIndicatorCubit());
  gh.factory<_i12.ProcessService>(() => _i12.ProcessService(gh<_i3.Dio>()));
  gh.factory<_i13.ProfileService>(() => _i13.ProfileService(gh<_i3.Dio>()));
  gh.factory<_i14.SearchBloc>(() => _i14.SearchBloc());
  gh.factory<_i15.SearchFilterCubit>(() => _i15.SearchFilterCubit());
  await gh.factoryAsync<_i16.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i17.SortBloc>(() => _i17.SortBloc());
  gh.factory<_i18.SplashCubit>(() => _i18.SplashCubit());
  gh.factory<_i19.TabBarCubit>(() => _i19.TabBarCubit());
  gh.factory<_i20.TaskRemoteDataSource>(
      () => _i20.TaskRemoteDataSource(gh<_i3.Dio>()));
  gh.factory<_i21.TaskRepositoryInterface>(
      () => _i22.TaskRepositoryImplement(gh<_i20.TaskRemoteDataSource>()));
  gh.factory<_i23.UploadFileBloc>(
      () => _i23.UploadFileBloc(gh<_i7.FileRepositoryInterface>()));
  gh.factory<_i24.UploadFileUseCase>(() =>
      _i24.UploadFileUseCase(repository: gh<_i7.FileRepositoryInterface>()));
  gh.factory<_i25.DeleteFileUseCase>(() =>
      _i25.DeleteFileUseCase(repository: gh<_i7.FileRepositoryInterface>()));
  gh.factory<_i26.EngineInfoRemoteDataSource>(
      () => _i27.EngineInfoRemoteDataSourceImpl(gh<_i5.EngineInfoService>()));
  gh.factory<_i28.EngineInfoRepository>(() =>
      _i29.EngineInfoRepositoryImpl(gh<_i26.EngineInfoRemoteDataSource>()));
  gh.factory<_i30.GetTaskListUseCase>(() =>
      _i30.GetTaskListUseCase(repository: gh<_i21.TaskRepositoryInterface>()));
  gh.factory<_i31.GetTaskUseCase>(() =>
      _i31.GetTaskUseCase(repository: gh<_i21.TaskRepositoryInterface>()));
  gh.factory<_i32.LoginBloc>(
      () => _i32.LoginBloc(gh<_i28.EngineInfoRepository>()));
  gh.factory<_i33.ProcessRemoteDataSource>(
      () => _i34.ProcessRemoteDataSourceImpl(gh<_i12.ProcessService>()));
  gh.factory<_i35.ProcessRepository>(
      () => _i36.ProcessRepositoryImpl(gh<_i33.ProcessRemoteDataSource>()));
  gh.factory<_i37.ProfileRemoteDataSource>(
      () => _i38.ProfileRemoteDataSourceImpl(gh<_i13.ProfileService>()));
  gh.factory<_i39.ProfileRepository>(
      () => _i40.ProfileRepositoryImpl(gh<_i37.ProfileRemoteDataSource>()));
  gh.factory<_i41.TaskBloc>(() => _i41.TaskBloc(gh<_i30.GetTaskListUseCase>()));
  gh.factory<_i42.TaskDetailBloc>(
      () => _i42.TaskDetailBloc(gh<_i31.GetTaskUseCase>()));
  gh.factory<_i43.ToastMessageCubit>(
      () => _i43.ToastMessageCubit(gh<_i31.GetTaskUseCase>()));
  gh.factory<_i44.ConnectivityBloc>(
      () => _i44.ConnectivityBloc(gh<_i28.EngineInfoRepository>()));
  gh.factory<_i45.DeleteFileBloc>(
      () => _i45.DeleteFileBloc(gh<_i25.DeleteFileUseCase>()));
  gh.factory<_i46.EngineInfoCubit>(
      () => _i46.EngineInfoCubit(gh<_i28.EngineInfoRepository>()));
  gh.factory<_i47.ProcessBloc>(
      () => _i47.ProcessBloc(gh<_i35.ProcessRepository>()));
  gh.factory<_i48.ProfileBloc>(
      () => _i48.ProfileBloc(gh<_i39.ProfileRepository>()));
  return getIt;
}

class _$AppModule extends _i49.AppModule {}
