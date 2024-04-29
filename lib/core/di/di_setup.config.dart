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
import 'package:shared_preferences/shared_preferences.dart' as _i27;

import '../../features/process/data/datasources/process_remote_data_source.dart'
    as _i19;
import '../../features/process/data/repositories/process_repository_implement.dart'
    as _i21;
import '../../features/process/domain/repositories/process_repository_inteface.dart'
    as _i20;
import '../../features/process/domain/usecases/get_processes_use_case.dart'
    as _i39;
import '../../features/process/presentation/bloc/process_bloc.dart' as _i42;
import '../../features/profile/data/datasources/profile_remote_data_source.dart'
    as _i22;
import '../../features/profile/data/repositories/profile_repository_implement.dart'
    as _i24;
import '../../features/profile/domain/repositories/profile_repository_interface.dart'
    as _i23;
import '../../features/profile/presentation/bloc/logged_cubit/logged_in_cubit.dart'
    as _i15;
import '../../features/profile/presentation/bloc/login_bloc/login_bloc.dart'
    as _i16;
import '../../features/profile/presentation/bloc/profile_bloc/profile_bloc.dart'
    as _i43;
import '../../features/search/data/datasources/engine_info_remote_data_source.dart'
    as _i6;
import '../../features/search/data/repositories/engine_info_repository_implement.dart'
    as _i8;
import '../../features/search/domain/repositories/engine_info_repository_interface.dart'
    as _i7;
import '../../features/search/domain/usecases/get_engine_info_use_case.dart'
    as _i13;
import '../../features/search/presentation/bloc/engine_info_cubit/engine_info_cubit.dart'
    as _i38;
import '../../features/search/presentation/bloc/search_bloc/search_bloc.dart'
    as _i25;
import '../../features/search/presentation/bloc/search_filter_cubit/search_filter_cubit.dart'
    as _i26;
import '../../features/splash/splash_cubit.dart' as _i29;
import '../../features/tabbar/bloc/connectivity_bloc/connectivity_bloc.dart'
    as _i3;
import '../../features/tabbar/bloc/tabbar_cubit.dart' as _i30;
import '../../features/task/data/datasources/file_remote_data_source/file_remote_data_source.dart'
    as _i9;
import '../../features/task/data/datasources/hive_task_storage.dart' as _i14;
import '../../features/task/data/datasources/task_remote_data_source/task_remote_data_source.dart'
    as _i32;
import '../../features/task/data/repositories/file_repository_implement.dart'
    as _i11;
import '../../features/task/data/repositories/task_repository_implement.dart'
    as _i34;
import '../../features/task/domain/repositories/file_repository_interface.dart'
    as _i10;
import '../../features/task/domain/repositories/task_repository_interface.dart'
    as _i33;
import '../../features/task/domain/usecases/delete_file_use_case.dart' as _i37;
import '../../features/task/domain/usecases/get_task_use_case.dart' as _i41;
import '../../features/task/domain/usecases/get_tasks_use_case.dart' as _i40;
import '../../features/task/domain/usecases/upload_file_use_case.dart' as _i36;
import '../../features/task/presentation/bloc/delete_file_bloc/delete_file_bloc.dart'
    as _i47;
import '../../features/task/presentation/bloc/download_file_bloc/download_file_bloc.dart'
    as _i5;
import '../../features/task/presentation/bloc/filter_bloc/filter_bloc.dart'
    as _i12;
import '../../features/task/presentation/bloc/offline_indicator_cubit/offline_indicator_cubit.dart'
    as _i17;
import '../../features/task/presentation/bloc/preview_file_bloc/preview_file_bloc.dart'
    as _i18;
import '../../features/task/presentation/bloc/sort_bloc/sort_bloc.dart' as _i28;
import '../../features/task/presentation/bloc/task_activity_bloc/task_activity_bloc.dart'
    as _i31;
import '../../features/task/presentation/bloc/task_bloc/task_bloc.dart' as _i44;
import '../../features/task/presentation/bloc/task_detail_bloc/task_detail_bloc.dart'
    as _i45;
import '../../features/task/presentation/bloc/toast_message_cubit/toast_message_cubit.dart'
    as _i46;
import '../../features/task/presentation/bloc/upload_file_bloc/upload_file_bloc.dart'
    as _i35;
import 'app_module.dart' as _i48;

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
  gh.factory<_i6.EngineInfoRemoteDataSource>(
      () => _i6.EngineInfoRemoteDataSource(gh<_i4.Dio>()));
  gh.factory<_i7.EngineInfoRepositoryInterface>(() =>
      _i8.EngineInfoRepositoryImplement(gh<_i6.EngineInfoRemoteDataSource>()));
  gh.factory<_i9.FileRemoteDataSource>(
      () => _i9.FileRemoteDataSource(gh<_i4.Dio>()));
  gh.factory<_i10.FileRepositoryInterface>(
      () => _i11.FileRepositoryImplement(gh<_i9.FileRemoteDataSource>()));
  gh.factory<_i12.FilterBloc>(() => _i12.FilterBloc());
  gh.factory<_i13.GetEngineInfoUseCase>(() => _i13.GetEngineInfoUseCase(
      repository: gh<_i7.EngineInfoRepositoryInterface>()));
  gh.factory<_i14.HiveTaskStorage>(() => _i14.HiveTaskStorage());
  gh.factory<_i15.LoggedInCubit>(
      () => _i15.LoggedInCubit(gh<_i14.HiveTaskStorage>()));
  gh.factory<_i16.LoginBloc>(
      () => _i16.LoginBloc(gh<_i13.GetEngineInfoUseCase>()));
  gh.factory<_i17.OfflineIndicatorCubit>(() => _i17.OfflineIndicatorCubit());
  gh.factory<_i18.PreviewFileBloc>(
      () => _i18.PreviewFileBloc(gh<_i14.HiveTaskStorage>()));
  gh.factory<_i19.ProcessRemoteDataSource>(
      () => _i19.ProcessRemoteDataSource(gh<_i4.Dio>()));
  gh.factory<_i20.ProcessRepositoryInterface>(() =>
      _i21.ProcessRepositoryImplement(gh<_i19.ProcessRemoteDataSource>()));
  gh.factory<_i22.ProfileRemoteDataSource>(
      () => _i22.ProfileRemoteDataSource(gh<_i4.Dio>()));
  gh.factory<_i23.ProfileRepositoryInterface>(() =>
      _i24.ProfileRepositoryImplement(gh<_i22.ProfileRemoteDataSource>()));
  gh.factory<_i25.SearchBloc>(() => _i25.SearchBloc());
  gh.factory<_i26.SearchFilterCubit>(() => _i26.SearchFilterCubit());
  await gh.factoryAsync<_i27.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i28.SortBloc>(() => _i28.SortBloc());
  gh.factory<_i29.SplashCubit>(() => _i29.SplashCubit());
  gh.factory<_i30.TabBarCubit>(() => _i30.TabBarCubit());
  gh.factory<_i31.TaskActivityBloc>(
      () => _i31.TaskActivityBloc(gh<_i14.HiveTaskStorage>()));
  gh.factory<_i32.TaskRemoteDataSource>(
      () => _i32.TaskRemoteDataSource(gh<_i4.Dio>()));
  gh.factory<_i33.TaskRepositoryInterface>(
      () => _i34.TaskRepositoryImplement(gh<_i32.TaskRemoteDataSource>()));
  gh.factory<_i35.UploadFileBloc>(() => _i35.UploadFileBloc(
        gh<_i10.FileRepositoryInterface>(),
        gh<_i14.HiveTaskStorage>(),
      ));
  gh.factory<_i36.UploadFileUseCase>(() =>
      _i36.UploadFileUseCase(repository: gh<_i10.FileRepositoryInterface>()));
  gh.factory<_i37.DeleteFileUseCase>(() =>
      _i37.DeleteFileUseCase(repository: gh<_i10.FileRepositoryInterface>()));
  gh.factory<_i38.EngineInfoCubit>(
      () => _i38.EngineInfoCubit(gh<_i13.GetEngineInfoUseCase>()));
  gh.factory<_i39.GetProcessesUseCase>(() => _i39.GetProcessesUseCase(
      repository: gh<_i20.ProcessRepositoryInterface>()));
  gh.factory<_i40.GetTaskListUseCase>(() =>
      _i40.GetTaskListUseCase(repository: gh<_i33.TaskRepositoryInterface>()));
  gh.factory<_i41.GetTaskUseCase>(() =>
      _i41.GetTaskUseCase(repository: gh<_i33.TaskRepositoryInterface>()));
  gh.factory<_i42.ProcessBloc>(
      () => _i42.ProcessBloc(gh<_i39.GetProcessesUseCase>()));
  gh.factory<_i43.ProfileBloc>(
      () => _i43.ProfileBloc(gh<_i23.ProfileRepositoryInterface>()));
  gh.factory<_i44.TaskBloc>(() => _i44.TaskBloc(
        gh<_i40.GetTaskListUseCase>(),
        gh<_i14.HiveTaskStorage>(),
        gh<_i36.UploadFileUseCase>(),
        gh<_i37.DeleteFileUseCase>(),
      ));
  gh.factory<_i45.TaskDetailBloc>(() => _i45.TaskDetailBloc(
        gh<_i41.GetTaskUseCase>(),
        gh<_i14.HiveTaskStorage>(),
      ));
  gh.factory<_i46.ToastMessageCubit>(
      () => _i46.ToastMessageCubit(gh<_i41.GetTaskUseCase>()));
  gh.factory<_i47.DeleteFileBloc>(() => _i47.DeleteFileBloc(
        gh<_i37.DeleteFileUseCase>(),
        gh<_i14.HiveTaskStorage>(),
      ));
  return getIt;
}

class _$AppModule extends _i48.AppModule {}
