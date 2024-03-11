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
import 'package:shared_preferences/shared_preferences.dart' as _i11;

import '../../data/data_sources/process/process_remote_data_source.dart'
    as _i19;
import '../../data/data_sources/process/process_remote_date_source_impl.dart'
    as _i20;
import '../../data/data_sources/profile/profile_remote_data_source.dart'
    as _i23;
import '../../data/data_sources/profile/profile_remote_date_source_impl.dart'
    as _i24;
import '../../data/data_sources/task/task_remote_data_source.dart' as _i27;
import '../../data/data_sources/task/task_remote_date_source_impl.dart' as _i28;
import '../../data/data_sources/upload_file/upload_file_remote_data_source.dart'
    as _i31;
import '../../data/data_sources/upload_file/upload_file_remote_data_source_impl.dart'
    as _i32;
import '../../data/repositories/process/process_repository.dart' as _i21;
import '../../data/repositories/process/process_repository_impl.dart' as _i22;
import '../../data/repositories/profile/profile_repository.dart' as _i25;
import '../../data/repositories/profile/profile_repository_impl.dart' as _i26;
import '../../data/repositories/task/task_repository.dart' as _i29;
import '../../data/repositories/task/task_repository_impl.dart' as _i30;
import '../../data/repositories/upload_file/upload_file_repository.dart'
    as _i33;
import '../../data/repositories/upload_file/upload_file_repository_impl.dart'
    as _i34;
import '../../data/services/process/process_service.dart' as _i7;
import '../../data/services/profile/profile_service.dart' as _i8;
import '../../data/services/task/task_service.dart' as _i16;
import '../../data/services/upload_file/upload_file_service.dart' as _i18;
import '../../presentation/login/bloc/login_bloc.dart' as _i35;
import '../../presentation/process/bloc/process_bloc.dart' as _i36;
import '../../presentation/profile/bloc/logged_in_cubit.dart' as _i5;
import '../../presentation/profile/bloc/profile_bloc.dart' as _i37;
import '../../presentation/search/bloc/search_bloc.dart' as _i9;
import '../../presentation/search/bloc/search_filter_cubit.dart' as _i10;
import '../../presentation/splash/splash_cubit.dart' as _i13;
import '../../presentation/tabbar/bloc/tabbar_cubit.dart' as _i14;
import '../../presentation/task/bloc/filter_boc/filter_bloc.dart' as _i4;
import '../../presentation/task/bloc/offline_indicator_cubit.dart' as _i6;
import '../../presentation/task/bloc/sort_bloc/sort_bloc.dart' as _i12;
import '../../presentation/task/bloc/task_bloc.dart' as _i38;
import '../../presentation/task/bloc/task_detail/task_detail_cubit.dart'
    as _i15;
import '../../presentation/task_activity/bloc/upload_file_bloc.dart' as _i39;
import '../../theme/bloc/theme_bloc.dart' as _i17;
import 'app_module.dart' as _i40;

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
  gh.factory<_i4.FilterBloc>(() => _i4.FilterBloc());
  gh.factory<_i5.LoggedInCubit>(() => _i5.LoggedInCubit());
  gh.factory<_i6.OfflineIndicatorCubit>(() => _i6.OfflineIndicatorCubit());
  gh.factory<_i7.ProcessService>(() => _i7.ProcessService(gh<_i3.Dio>()));
  gh.factory<_i8.ProfileService>(() => _i8.ProfileService(gh<_i3.Dio>()));
  gh.factory<_i9.SearchBloc>(() => _i9.SearchBloc());
  gh.factory<_i10.SearchFilterCubit>(() => _i10.SearchFilterCubit());
  await gh.factoryAsync<_i11.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i12.SortBloc>(() => _i12.SortBloc());
  gh.factory<_i13.SplashCubit>(() => _i13.SplashCubit());
  gh.factory<_i14.TabBarCubit>(() => _i14.TabBarCubit());
  gh.factory<_i15.TaskDetailCubit>(() => _i15.TaskDetailCubit());
  gh.factory<_i16.TaskService>(() => _i16.TaskService(gh<_i3.Dio>()));
  gh.factory<_i17.ThemeBloc>(() => _i17.ThemeBloc());
  gh.factory<_i18.UploadFileService>(
      () => _i18.UploadFileService(gh<_i3.Dio>()));
  gh.factory<_i19.ProcessRemoteDataSource>(
      () => _i20.ProcessRemoteDataSourceImpl(gh<_i7.ProcessService>()));
  gh.factory<_i21.ProcessRepository>(
      () => _i22.ProcessRepositoryImpl(gh<_i19.ProcessRemoteDataSource>()));
  gh.factory<_i23.ProfileRemoteDataSource>(
      () => _i24.ProfileRemoteDataSourceImpl(gh<_i8.ProfileService>()));
  gh.factory<_i25.ProfileRepository>(
      () => _i26.ProfileRepositoryImpl(gh<_i23.ProfileRemoteDataSource>()));
  gh.factory<_i27.TaskRemoteDataSource>(
      () => _i28.TaskRemoteDataSourceImpl(gh<_i16.TaskService>()));
  gh.factory<_i29.TaskRepository>(
      () => _i30.TaskRepositoryImpl(gh<_i27.TaskRemoteDataSource>()));
  gh.factory<_i31.UploadFileRemoteDataSource>(
      () => _i32.UploadFileRemoteDataSourceImpl(gh<_i18.UploadFileService>()));
  gh.factory<_i33.UploadFileRepository>(() =>
      _i34.UploadFileRepositoryImpl(gh<_i31.UploadFileRemoteDataSource>()));
  gh.factory<_i35.LoginBloc>(() => _i35.LoginBloc(gh<_i29.TaskRepository>()));
  gh.factory<_i36.ProcessBloc>(
      () => _i36.ProcessBloc(gh<_i21.ProcessRepository>()));
  gh.factory<_i37.ProfileBloc>(
      () => _i37.ProfileBloc(gh<_i25.ProfileRepository>()));
  gh.factory<_i38.TaskBloc>(() => _i38.TaskBloc(gh<_i29.TaskRepository>()));
  gh.factory<_i39.UploadFileBloc>(
      () => _i39.UploadFileBloc(gh<_i33.UploadFileRepository>()));
  return getIt;
}

class _$AppModule extends _i40.AppModule {}
