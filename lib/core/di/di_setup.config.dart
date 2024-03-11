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
import 'package:shared_preferences/shared_preferences.dart' as _i13;

import '../../data/data_sources/file/file_remote_data_source.dart' as _i19;
import '../../data/data_sources/file/file_remote_date_source_impl.dart' as _i20;
import '../../data/data_sources/process/process_remote_data_source.dart'
    as _i23;
import '../../data/data_sources/process/process_remote_date_source_impl.dart'
    as _i24;
import '../../data/data_sources/profile/profile_remote_data_source.dart'
    as _i27;
import '../../data/data_sources/profile/profile_remote_date_source_impl.dart'
    as _i28;
import '../../data/data_sources/task/task_remote_data_source.dart' as _i31;
import '../../data/data_sources/task/task_remote_date_source_impl.dart' as _i32;
import '../../data/repositories/file/file_repository.dart' as _i21;
import '../../data/repositories/file/file_repository_impl.dart' as _i22;
import '../../data/repositories/process/process_repository.dart' as _i25;
import '../../data/repositories/process/process_repository_impl.dart' as _i26;
import '../../data/repositories/profile/profile_repository.dart' as _i29;
import '../../data/repositories/profile/profile_repository_impl.dart' as _i30;
import '../../data/repositories/task/task_repository.dart' as _i33;
import '../../data/repositories/task/task_repository_impl.dart' as _i34;
import '../../data/services/file/file_services.dart' as _i5;
import '../../data/services/process/process_service.dart' as _i9;
import '../../data/services/profile/profile_service.dart' as _i10;
import '../../data/services/task/task_service.dart' as _i18;
import '../../presentation/login/bloc/login_bloc.dart' as _i37;
import '../../presentation/process/bloc/process_bloc.dart' as _i38;
import '../../presentation/profile/bloc/logged_in_cubit.dart' as _i7;
import '../../presentation/profile/bloc/profile_bloc.dart' as _i39;
import '../../presentation/search/bloc/search_bloc.dart' as _i11;
import '../../presentation/search/bloc/search_filter_cubit.dart' as _i12;
import '../../presentation/splash/splash_cubit.dart' as _i15;
import '../../presentation/tabbar/bloc/tabbar_cubit.dart' as _i16;
import '../../presentation/task/bloc/filter_boc/filter_bloc.dart' as _i6;
import '../../presentation/task/bloc/offline_indicator_cubit.dart' as _i8;
import '../../presentation/task/bloc/sort_bloc/sort_bloc.dart' as _i14;
import '../../presentation/task/bloc/task_bloc.dart' as _i40;
import '../../presentation/task/bloc/task_detail/task_detail_cubit.dart'
    as _i17;
import '../../presentation/task_activity/bloc/delete_file/delete_file_bloc.dart'
    as _i36;
import '../../presentation/task_activity/bloc/download_file/download_file_bloc.dart'
    as _i4;
import '../../presentation/task_activity/bloc/task_detail/task_detail_bloc.dart'
    as _i41;
import '../../presentation/task_activity/bloc/upload_file/upload_file_bloc.dart'
    as _i35;
import 'app_module.dart' as _i42;

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
  gh.factory<_i5.FileServices>(() => _i5.FileServices(gh<_i3.Dio>()));
  gh.factory<_i6.FilterBloc>(() => _i6.FilterBloc());
  gh.factory<_i7.LoggedInCubit>(() => _i7.LoggedInCubit());
  gh.factory<_i8.OfflineIndicatorCubit>(() => _i8.OfflineIndicatorCubit());
  gh.factory<_i9.ProcessService>(() => _i9.ProcessService(gh<_i3.Dio>()));
  gh.factory<_i10.ProfileService>(() => _i10.ProfileService(gh<_i3.Dio>()));
  gh.factory<_i11.SearchBloc>(() => _i11.SearchBloc());
  gh.factory<_i12.SearchFilterCubit>(() => _i12.SearchFilterCubit());
  await gh.factoryAsync<_i13.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i14.SortBloc>(() => _i14.SortBloc());
  gh.factory<_i15.SplashCubit>(() => _i15.SplashCubit());
  gh.factory<_i16.TabBarCubit>(() => _i16.TabBarCubit());
  gh.factory<_i17.TaskDetailCubit>(() => _i17.TaskDetailCubit());
  gh.factory<_i18.TaskService>(() => _i18.TaskService(gh<_i3.Dio>()));
  gh.factory<_i19.FileRemoteDataSource>(
      () => _i20.FileRemoteDataSourceImpl(gh<_i5.FileServices>()));
  gh.factory<_i21.FileRepository>(
      () => _i22.FileRepositoryImpl(gh<_i19.FileRemoteDataSource>()));
  gh.factory<_i23.ProcessRemoteDataSource>(
      () => _i24.ProcessRemoteDataSourceImpl(gh<_i9.ProcessService>()));
  gh.factory<_i25.ProcessRepository>(
      () => _i26.ProcessRepositoryImpl(gh<_i23.ProcessRemoteDataSource>()));
  gh.factory<_i27.ProfileRemoteDataSource>(
      () => _i28.ProfileRemoteDataSourceImpl(gh<_i10.ProfileService>()));
  gh.factory<_i29.ProfileRepository>(
      () => _i30.ProfileRepositoryImpl(gh<_i27.ProfileRemoteDataSource>()));
  gh.factory<_i31.TaskRemoteDataSource>(
      () => _i32.TaskRemoteDataSourceImpl(gh<_i18.TaskService>()));
  gh.factory<_i33.TaskRepository>(
      () => _i34.TaskRepositoryImpl(gh<_i31.TaskRemoteDataSource>()));
  gh.factory<_i35.UploadFileBloc>(
      () => _i35.UploadFileBloc(gh<_i21.FileRepository>()));
  gh.factory<_i36.DeleteFileBloc>(
      () => _i36.DeleteFileBloc(gh<_i21.FileRepository>()));
  gh.factory<_i37.LoginBloc>(() => _i37.LoginBloc(gh<_i33.TaskRepository>()));
  gh.factory<_i38.ProcessBloc>(
      () => _i38.ProcessBloc(gh<_i25.ProcessRepository>()));
  gh.factory<_i39.ProfileBloc>(
      () => _i39.ProfileBloc(gh<_i29.ProfileRepository>()));
  gh.factory<_i40.TaskBloc>(() => _i40.TaskBloc(gh<_i33.TaskRepository>()));
  gh.factory<_i41.TaskDetailBloc>(
      () => _i41.TaskDetailBloc(gh<_i33.TaskRepository>()));
  return getIt;
}

class _$AppModule extends _i42.AppModule {}
