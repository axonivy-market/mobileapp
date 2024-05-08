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
import 'package:shared_preferences/shared_preferences.dart' as _i26;

import '../../features/process/data/datasources/process_remote_data_source.dart'
    as _i18;
import '../../features/process/data/repositories/process_repository_implement.dart'
    as _i20;
import '../../features/process/domain/repositories/process_repository_inteface.dart'
    as _i19;
import '../../features/process/domain/usecases/get_processes_use_case.dart'
    as _i37;
import '../../features/process/presentation/bloc/process_bloc.dart' as _i40;
import '../../features/profile/data/datasources/profile_remote_data_source.dart'
    as _i21;
import '../../features/profile/data/repositories/profile_repository_implement.dart'
    as _i23;
import '../../features/profile/domain/repositories/profile_repository_interface.dart'
    as _i22;
import '../../features/profile/presentation/bloc/logged_cubit/logged_in_cubit.dart'
    as _i14;
import '../../features/profile/presentation/bloc/login_bloc/login_bloc.dart'
    as _i15;
import '../../features/profile/presentation/bloc/profile_bloc/profile_bloc.dart'
    as _i41;
import '../../features/search/data/datasources/engine_info_remote_data_source.dart'
    as _i6;
import '../../features/search/data/repositories/engine_info_repository_implement.dart'
    as _i8;
import '../../features/search/domain/repositories/engine_info_repository_interface.dart'
    as _i7;
import '../../features/search/domain/usecases/get_engine_info_use_case.dart'
    as _i13;
import '../../features/search/presentation/bloc/engine_info_cubit/engine_info_cubit.dart'
    as _i36;
import '../../features/search/presentation/bloc/search_bloc/search_bloc.dart'
    as _i24;
import '../../features/search/presentation/bloc/search_filter_cubit/search_filter_cubit.dart'
    as _i25;
import '../../features/splash/splash_cubit.dart' as _i28;
import '../../features/tabbar/bloc/connectivity_bloc/connectivity_bloc.dart'
    as _i3;
import '../../features/tabbar/bloc/tabbar_cubit.dart' as _i29;
import '../../features/task/data/datasources/file_remote_data_source/file_remote_data_source.dart'
    as _i9;
import '../../features/task/data/datasources/task_remote_data_source/task_remote_data_source.dart'
    as _i30;
import '../../features/task/data/repositories/file_repository_implement.dart'
    as _i11;
import '../../features/task/data/repositories/task_repository_implement.dart'
    as _i32;
import '../../features/task/domain/repositories/file_repository_interface.dart'
    as _i10;
import '../../features/task/domain/repositories/task_repository_interface.dart'
    as _i31;
import '../../features/task/domain/usecases/delete_file_use_case.dart' as _i35;
import '../../features/task/domain/usecases/get_task_use_case.dart' as _i39;
import '../../features/task/domain/usecases/get_tasks_use_case.dart' as _i38;
import '../../features/task/domain/usecases/upload_file_use_case.dart' as _i34;
import '../../features/task/presentation/bloc/delete_file_bloc/delete_file_bloc.dart'
    as _i46;
import '../../features/task/presentation/bloc/download_file_bloc/download_file_bloc.dart'
    as _i5;
import '../../features/task/presentation/bloc/filter_bloc/filter_bloc.dart'
    as _i12;
import '../../features/task/presentation/bloc/offline_indicator_cubit/offline_indicator_cubit.dart'
    as _i16;
import '../../features/task/presentation/bloc/preview_file_bloc/preview_file_bloc.dart'
    as _i17;
import '../../features/task/presentation/bloc/sort_bloc/sort_bloc.dart' as _i27;
import '../../features/task/presentation/bloc/task_bloc/task_bloc.dart' as _i42;
import '../../features/task/presentation/bloc/task_conflict_cubit/task_conflict_cubit.dart'
    as _i43;
import '../../features/task/presentation/bloc/task_detail_bloc/task_detail_bloc.dart'
    as _i44;
import '../../features/task/presentation/bloc/toast_message_cubit/toast_message_cubit.dart'
    as _i45;
import '../../features/task/presentation/bloc/upload_file_bloc/upload_file_bloc.dart'
    as _i33;
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
  gh.factory<_i14.LoggedInCubit>(() => _i14.LoggedInCubit());
  gh.factory<_i15.LoginBloc>(
      () => _i15.LoginBloc(gh<_i7.EngineInfoRepositoryInterface>()));
  gh.factory<_i16.OfflineIndicatorCubit>(() => _i16.OfflineIndicatorCubit());
  gh.factory<_i17.PreviewFileBloc>(() => _i17.PreviewFileBloc());
  gh.factory<_i18.ProcessRemoteDataSource>(
      () => _i18.ProcessRemoteDataSource(gh<_i4.Dio>()));
  gh.factory<_i19.ProcessRepositoryInterface>(() =>
      _i20.ProcessRepositoryImplement(gh<_i18.ProcessRemoteDataSource>()));
  gh.factory<_i21.ProfileRemoteDataSource>(
      () => _i21.ProfileRemoteDataSource(gh<_i4.Dio>()));
  gh.factory<_i22.ProfileRepositoryInterface>(() =>
      _i23.ProfileRepositoryImplement(gh<_i21.ProfileRemoteDataSource>()));
  gh.factory<_i24.SearchBloc>(() => _i24.SearchBloc());
  gh.factory<_i25.SearchFilterCubit>(() => _i25.SearchFilterCubit());
  await gh.factoryAsync<_i26.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i27.SortBloc>(() => _i27.SortBloc());
  gh.factory<_i28.SplashCubit>(() => _i28.SplashCubit());
  gh.factory<_i29.TabBarCubit>(() => _i29.TabBarCubit());
  gh.factory<_i30.TaskRemoteDataSource>(
      () => _i30.TaskRemoteDataSource(gh<_i4.Dio>()));
  gh.factory<_i31.TaskRepositoryInterface>(
      () => _i32.TaskRepositoryImplement(gh<_i30.TaskRemoteDataSource>()));
  gh.factory<_i33.UploadFileBloc>(
      () => _i33.UploadFileBloc(gh<_i10.FileRepositoryInterface>()));
  gh.factory<_i34.UploadFileUseCase>(() =>
      _i34.UploadFileUseCase(repository: gh<_i10.FileRepositoryInterface>()));
  gh.factory<_i35.DeleteFileUseCase>(() =>
      _i35.DeleteFileUseCase(repository: gh<_i10.FileRepositoryInterface>()));
  gh.factory<_i36.EngineInfoCubit>(
      () => _i36.EngineInfoCubit(gh<_i13.GetEngineInfoUseCase>()));
  gh.factory<_i37.GetProcessesUseCase>(() => _i37.GetProcessesUseCase(
      repository: gh<_i19.ProcessRepositoryInterface>()));
  gh.factory<_i38.GetTaskListUseCase>(() =>
      _i38.GetTaskListUseCase(repository: gh<_i31.TaskRepositoryInterface>()));
  gh.factory<_i39.GetTaskUseCase>(() =>
      _i39.GetTaskUseCase(repository: gh<_i31.TaskRepositoryInterface>()));
  gh.factory<_i40.ProcessBloc>(
      () => _i40.ProcessBloc(gh<_i37.GetProcessesUseCase>()));
  gh.factory<_i41.ProfileBloc>(
      () => _i41.ProfileBloc(gh<_i22.ProfileRepositoryInterface>()));
  gh.factory<_i42.TaskBloc>(() => _i42.TaskBloc(gh<_i38.GetTaskListUseCase>()));
  gh.factory<_i43.TaskConflictCubit>(
      () => _i43.TaskConflictCubit(gh<_i31.TaskRepositoryInterface>()));
  gh.factory<_i44.TaskDetailBloc>(
      () => _i44.TaskDetailBloc(gh<_i39.GetTaskUseCase>()));
  gh.factory<_i45.ToastMessageCubit>(
      () => _i45.ToastMessageCubit(gh<_i39.GetTaskUseCase>()));
  gh.factory<_i46.DeleteFileBloc>(
      () => _i46.DeleteFileBloc(gh<_i35.DeleteFileUseCase>()));
  return getIt;
}

class _$AppModule extends _i47.AppModule {}
