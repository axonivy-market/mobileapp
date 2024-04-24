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
import 'package:shared_preferences/shared_preferences.dart' as _i25;

import '../../features/process/data/datasources/process_remote_data_source.dart'
    as _i17;
import '../../features/process/data/repositories/process_repository_implement.dart'
    as _i19;
import '../../features/process/domain/repositories/process_repository_inteface.dart'
    as _i18;
import '../../features/process/domain/usecases/get_processes_use_case.dart'
    as _i36;
import '../../features/process/presentation/bloc/process_bloc.dart' as _i39;
import '../../features/profile/data/datasources/profile_remote_data_source.dart'
    as _i20;
import '../../features/profile/data/repositories/profile_repository_implement.dart'
    as _i22;
import '../../features/profile/domain/repositories/profile_repository_interface.dart'
    as _i21;
import '../../features/profile/presentation/bloc/logged_cubit/logged_in_cubit.dart'
    as _i14;
import '../../features/profile/presentation/bloc/login_bloc/login_bloc.dart'
    as _i15;
import '../../features/profile/presentation/bloc/profile_bloc/profile_bloc.dart'
    as _i40;
import '../../features/search/data/datasources/engine_info_remote_data_source.dart'
    as _i6;
import '../../features/search/data/repositories/engine_info_repository_implement.dart'
    as _i8;
import '../../features/search/domain/repositories/engine_info_repository_interface.dart'
    as _i7;
import '../../features/search/domain/usecases/get_engine_info_use_case.dart'
    as _i13;
import '../../features/search/presentation/bloc/engine_info_cubit/engine_info_cubit.dart'
    as _i35;
import '../../features/search/presentation/bloc/search_bloc/search_bloc.dart'
    as _i23;
import '../../features/search/presentation/bloc/search_filter_cubit/search_filter_cubit.dart'
    as _i24;
import '../../features/splash/splash_cubit.dart' as _i27;
import '../../features/tabbar/bloc/connectivity_bloc/connectivity_bloc.dart'
    as _i3;
import '../../features/tabbar/bloc/tabbar_cubit.dart' as _i28;
import '../../features/task/data/datasources/file_remote_data_source/file_remote_data_source.dart'
    as _i9;
import '../../features/task/data/datasources/task_remote_data_source/task_remote_data_source.dart'
    as _i29;
import '../../features/task/data/repositories/file_repository_implement.dart'
    as _i11;
import '../../features/task/data/repositories/task_repository_implement.dart'
    as _i31;
import '../../features/task/domain/repositories/file_repository_interface.dart'
    as _i10;
import '../../features/task/domain/repositories/task_repository_interface.dart'
    as _i30;
import '../../features/task/domain/usecases/delete_file_use_case.dart' as _i34;
import '../../features/task/domain/usecases/get_task_use_case.dart' as _i38;
import '../../features/task/domain/usecases/get_tasks_use_case.dart' as _i37;
import '../../features/task/domain/usecases/upload_file_use_case.dart' as _i33;
import '../../features/task/presentation/bloc/delete_file_bloc/delete_file_bloc.dart'
    as _i44;
import '../../features/task/presentation/bloc/download_file_bloc/download_file_bloc.dart'
    as _i5;
import '../../features/task/presentation/bloc/filter_bloc/filter_bloc.dart'
    as _i12;
import '../../features/task/presentation/bloc/offline_indicator_cubit/offline_indicator_cubit.dart'
    as _i16;
import '../../features/task/presentation/bloc/sort_bloc/sort_bloc.dart' as _i26;
import '../../features/task/presentation/bloc/task_bloc/task_bloc.dart' as _i41;
import '../../features/task/presentation/bloc/task_detail_bloc/task_detail_bloc.dart'
    as _i42;
import '../../features/task/presentation/bloc/toast_message_cubit/toast_message_cubit.dart'
    as _i43;
import '../../features/task/presentation/bloc/upload_file_bloc/upload_file_bloc.dart'
    as _i32;
import 'app_module.dart' as _i45;

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
  gh.factory<_i17.ProcessRemoteDataSource>(
      () => _i17.ProcessRemoteDataSource(gh<_i4.Dio>()));
  gh.factory<_i18.ProcessRepositoryInterface>(() =>
      _i19.ProcessRepositoryImplement(gh<_i17.ProcessRemoteDataSource>()));
  gh.factory<_i20.ProfileRemoteDataSource>(
      () => _i20.ProfileRemoteDataSource(gh<_i4.Dio>()));
  gh.factory<_i21.ProfileRepositoryInterface>(() =>
      _i22.ProfileRepositoryImplement(gh<_i20.ProfileRemoteDataSource>()));
  gh.factory<_i23.SearchBloc>(() => _i23.SearchBloc());
  gh.factory<_i24.SearchFilterCubit>(() => _i24.SearchFilterCubit());
  await gh.factoryAsync<_i25.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i26.SortBloc>(() => _i26.SortBloc());
  gh.factory<_i27.SplashCubit>(() => _i27.SplashCubit());
  gh.factory<_i28.TabBarCubit>(() => _i28.TabBarCubit());
  gh.factory<_i29.TaskRemoteDataSource>(
      () => _i29.TaskRemoteDataSource(gh<_i4.Dio>()));
  gh.factory<_i30.TaskRepositoryInterface>(
      () => _i31.TaskRepositoryImplement(gh<_i29.TaskRemoteDataSource>()));
  gh.factory<_i32.UploadFileBloc>(
      () => _i32.UploadFileBloc(gh<_i10.FileRepositoryInterface>()));
  gh.factory<_i33.UploadFileUseCase>(() =>
      _i33.UploadFileUseCase(repository: gh<_i10.FileRepositoryInterface>()));
  gh.factory<_i34.DeleteFileUseCase>(() =>
      _i34.DeleteFileUseCase(repository: gh<_i10.FileRepositoryInterface>()));
  gh.factory<_i35.EngineInfoCubit>(
      () => _i35.EngineInfoCubit(gh<_i13.GetEngineInfoUseCase>()));
  gh.factory<_i36.GetProcessesUseCase>(() => _i36.GetProcessesUseCase(
      repository: gh<_i18.ProcessRepositoryInterface>()));
  gh.factory<_i37.GetTaskListUseCase>(() =>
      _i37.GetTaskListUseCase(repository: gh<_i30.TaskRepositoryInterface>()));
  gh.factory<_i38.GetTaskUseCase>(() =>
      _i38.GetTaskUseCase(repository: gh<_i30.TaskRepositoryInterface>()));
  gh.factory<_i39.ProcessBloc>(
      () => _i39.ProcessBloc(gh<_i36.GetProcessesUseCase>()));
  gh.factory<_i40.ProfileBloc>(
      () => _i40.ProfileBloc(gh<_i21.ProfileRepositoryInterface>()));
  gh.factory<_i41.TaskBloc>(() => _i41.TaskBloc(gh<_i37.GetTaskListUseCase>()));
  gh.factory<_i42.TaskDetailBloc>(
      () => _i42.TaskDetailBloc(gh<_i38.GetTaskUseCase>()));
  gh.factory<_i43.ToastMessageCubit>(
      () => _i43.ToastMessageCubit(gh<_i38.GetTaskUseCase>()));
  gh.factory<_i44.DeleteFileBloc>(
      () => _i44.DeleteFileBloc(gh<_i34.DeleteFileUseCase>()));
  return getIt;
}

class _$AppModule extends _i45.AppModule {}
