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
import 'package:shared_preferences/shared_preferences.dart' as _i17;

import '../../data/data_sources/engine_info/engine_info_remote_data_source.dart'
    as _i27;
import '../../data/data_sources/engine_info/engine_info_remote_data_source_impl.dart'
    as _i28;
import '../../data/data_sources/process/process_remote_data_source.dart'
    as _i34;
import '../../data/data_sources/process/process_remote_date_source_impl.dart'
    as _i35;
import '../../data/data_sources/profile/profile_remote_data_source.dart'
    as _i38;
import '../../data/data_sources/profile/profile_remote_date_source_impl.dart'
    as _i39;
import '../../data/repositories/engine/engine_info_repository.dart' as _i29;
import '../../data/repositories/engine/engine_info_repository_impl.dart'
    as _i30;
import '../../data/repositories/process/process_repository.dart' as _i36;
import '../../data/repositories/process/process_repository_impl.dart' as _i37;
import '../../data/repositories/profile/profile_repository.dart' as _i40;
import '../../data/repositories/profile/profile_repository_impl.dart' as _i41;
import '../../data/services/engine_info/engine_info_service.dart' as _i6;
import '../../data/services/process/process_service.dart' as _i13;
import '../../data/services/profile/profile_service.dart' as _i14;
import '../../features/login/bloc/login_bloc.dart' as _i33;
import '../../features/process/bloc/process_bloc.dart' as _i47;
import '../../features/profile/bloc/logged_in_cubit.dart' as _i11;
import '../../features/profile/bloc/profile_bloc.dart' as _i48;
import '../../features/search/bloc/engine_info_cubit/engine_info_cubit.dart'
    as _i46;
import '../../features/search/bloc/search_bloc/search_bloc.dart' as _i15;
import '../../features/search/bloc/search_filter_cubit/search_filter_cubit.dart'
    as _i16;
import '../../features/splash/splash_cubit.dart' as _i19;
import '../../features/tabbar/bloc/connectivity_bloc/connectivity_bloc.dart'
    as _i3;
import '../../features/tabbar/bloc/tabbar_cubit.dart' as _i20;
import '../../features/task/data/datasources/file_remote_data_source/file_remote_data_source.dart'
    as _i7;
import '../../features/task/data/datasources/task_remote_data_source/task_remote_data_source.dart'
    as _i21;
import '../../features/task/data/repositories/file_repository_implement.dart'
    as _i9;
import '../../features/task/data/repositories/task_repository_implement.dart'
    as _i23;
import '../../features/task/domain/repositories/file_repository_interface.dart'
    as _i8;
import '../../features/task/domain/repositories/task_repository_interface.dart'
    as _i22;
import '../../features/task/domain/usecases/delete_file_use_case.dart' as _i26;
import '../../features/task/domain/usecases/get_task_use_case.dart' as _i32;
import '../../features/task/domain/usecases/get_tasks_use_case.dart' as _i31;
import '../../features/task/domain/usecases/upload_file_use_case.dart' as _i25;
import '../../features/task/presentation/bloc/delete_file_bloc/delete_file_bloc.dart'
    as _i45;
import '../../features/task/presentation/bloc/download_file_bloc/download_file_bloc.dart'
    as _i5;
import '../../features/task/presentation/bloc/filter_bloc/filter_bloc.dart'
    as _i10;
import '../../features/task/presentation/bloc/offline_indicator_cubit/offline_indicator_cubit.dart'
    as _i12;
import '../../features/task/presentation/bloc/sort_bloc/sort_bloc.dart' as _i18;
import '../../features/task/presentation/bloc/task_bloc/task_bloc.dart' as _i42;
import '../../features/task/presentation/bloc/task_detail_bloc/task_detail_bloc.dart'
    as _i43;
import '../../features/task/presentation/bloc/toast_message_cubit/toast_message_cubit.dart'
    as _i44;
import '../../features/task/presentation/bloc/upload_file_bloc/upload_file_bloc.dart'
    as _i24;
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
  gh.factory<_i3.ConnectivityBloc>(() => _i3.ConnectivityBloc());
  gh.singleton<_i4.Dio>(appModule.dio);
  gh.factory<_i5.DownloadFileBloc>(() => _i5.DownloadFileBloc());
  gh.factory<_i6.EngineInfoService>(() => _i6.EngineInfoService(gh<_i4.Dio>()));
  gh.factory<_i7.FileRemoteDataSource>(
      () => _i7.FileRemoteDataSource(gh<_i4.Dio>()));
  gh.factory<_i8.FileRepositoryInterface>(
      () => _i9.FileRepositoryImplement(gh<_i7.FileRemoteDataSource>()));
  gh.factory<_i10.FilterBloc>(() => _i10.FilterBloc());
  gh.factory<_i11.LoggedInCubit>(() => _i11.LoggedInCubit());
  gh.factory<_i12.OfflineIndicatorCubit>(() => _i12.OfflineIndicatorCubit());
  gh.factory<_i13.ProcessService>(() => _i13.ProcessService(gh<_i4.Dio>()));
  gh.factory<_i14.ProfileService>(() => _i14.ProfileService(gh<_i4.Dio>()));
  gh.factory<_i15.SearchBloc>(() => _i15.SearchBloc());
  gh.factory<_i16.SearchFilterCubit>(() => _i16.SearchFilterCubit());
  await gh.factoryAsync<_i17.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i18.SortBloc>(() => _i18.SortBloc());
  gh.factory<_i19.SplashCubit>(() => _i19.SplashCubit());
  gh.factory<_i20.TabBarCubit>(() => _i20.TabBarCubit());
  gh.factory<_i21.TaskRemoteDataSource>(
      () => _i21.TaskRemoteDataSource(gh<_i4.Dio>()));
  gh.factory<_i22.TaskRepositoryInterface>(
      () => _i23.TaskRepositoryImplement(gh<_i21.TaskRemoteDataSource>()));
  gh.factory<_i24.UploadFileBloc>(
      () => _i24.UploadFileBloc(gh<_i8.FileRepositoryInterface>()));
  gh.factory<_i25.UploadFileUseCase>(() =>
      _i25.UploadFileUseCase(repository: gh<_i8.FileRepositoryInterface>()));
  gh.factory<_i26.DeleteFileUseCase>(() =>
      _i26.DeleteFileUseCase(repository: gh<_i8.FileRepositoryInterface>()));
  gh.factory<_i27.EngineInfoRemoteDataSource>(
      () => _i28.EngineInfoRemoteDataSourceImpl(gh<_i6.EngineInfoService>()));
  gh.factory<_i29.EngineInfoRepository>(() =>
      _i30.EngineInfoRepositoryImpl(gh<_i27.EngineInfoRemoteDataSource>()));
  gh.factory<_i31.GetTaskListUseCase>(() =>
      _i31.GetTaskListUseCase(repository: gh<_i22.TaskRepositoryInterface>()));
  gh.factory<_i32.GetTaskUseCase>(() =>
      _i32.GetTaskUseCase(repository: gh<_i22.TaskRepositoryInterface>()));
  gh.factory<_i33.LoginBloc>(
      () => _i33.LoginBloc(gh<_i29.EngineInfoRepository>()));
  gh.factory<_i34.ProcessRemoteDataSource>(
      () => _i35.ProcessRemoteDataSourceImpl(gh<_i13.ProcessService>()));
  gh.factory<_i36.ProcessRepository>(
      () => _i37.ProcessRepositoryImpl(gh<_i34.ProcessRemoteDataSource>()));
  gh.factory<_i38.ProfileRemoteDataSource>(
      () => _i39.ProfileRemoteDataSourceImpl(gh<_i14.ProfileService>()));
  gh.factory<_i40.ProfileRepository>(
      () => _i41.ProfileRepositoryImpl(gh<_i38.ProfileRemoteDataSource>()));
  gh.factory<_i42.TaskBloc>(() => _i42.TaskBloc(gh<_i31.GetTaskListUseCase>()));
  gh.factory<_i43.TaskDetailBloc>(
      () => _i43.TaskDetailBloc(gh<_i32.GetTaskUseCase>()));
  gh.factory<_i44.ToastMessageCubit>(
      () => _i44.ToastMessageCubit(gh<_i32.GetTaskUseCase>()));
  gh.factory<_i45.DeleteFileBloc>(
      () => _i45.DeleteFileBloc(gh<_i26.DeleteFileUseCase>()));
  gh.factory<_i46.EngineInfoCubit>(
      () => _i46.EngineInfoCubit(gh<_i29.EngineInfoRepository>()));
  gh.factory<_i47.ProcessBloc>(
      () => _i47.ProcessBloc(gh<_i36.ProcessRepository>()));
  gh.factory<_i48.ProfileBloc>(
      () => _i48.ProfileBloc(gh<_i40.ProfileRepository>()));
  return getIt;
}

class _$AppModule extends _i49.AppModule {}
