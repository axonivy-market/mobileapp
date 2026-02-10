// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/notification/data/datasources/notification_remote_data_source.dart'
    as _i906;
import '../../features/notification/data/repositories/notification_repository_implement.dart'
    as _i827;
import '../../features/notification/domain/repositories/notification_repository_interface.dart'
    as _i658;
import '../../features/notification/domain/usecases/get_notifications_use_case.dart'
    as _i483;
import '../../features/notification/domain/usecases/mark_read_all_notification_use_case.dart'
    as _i543;
import '../../features/notification/domain/usecases/mark_read_notification_use_case.dart'
    as _i194;
import '../../features/notification/presentation/bloc/notification_bloc.dart'
    as _i29;
import '../../features/process/data/datasources/process_remote_data_source.dart'
    as _i697;
import '../../features/process/data/repositories/process_repository_implement.dart'
    as _i993;
import '../../features/process/domain/repositories/process_repository_inteface.dart'
    as _i969;
import '../../features/process/domain/usecases/get_processes_use_case.dart'
    as _i774;
import '../../features/process/presentation/bloc/process_bloc.dart' as _i275;
import '../../features/profile/data/datasources/profile_remote_data_source.dart'
    as _i847;
import '../../features/profile/data/repositories/profile_repository_implement.dart'
    as _i904;
import '../../features/profile/domain/repositories/profile_repository_interface.dart'
    as _i172;
import '../../features/profile/presentation/bloc/logged_cubit/logged_in_cubit.dart'
    as _i715;
import '../../features/profile/presentation/bloc/login_bloc/login_bloc.dart'
    as _i320;
import '../../features/profile/presentation/bloc/profile_bloc/profile_bloc.dart'
    as _i932;
import '../../features/search/data/datasources/engine_info_remote_data_source.dart'
    as _i278;
import '../../features/search/data/repositories/engine_info_repository_implement.dart'
    as _i477;
import '../../features/search/domain/repositories/engine_info_repository_interface.dart'
    as _i88;
import '../../features/search/domain/usecases/get_engine_info_use_case.dart'
    as _i454;
import '../../features/search/presentation/bloc/search_bloc/search_bloc.dart'
    as _i211;
import '../../features/search/presentation/bloc/search_filter_cubit/search_filter_cubit.dart'
    as _i658;
import '../../features/splash/splash_cubit.dart' as _i680;
import '../../features/tabbar/bloc/connectivity_bloc/connectivity_bloc.dart'
    as _i670;
import '../../features/tabbar/bloc/engine_info_cubit/engine_info_cubit.dart'
    as _i479;
import '../../features/tabbar/bloc/tabbar_cubit.dart' as _i554;
import '../../features/task/data/datasources/file_remote_data_source/file_remote_data_source.dart'
    as _i833;
import '../../features/task/data/datasources/hive_task_storage.dart' as _i170;
import '../../features/task/data/datasources/task_remote_data_source/task_remote_data_source.dart'
    as _i924;
import '../../features/task/data/repositories/file_repository_implement.dart'
    as _i995;
import '../../features/task/data/repositories/task_repository_implement.dart'
    as _i571;
import '../../features/task/domain/repositories/file_repository_interface.dart'
    as _i383;
import '../../features/task/domain/repositories/task_repository_interface.dart'
    as _i574;
import '../../features/task/domain/usecases/delete_file_use_case.dart' as _i425;
import '../../features/task/domain/usecases/get_task_use_case.dart' as _i307;
import '../../features/task/domain/usecases/get_tasks_use_case.dart' as _i868;
import '../../features/task/domain/usecases/upload_file_use_case.dart' as _i592;
import '../../features/task/presentation/bloc/delete_file_bloc/delete_file_bloc.dart'
    as _i900;
import '../../features/task/presentation/bloc/download_file_bloc/download_file_bloc.dart'
    as _i83;
import '../../features/task/presentation/bloc/filter_bloc/filter_bloc.dart'
    as _i465;
import '../../features/task/presentation/bloc/offline_indicator_cubit/offline_indicator_cubit.dart'
    as _i810;
import '../../features/task/presentation/bloc/preview_file_bloc/preview_file_bloc.dart'
    as _i327;
import '../../features/task/presentation/bloc/sort_bloc/sort_bloc.dart'
    as _i450;
import '../../features/task/presentation/bloc/task_activity_bloc/task_activity_bloc.dart'
    as _i943;
import '../../features/task/presentation/bloc/task_bloc/task_bloc.dart'
    as _i644;
import '../../features/task/presentation/bloc/task_conflict_cubit/task_conflict_cubit.dart'
    as _i12;
import '../../features/task/presentation/bloc/task_detail_bloc/task_detail_bloc.dart'
    as _i166;
import '../../features/task/presentation/bloc/toast_message_cubit/toast_message_cubit.dart'
    as _i956;
import '../../features/task/presentation/bloc/upload_file_bloc/upload_file_bloc.dart'
    as _i683;
import 'app_module.dart' as _i460;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  await gh.factoryAsync<_i460.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i211.SearchBloc>(() => _i211.SearchBloc());
  gh.factory<_i658.SearchFilterCubit>(() => _i658.SearchFilterCubit());
  gh.factory<_i680.SplashCubit>(() => _i680.SplashCubit());
  gh.factory<_i670.ConnectivityBloc>(() => _i670.ConnectivityBloc());
  gh.factory<_i554.TabBarCubit>(() => _i554.TabBarCubit());
  gh.factory<_i170.HiveTaskStorage>(() => _i170.HiveTaskStorage());
  gh.factory<_i83.DownloadFileBloc>(() => _i83.DownloadFileBloc());
  gh.factory<_i465.FilterBloc>(() => _i465.FilterBloc());
  gh.factory<_i810.OfflineIndicatorCubit>(() => _i810.OfflineIndicatorCubit());
  gh.factory<_i450.SortBloc>(() => _i450.SortBloc());
  gh.singleton<_i361.Dio>(() => appModule.dio);
  gh.factory<_i715.LoggedInCubit>(
      () => _i715.LoggedInCubit(gh<_i170.HiveTaskStorage>()));
  gh.factory<_i327.PreviewFileBloc>(
      () => _i327.PreviewFileBloc(gh<_i170.HiveTaskStorage>()));
  gh.factory<_i943.TaskActivityBloc>(
      () => _i943.TaskActivityBloc(gh<_i170.HiveTaskStorage>()));
  gh.factory<_i906.NotificationRemoteDataSource>(
      () => _i906.NotificationRemoteDataSource(gh<_i361.Dio>()));
  gh.factory<_i697.ProcessRemoteDataSource>(
      () => _i697.ProcessRemoteDataSource(gh<_i361.Dio>()));
  gh.factory<_i847.ProfileRemoteDataSource>(
      () => _i847.ProfileRemoteDataSource(gh<_i361.Dio>()));
  gh.factory<_i278.EngineInfoRemoteDataSource>(
      () => _i278.EngineInfoRemoteDataSource(gh<_i361.Dio>()));
  gh.factory<_i833.FileRemoteDataSource>(
      () => _i833.FileRemoteDataSource(gh<_i361.Dio>()));
  gh.factory<_i924.TaskRemoteDataSource>(
      () => _i924.TaskRemoteDataSource(gh<_i361.Dio>()));
  gh.factory<_i172.ProfileRepositoryInterface>(() =>
      _i904.ProfileRepositoryImplement(gh<_i847.ProfileRemoteDataSource>()));
  gh.factory<_i574.TaskRepositoryInterface>(
      () => _i571.TaskRepositoryImplement(gh<_i924.TaskRemoteDataSource>()));
  gh.factory<_i88.EngineInfoRepositoryInterface>(() =>
      _i477.EngineInfoRepositoryImplement(
          gh<_i278.EngineInfoRemoteDataSource>()));
  gh.factory<_i383.FileRepositoryInterface>(
      () => _i995.FileRepositoryImplement(gh<_i833.FileRemoteDataSource>()));
  gh.factory<_i932.ProfileBloc>(
      () => _i932.ProfileBloc(gh<_i172.ProfileRepositoryInterface>()));
  gh.factory<_i307.GetTaskUseCase>(() =>
      _i307.GetTaskUseCase(repository: gh<_i574.TaskRepositoryInterface>()));
  gh.factory<_i868.GetTaskListUseCase>(() => _i868.GetTaskListUseCase(
      repository: gh<_i574.TaskRepositoryInterface>()));
  gh.factory<_i658.NotificationRepositoryInterface>(() =>
      _i827.NotificationRepositoryImplement(
          gh<_i906.NotificationRemoteDataSource>()));
  gh.factory<_i166.TaskDetailBloc>(() => _i166.TaskDetailBloc(
        gh<_i307.GetTaskUseCase>(),
        gh<_i170.HiveTaskStorage>(),
      ));
  gh.factory<_i683.UploadFileBloc>(() => _i683.UploadFileBloc(
        gh<_i383.FileRepositoryInterface>(),
        gh<_i170.HiveTaskStorage>(),
      ));
  gh.factory<_i969.ProcessRepositoryInterface>(() =>
      _i993.ProcessRepositoryImplement(gh<_i697.ProcessRemoteDataSource>()));
  gh.factory<_i12.TaskConflictCubit>(
      () => _i12.TaskConflictCubit(gh<_i307.GetTaskUseCase>()));
  gh.factory<_i454.GetEngineInfoUseCase>(() => _i454.GetEngineInfoUseCase(
      repository: gh<_i88.EngineInfoRepositoryInterface>()));
  gh.factory<_i774.GetProcessesUseCase>(() => _i774.GetProcessesUseCase(
      repository: gh<_i969.ProcessRepositoryInterface>()));
  gh.factory<_i483.GetNotificationUseCase>(() => _i483.GetNotificationUseCase(
      repository: gh<_i658.NotificationRepositoryInterface>()));
  gh.factory<_i543.MarkReadAllNotificationUseCase>(() =>
      _i543.MarkReadAllNotificationUseCase(
          repository: gh<_i658.NotificationRepositoryInterface>()));
  gh.factory<_i194.MarkReadNotificationUseCase>(() =>
      _i194.MarkReadNotificationUseCase(
          repository: gh<_i658.NotificationRepositoryInterface>()));
  gh.factory<_i425.DeleteFileUseCase>(() =>
      _i425.DeleteFileUseCase(repository: gh<_i383.FileRepositoryInterface>()));
  gh.factory<_i592.UploadFileUseCase>(() =>
      _i592.UploadFileUseCase(repository: gh<_i383.FileRepositoryInterface>()));
  gh.factory<_i956.ToastMessageCubit>(
      () => _i956.ToastMessageCubit(gh<_i307.GetTaskUseCase>()));
  gh.factory<_i320.LoginBloc>(
      () => _i320.LoginBloc(gh<_i454.GetEngineInfoUseCase>()));
  gh.factory<_i479.EngineInfoCubit>(
      () => _i479.EngineInfoCubit(gh<_i454.GetEngineInfoUseCase>()));
  gh.singleton<_i29.NotificationBloc>(() => _i29.NotificationBloc(
        gh<_i483.GetNotificationUseCase>(),
        gh<_i194.MarkReadNotificationUseCase>(),
        gh<_i543.MarkReadAllNotificationUseCase>(),
      ));
  gh.factory<_i644.TaskBloc>(() => _i644.TaskBloc(
        gh<_i868.GetTaskListUseCase>(),
        gh<_i170.HiveTaskStorage>(),
        gh<_i592.UploadFileUseCase>(),
        gh<_i425.DeleteFileUseCase>(),
      ));
  gh.factory<_i275.ProcessBloc>(
      () => _i275.ProcessBloc(gh<_i774.GetProcessesUseCase>()));
  gh.factory<_i900.DeleteFileBloc>(() => _i900.DeleteFileBloc(
        gh<_i425.DeleteFileUseCase>(),
        gh<_i170.HiveTaskStorage>(),
      ));
  return getIt;
}

class _$AppModule extends _i460.AppModule {}
