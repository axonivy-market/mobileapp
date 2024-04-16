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
import 'package:shared_preferences/shared_preferences.dart' as _i20;

import '../../data/data_sources/engine_info/engine_info_remote_data_source.dart'
    as _i30;
import '../../data/data_sources/engine_info/engine_info_remote_data_source_impl.dart'
    as _i31;
import '../../data/data_sources/process/process_remote_data_source.dart'
    as _i40;
import '../../data/data_sources/process/process_remote_date_source_impl.dart'
    as _i41;
import '../../data/data_sources/profile/profile_remote_data_source.dart'
    as _i44;
import '../../data/data_sources/profile/profile_remote_date_source_impl.dart'
    as _i45;
import '../../data/repositories/engine/engine_info_repository.dart' as _i32;
import '../../data/repositories/engine/engine_info_repository_impl.dart'
    as _i33;
import '../../data/repositories/process/process_repository.dart' as _i42;
import '../../data/repositories/process/process_repository_impl.dart' as _i43;
import '../../data/repositories/profile/profile_repository.dart' as _i46;
import '../../data/repositories/profile/profile_repository_impl.dart' as _i47;
import '../../data/services/engine_info/engine_info_service.dart' as _i6;
import '../../data/services/process/process_service.dart' as _i16;
import '../../data/services/profile/profile_service.dart' as _i17;
import '../../features/login/bloc/login_bloc.dart' as _i37;
import '../../features/notification/data/datasources/notification_remote_data_source.dart'
    as _i12;
import '../../features/notification/data/repositories/notification_repository_implement.dart'
    as _i14;
import '../../features/notification/domain/repositories/notification_repository_interface.dart'
    as _i13;
import '../../features/notification/domain/usecases/get_notifications_use_case.dart'
    as _i34;
import '../../features/notification/domain/usecases/mark_read_notification_use_case.dart'
    as _i38;
import '../../features/notification/presentation/bloc/notification_bloc.dart'
    as _i39;
import '../../features/process/bloc/process_bloc.dart' as _i53;
import '../../features/profile/bloc/logged_in_cubit.dart' as _i11;
import '../../features/profile/bloc/profile_bloc.dart' as _i54;
import '../../features/search/bloc/engine_info_cubit/engine_info_cubit.dart'
    as _i52;
import '../../features/search/bloc/search_bloc/search_bloc.dart' as _i18;
import '../../features/search/bloc/search_filter_cubit/search_filter_cubit.dart'
    as _i19;
import '../../features/splash/splash_cubit.dart' as _i22;
import '../../features/tabbar/bloc/connectivity_bloc/connectivity_bloc.dart'
    as _i3;
import '../../features/tabbar/bloc/tabbar_cubit.dart' as _i23;
import '../../features/task/data/datasources/file_remote_data_source/file_remote_data_source.dart'
    as _i7;
import '../../features/task/data/datasources/task_remote_data_source/task_remote_data_source.dart'
    as _i24;
import '../../features/task/data/repositories/file_repository_implement.dart'
    as _i9;
import '../../features/task/data/repositories/task_repository_implement.dart'
    as _i26;
import '../../features/task/domain/repositories/file_repository_interface.dart'
    as _i8;
import '../../features/task/domain/repositories/task_repository_interface.dart'
    as _i25;
import '../../features/task/domain/usecases/delete_file_use_case.dart' as _i29;
import '../../features/task/domain/usecases/get_task_use_case.dart' as _i36;
import '../../features/task/domain/usecases/get_tasks_use_case.dart' as _i35;
import '../../features/task/domain/usecases/upload_file_use_case.dart' as _i28;
import '../../features/task/presentation/bloc/delete_file_bloc/delete_file_bloc.dart'
    as _i51;
import '../../features/task/presentation/bloc/download_file_bloc/download_file_bloc.dart'
    as _i5;
import '../../features/task/presentation/bloc/filter_bloc/filter_bloc.dart'
    as _i10;
import '../../features/task/presentation/bloc/offline_indicator_cubit/offline_indicator_cubit.dart'
    as _i15;
import '../../features/task/presentation/bloc/sort_bloc/sort_bloc.dart' as _i21;
import '../../features/task/presentation/bloc/task_bloc/task_bloc.dart' as _i48;
import '../../features/task/presentation/bloc/task_detail_bloc/task_detail_bloc.dart'
    as _i49;
import '../../features/task/presentation/bloc/toast_message_cubit/toast_message_cubit.dart'
    as _i50;
import '../../features/task/presentation/bloc/upload_file_bloc/upload_file_bloc.dart'
    as _i27;
import 'app_module.dart' as _i55;

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
  gh.factory<_i12.NotificationRemoteDataSource>(
      () => _i12.NotificationRemoteDataSource(gh<_i4.Dio>()));
  gh.factory<_i13.NotificationRepositoryInterface>(() =>
      _i14.NotificationRepositoryImplement(
          gh<_i12.NotificationRemoteDataSource>()));
  gh.factory<_i15.OfflineIndicatorCubit>(() => _i15.OfflineIndicatorCubit());
  gh.factory<_i16.ProcessService>(() => _i16.ProcessService(gh<_i4.Dio>()));
  gh.factory<_i17.ProfileService>(() => _i17.ProfileService(gh<_i4.Dio>()));
  gh.factory<_i18.SearchBloc>(() => _i18.SearchBloc());
  gh.factory<_i19.SearchFilterCubit>(() => _i19.SearchFilterCubit());
  await gh.factoryAsync<_i20.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i21.SortBloc>(() => _i21.SortBloc());
  gh.factory<_i22.SplashCubit>(() => _i22.SplashCubit());
  gh.factory<_i23.TabBarCubit>(() => _i23.TabBarCubit());
  gh.factory<_i24.TaskRemoteDataSource>(
      () => _i24.TaskRemoteDataSource(gh<_i4.Dio>()));
  gh.factory<_i25.TaskRepositoryInterface>(
      () => _i26.TaskRepositoryImplement(gh<_i24.TaskRemoteDataSource>()));
  gh.factory<_i27.UploadFileBloc>(
      () => _i27.UploadFileBloc(gh<_i8.FileRepositoryInterface>()));
  gh.factory<_i28.UploadFileUseCase>(() =>
      _i28.UploadFileUseCase(repository: gh<_i8.FileRepositoryInterface>()));
  gh.factory<_i29.DeleteFileUseCase>(() =>
      _i29.DeleteFileUseCase(repository: gh<_i8.FileRepositoryInterface>()));
  gh.factory<_i30.EngineInfoRemoteDataSource>(
      () => _i31.EngineInfoRemoteDataSourceImpl(gh<_i6.EngineInfoService>()));
  gh.factory<_i32.EngineInfoRepository>(() =>
      _i33.EngineInfoRepositoryImpl(gh<_i30.EngineInfoRemoteDataSource>()));
  gh.factory<_i34.GetNotificationUseCase>(() => _i34.GetNotificationUseCase(
      repository: gh<_i13.NotificationRepositoryInterface>()));
  gh.factory<_i35.GetTaskListUseCase>(() =>
      _i35.GetTaskListUseCase(repository: gh<_i25.TaskRepositoryInterface>()));
  gh.factory<_i36.GetTaskUseCase>(() =>
      _i36.GetTaskUseCase(repository: gh<_i25.TaskRepositoryInterface>()));
  gh.factory<_i37.LoginBloc>(
      () => _i37.LoginBloc(gh<_i32.EngineInfoRepository>()));
  gh.factory<_i38.MarkReadNotificationUseCase>(() =>
      _i38.MarkReadNotificationUseCase(
          repository: gh<_i13.NotificationRepositoryInterface>()));
  gh.factory<_i39.NotificationBloc>(() => _i39.NotificationBloc(
        gh<_i34.GetNotificationUseCase>(),
        gh<_i38.MarkReadNotificationUseCase>(),
      ));
  gh.factory<_i40.ProcessRemoteDataSource>(
      () => _i41.ProcessRemoteDataSourceImpl(gh<_i16.ProcessService>()));
  gh.factory<_i42.ProcessRepository>(
      () => _i43.ProcessRepositoryImpl(gh<_i40.ProcessRemoteDataSource>()));
  gh.factory<_i44.ProfileRemoteDataSource>(
      () => _i45.ProfileRemoteDataSourceImpl(gh<_i17.ProfileService>()));
  gh.factory<_i46.ProfileRepository>(
      () => _i47.ProfileRepositoryImpl(gh<_i44.ProfileRemoteDataSource>()));
  gh.factory<_i48.TaskBloc>(() => _i48.TaskBloc(gh<_i35.GetTaskListUseCase>()));
  gh.factory<_i49.TaskDetailBloc>(
      () => _i49.TaskDetailBloc(gh<_i36.GetTaskUseCase>()));
  gh.factory<_i50.ToastMessageCubit>(
      () => _i50.ToastMessageCubit(gh<_i36.GetTaskUseCase>()));
  gh.factory<_i51.DeleteFileBloc>(
      () => _i51.DeleteFileBloc(gh<_i29.DeleteFileUseCase>()));
  gh.factory<_i52.EngineInfoCubit>(
      () => _i52.EngineInfoCubit(gh<_i32.EngineInfoRepository>()));
  gh.factory<_i53.ProcessBloc>(
      () => _i53.ProcessBloc(gh<_i42.ProcessRepository>()));
  gh.factory<_i54.ProfileBloc>(
      () => _i54.ProfileBloc(gh<_i46.ProfileRepository>()));
  return getIt;
}

class _$AppModule extends _i55.AppModule {}
