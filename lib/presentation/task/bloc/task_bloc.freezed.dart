// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FilterType activeFilter) getTasks,
    required TResult Function(FilterType activeFilter) filterTasks,
    required TResult Function(List<SortType> activeSortType) sortTasks,
    required TResult Function(int id) getTask,
    required TResult Function(bool isConnected) showOfflinePopupEvent,
    required TResult Function() parseHtml,
    required TResult Function() onTasksLoadedSync,
    required TResult Function() syncDataOnEngineRestore,
    required TResult Function() showTasksOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FilterType activeFilter)? getTasks,
    TResult? Function(FilterType activeFilter)? filterTasks,
    TResult? Function(List<SortType> activeSortType)? sortTasks,
    TResult? Function(int id)? getTask,
    TResult? Function(bool isConnected)? showOfflinePopupEvent,
    TResult? Function()? parseHtml,
    TResult? Function()? onTasksLoadedSync,
    TResult? Function()? syncDataOnEngineRestore,
    TResult? Function()? showTasksOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FilterType activeFilter)? getTasks,
    TResult Function(FilterType activeFilter)? filterTasks,
    TResult Function(List<SortType> activeSortType)? sortTasks,
    TResult Function(int id)? getTask,
    TResult Function(bool isConnected)? showOfflinePopupEvent,
    TResult Function()? parseHtml,
    TResult Function()? onTasksLoadedSync,
    TResult Function()? syncDataOnEngineRestore,
    TResult Function()? showTasksOffline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_FilterTasks value) filterTasks,
    required TResult Function(_SortTasks value) sortTasks,
    required TResult Function(_GetTask value) getTask,
    required TResult Function(ShowOfflinePopupEvent value)
        showOfflinePopupEvent,
    required TResult Function(ParseHtmlEvent value) parseHtml,
    required TResult Function(TasksLoadedSyncEvent value) onTasksLoadedSync,
    required TResult Function(SyncDataOnEngineRestoreEvent value)
        syncDataOnEngineRestore,
    required TResult Function(ShowTasksOfflineEvent value) showTasksOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_FilterTasks value)? filterTasks,
    TResult? Function(_SortTasks value)? sortTasks,
    TResult? Function(_GetTask value)? getTask,
    TResult? Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    TResult? Function(ParseHtmlEvent value)? parseHtml,
    TResult? Function(TasksLoadedSyncEvent value)? onTasksLoadedSync,
    TResult? Function(SyncDataOnEngineRestoreEvent value)?
        syncDataOnEngineRestore,
    TResult? Function(ShowTasksOfflineEvent value)? showTasksOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_FilterTasks value)? filterTasks,
    TResult Function(_SortTasks value)? sortTasks,
    TResult Function(_GetTask value)? getTask,
    TResult Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    TResult Function(ParseHtmlEvent value)? parseHtml,
    TResult Function(TasksLoadedSyncEvent value)? onTasksLoadedSync,
    TResult Function(SyncDataOnEngineRestoreEvent value)?
        syncDataOnEngineRestore,
    TResult Function(ShowTasksOfflineEvent value)? showTasksOffline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTasksImplCopyWith<$Res> {
  factory _$$GetTasksImplCopyWith(
          _$GetTasksImpl value, $Res Function(_$GetTasksImpl) then) =
      __$$GetTasksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FilterType activeFilter});
}

/// @nodoc
class __$$GetTasksImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$GetTasksImpl>
    implements _$$GetTasksImplCopyWith<$Res> {
  __$$GetTasksImplCopyWithImpl(
      _$GetTasksImpl _value, $Res Function(_$GetTasksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeFilter = null,
  }) {
    return _then(_$GetTasksImpl(
      null == activeFilter
          ? _value.activeFilter
          : activeFilter // ignore: cast_nullable_to_non_nullable
              as FilterType,
    ));
  }
}

/// @nodoc

class _$GetTasksImpl implements _GetTasks {
  const _$GetTasksImpl(this.activeFilter);

  @override
  final FilterType activeFilter;

  @override
  String toString() {
    return 'TaskEvent.getTasks(activeFilter: $activeFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTasksImpl &&
            (identical(other.activeFilter, activeFilter) ||
                other.activeFilter == activeFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTasksImplCopyWith<_$GetTasksImpl> get copyWith =>
      __$$GetTasksImplCopyWithImpl<_$GetTasksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FilterType activeFilter) getTasks,
    required TResult Function(FilterType activeFilter) filterTasks,
    required TResult Function(List<SortType> activeSortType) sortTasks,
    required TResult Function(int id) getTask,
    required TResult Function(bool isConnected) showOfflinePopupEvent,
    required TResult Function() parseHtml,
    required TResult Function() onTasksLoadedSync,
    required TResult Function() syncDataOnEngineRestore,
    required TResult Function() showTasksOffline,
  }) {
    return getTasks(activeFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FilterType activeFilter)? getTasks,
    TResult? Function(FilterType activeFilter)? filterTasks,
    TResult? Function(List<SortType> activeSortType)? sortTasks,
    TResult? Function(int id)? getTask,
    TResult? Function(bool isConnected)? showOfflinePopupEvent,
    TResult? Function()? parseHtml,
    TResult? Function()? onTasksLoadedSync,
    TResult? Function()? syncDataOnEngineRestore,
    TResult? Function()? showTasksOffline,
  }) {
    return getTasks?.call(activeFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FilterType activeFilter)? getTasks,
    TResult Function(FilterType activeFilter)? filterTasks,
    TResult Function(List<SortType> activeSortType)? sortTasks,
    TResult Function(int id)? getTask,
    TResult Function(bool isConnected)? showOfflinePopupEvent,
    TResult Function()? parseHtml,
    TResult Function()? onTasksLoadedSync,
    TResult Function()? syncDataOnEngineRestore,
    TResult Function()? showTasksOffline,
    required TResult orElse(),
  }) {
    if (getTasks != null) {
      return getTasks(activeFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_FilterTasks value) filterTasks,
    required TResult Function(_SortTasks value) sortTasks,
    required TResult Function(_GetTask value) getTask,
    required TResult Function(ShowOfflinePopupEvent value)
        showOfflinePopupEvent,
    required TResult Function(ParseHtmlEvent value) parseHtml,
    required TResult Function(TasksLoadedSyncEvent value) onTasksLoadedSync,
    required TResult Function(SyncDataOnEngineRestoreEvent value)
        syncDataOnEngineRestore,
    required TResult Function(ShowTasksOfflineEvent value) showTasksOffline,
  }) {
    return getTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_FilterTasks value)? filterTasks,
    TResult? Function(_SortTasks value)? sortTasks,
    TResult? Function(_GetTask value)? getTask,
    TResult? Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    TResult? Function(ParseHtmlEvent value)? parseHtml,
    TResult? Function(TasksLoadedSyncEvent value)? onTasksLoadedSync,
    TResult? Function(SyncDataOnEngineRestoreEvent value)?
        syncDataOnEngineRestore,
    TResult? Function(ShowTasksOfflineEvent value)? showTasksOffline,
  }) {
    return getTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_FilterTasks value)? filterTasks,
    TResult Function(_SortTasks value)? sortTasks,
    TResult Function(_GetTask value)? getTask,
    TResult Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    TResult Function(ParseHtmlEvent value)? parseHtml,
    TResult Function(TasksLoadedSyncEvent value)? onTasksLoadedSync,
    TResult Function(SyncDataOnEngineRestoreEvent value)?
        syncDataOnEngineRestore,
    TResult Function(ShowTasksOfflineEvent value)? showTasksOffline,
    required TResult orElse(),
  }) {
    if (getTasks != null) {
      return getTasks(this);
    }
    return orElse();
  }
}

abstract class _GetTasks implements TaskEvent {
  const factory _GetTasks(final FilterType activeFilter) = _$GetTasksImpl;

  FilterType get activeFilter;
  @JsonKey(ignore: true)
  _$$GetTasksImplCopyWith<_$GetTasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterTasksImplCopyWith<$Res> {
  factory _$$FilterTasksImplCopyWith(
          _$FilterTasksImpl value, $Res Function(_$FilterTasksImpl) then) =
      __$$FilterTasksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FilterType activeFilter});
}

/// @nodoc
class __$$FilterTasksImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$FilterTasksImpl>
    implements _$$FilterTasksImplCopyWith<$Res> {
  __$$FilterTasksImplCopyWithImpl(
      _$FilterTasksImpl _value, $Res Function(_$FilterTasksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeFilter = null,
  }) {
    return _then(_$FilterTasksImpl(
      null == activeFilter
          ? _value.activeFilter
          : activeFilter // ignore: cast_nullable_to_non_nullable
              as FilterType,
    ));
  }
}

/// @nodoc

class _$FilterTasksImpl implements _FilterTasks {
  const _$FilterTasksImpl(this.activeFilter);

  @override
  final FilterType activeFilter;

  @override
  String toString() {
    return 'TaskEvent.filterTasks(activeFilter: $activeFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterTasksImpl &&
            (identical(other.activeFilter, activeFilter) ||
                other.activeFilter == activeFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterTasksImplCopyWith<_$FilterTasksImpl> get copyWith =>
      __$$FilterTasksImplCopyWithImpl<_$FilterTasksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FilterType activeFilter) getTasks,
    required TResult Function(FilterType activeFilter) filterTasks,
    required TResult Function(List<SortType> activeSortType) sortTasks,
    required TResult Function(int id) getTask,
    required TResult Function(bool isConnected) showOfflinePopupEvent,
    required TResult Function() parseHtml,
    required TResult Function() onTasksLoadedSync,
    required TResult Function() syncDataOnEngineRestore,
    required TResult Function() showTasksOffline,
  }) {
    return filterTasks(activeFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FilterType activeFilter)? getTasks,
    TResult? Function(FilterType activeFilter)? filterTasks,
    TResult? Function(List<SortType> activeSortType)? sortTasks,
    TResult? Function(int id)? getTask,
    TResult? Function(bool isConnected)? showOfflinePopupEvent,
    TResult? Function()? parseHtml,
    TResult? Function()? onTasksLoadedSync,
    TResult? Function()? syncDataOnEngineRestore,
    TResult? Function()? showTasksOffline,
  }) {
    return filterTasks?.call(activeFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FilterType activeFilter)? getTasks,
    TResult Function(FilterType activeFilter)? filterTasks,
    TResult Function(List<SortType> activeSortType)? sortTasks,
    TResult Function(int id)? getTask,
    TResult Function(bool isConnected)? showOfflinePopupEvent,
    TResult Function()? parseHtml,
    TResult Function()? onTasksLoadedSync,
    TResult Function()? syncDataOnEngineRestore,
    TResult Function()? showTasksOffline,
    required TResult orElse(),
  }) {
    if (filterTasks != null) {
      return filterTasks(activeFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_FilterTasks value) filterTasks,
    required TResult Function(_SortTasks value) sortTasks,
    required TResult Function(_GetTask value) getTask,
    required TResult Function(ShowOfflinePopupEvent value)
        showOfflinePopupEvent,
    required TResult Function(ParseHtmlEvent value) parseHtml,
    required TResult Function(TasksLoadedSyncEvent value) onTasksLoadedSync,
    required TResult Function(SyncDataOnEngineRestoreEvent value)
        syncDataOnEngineRestore,
    required TResult Function(ShowTasksOfflineEvent value) showTasksOffline,
  }) {
    return filterTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_FilterTasks value)? filterTasks,
    TResult? Function(_SortTasks value)? sortTasks,
    TResult? Function(_GetTask value)? getTask,
    TResult? Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    TResult? Function(ParseHtmlEvent value)? parseHtml,
    TResult? Function(TasksLoadedSyncEvent value)? onTasksLoadedSync,
    TResult? Function(SyncDataOnEngineRestoreEvent value)?
        syncDataOnEngineRestore,
    TResult? Function(ShowTasksOfflineEvent value)? showTasksOffline,
  }) {
    return filterTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_FilterTasks value)? filterTasks,
    TResult Function(_SortTasks value)? sortTasks,
    TResult Function(_GetTask value)? getTask,
    TResult Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    TResult Function(ParseHtmlEvent value)? parseHtml,
    TResult Function(TasksLoadedSyncEvent value)? onTasksLoadedSync,
    TResult Function(SyncDataOnEngineRestoreEvent value)?
        syncDataOnEngineRestore,
    TResult Function(ShowTasksOfflineEvent value)? showTasksOffline,
    required TResult orElse(),
  }) {
    if (filterTasks != null) {
      return filterTasks(this);
    }
    return orElse();
  }
}

abstract class _FilterTasks implements TaskEvent {
  const factory _FilterTasks(final FilterType activeFilter) = _$FilterTasksImpl;

  FilterType get activeFilter;
  @JsonKey(ignore: true)
  _$$FilterTasksImplCopyWith<_$FilterTasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortTasksImplCopyWith<$Res> {
  factory _$$SortTasksImplCopyWith(
          _$SortTasksImpl value, $Res Function(_$SortTasksImpl) then) =
      __$$SortTasksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SortType> activeSortType});
}

/// @nodoc
class __$$SortTasksImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$SortTasksImpl>
    implements _$$SortTasksImplCopyWith<$Res> {
  __$$SortTasksImplCopyWithImpl(
      _$SortTasksImpl _value, $Res Function(_$SortTasksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeSortType = null,
  }) {
    return _then(_$SortTasksImpl(
      null == activeSortType
          ? _value._activeSortType
          : activeSortType // ignore: cast_nullable_to_non_nullable
              as List<SortType>,
    ));
  }
}

/// @nodoc

class _$SortTasksImpl implements _SortTasks {
  const _$SortTasksImpl(final List<SortType> activeSortType)
      : _activeSortType = activeSortType;

  final List<SortType> _activeSortType;
  @override
  List<SortType> get activeSortType {
    if (_activeSortType is EqualUnmodifiableListView) return _activeSortType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeSortType);
  }

  @override
  String toString() {
    return 'TaskEvent.sortTasks(activeSortType: $activeSortType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortTasksImpl &&
            const DeepCollectionEquality()
                .equals(other._activeSortType, _activeSortType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_activeSortType));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SortTasksImplCopyWith<_$SortTasksImpl> get copyWith =>
      __$$SortTasksImplCopyWithImpl<_$SortTasksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FilterType activeFilter) getTasks,
    required TResult Function(FilterType activeFilter) filterTasks,
    required TResult Function(List<SortType> activeSortType) sortTasks,
    required TResult Function(int id) getTask,
    required TResult Function(bool isConnected) showOfflinePopupEvent,
    required TResult Function() parseHtml,
    required TResult Function() onTasksLoadedSync,
    required TResult Function() syncDataOnEngineRestore,
    required TResult Function() showTasksOffline,
  }) {
    return sortTasks(activeSortType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FilterType activeFilter)? getTasks,
    TResult? Function(FilterType activeFilter)? filterTasks,
    TResult? Function(List<SortType> activeSortType)? sortTasks,
    TResult? Function(int id)? getTask,
    TResult? Function(bool isConnected)? showOfflinePopupEvent,
    TResult? Function()? parseHtml,
    TResult? Function()? onTasksLoadedSync,
    TResult? Function()? syncDataOnEngineRestore,
    TResult? Function()? showTasksOffline,
  }) {
    return sortTasks?.call(activeSortType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FilterType activeFilter)? getTasks,
    TResult Function(FilterType activeFilter)? filterTasks,
    TResult Function(List<SortType> activeSortType)? sortTasks,
    TResult Function(int id)? getTask,
    TResult Function(bool isConnected)? showOfflinePopupEvent,
    TResult Function()? parseHtml,
    TResult Function()? onTasksLoadedSync,
    TResult Function()? syncDataOnEngineRestore,
    TResult Function()? showTasksOffline,
    required TResult orElse(),
  }) {
    if (sortTasks != null) {
      return sortTasks(activeSortType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_FilterTasks value) filterTasks,
    required TResult Function(_SortTasks value) sortTasks,
    required TResult Function(_GetTask value) getTask,
    required TResult Function(ShowOfflinePopupEvent value)
        showOfflinePopupEvent,
    required TResult Function(ParseHtmlEvent value) parseHtml,
    required TResult Function(TasksLoadedSyncEvent value) onTasksLoadedSync,
    required TResult Function(SyncDataOnEngineRestoreEvent value)
        syncDataOnEngineRestore,
    required TResult Function(ShowTasksOfflineEvent value) showTasksOffline,
  }) {
    return sortTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_FilterTasks value)? filterTasks,
    TResult? Function(_SortTasks value)? sortTasks,
    TResult? Function(_GetTask value)? getTask,
    TResult? Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    TResult? Function(ParseHtmlEvent value)? parseHtml,
    TResult? Function(TasksLoadedSyncEvent value)? onTasksLoadedSync,
    TResult? Function(SyncDataOnEngineRestoreEvent value)?
        syncDataOnEngineRestore,
    TResult? Function(ShowTasksOfflineEvent value)? showTasksOffline,
  }) {
    return sortTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_FilterTasks value)? filterTasks,
    TResult Function(_SortTasks value)? sortTasks,
    TResult Function(_GetTask value)? getTask,
    TResult Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    TResult Function(ParseHtmlEvent value)? parseHtml,
    TResult Function(TasksLoadedSyncEvent value)? onTasksLoadedSync,
    TResult Function(SyncDataOnEngineRestoreEvent value)?
        syncDataOnEngineRestore,
    TResult Function(ShowTasksOfflineEvent value)? showTasksOffline,
    required TResult orElse(),
  }) {
    if (sortTasks != null) {
      return sortTasks(this);
    }
    return orElse();
  }
}

abstract class _SortTasks implements TaskEvent {
  const factory _SortTasks(final List<SortType> activeSortType) =
      _$SortTasksImpl;

  List<SortType> get activeSortType;
  @JsonKey(ignore: true)
  _$$SortTasksImplCopyWith<_$SortTasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTaskImplCopyWith<$Res> {
  factory _$$GetTaskImplCopyWith(
          _$GetTaskImpl value, $Res Function(_$GetTaskImpl) then) =
      __$$GetTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetTaskImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$GetTaskImpl>
    implements _$$GetTaskImplCopyWith<$Res> {
  __$$GetTaskImplCopyWithImpl(
      _$GetTaskImpl _value, $Res Function(_$GetTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetTaskImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetTaskImpl implements _GetTask {
  const _$GetTaskImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'TaskEvent.getTask(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTaskImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTaskImplCopyWith<_$GetTaskImpl> get copyWith =>
      __$$GetTaskImplCopyWithImpl<_$GetTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FilterType activeFilter) getTasks,
    required TResult Function(FilterType activeFilter) filterTasks,
    required TResult Function(List<SortType> activeSortType) sortTasks,
    required TResult Function(int id) getTask,
    required TResult Function(bool isConnected) showOfflinePopupEvent,
    required TResult Function() parseHtml,
    required TResult Function() onTasksLoadedSync,
    required TResult Function() syncDataOnEngineRestore,
    required TResult Function() showTasksOffline,
  }) {
    return getTask(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FilterType activeFilter)? getTasks,
    TResult? Function(FilterType activeFilter)? filterTasks,
    TResult? Function(List<SortType> activeSortType)? sortTasks,
    TResult? Function(int id)? getTask,
    TResult? Function(bool isConnected)? showOfflinePopupEvent,
    TResult? Function()? parseHtml,
    TResult? Function()? onTasksLoadedSync,
    TResult? Function()? syncDataOnEngineRestore,
    TResult? Function()? showTasksOffline,
  }) {
    return getTask?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FilterType activeFilter)? getTasks,
    TResult Function(FilterType activeFilter)? filterTasks,
    TResult Function(List<SortType> activeSortType)? sortTasks,
    TResult Function(int id)? getTask,
    TResult Function(bool isConnected)? showOfflinePopupEvent,
    TResult Function()? parseHtml,
    TResult Function()? onTasksLoadedSync,
    TResult Function()? syncDataOnEngineRestore,
    TResult Function()? showTasksOffline,
    required TResult orElse(),
  }) {
    if (getTask != null) {
      return getTask(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_FilterTasks value) filterTasks,
    required TResult Function(_SortTasks value) sortTasks,
    required TResult Function(_GetTask value) getTask,
    required TResult Function(ShowOfflinePopupEvent value)
        showOfflinePopupEvent,
    required TResult Function(ParseHtmlEvent value) parseHtml,
    required TResult Function(TasksLoadedSyncEvent value) onTasksLoadedSync,
    required TResult Function(SyncDataOnEngineRestoreEvent value)
        syncDataOnEngineRestore,
    required TResult Function(ShowTasksOfflineEvent value) showTasksOffline,
  }) {
    return getTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_FilterTasks value)? filterTasks,
    TResult? Function(_SortTasks value)? sortTasks,
    TResult? Function(_GetTask value)? getTask,
    TResult? Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    TResult? Function(ParseHtmlEvent value)? parseHtml,
    TResult? Function(TasksLoadedSyncEvent value)? onTasksLoadedSync,
    TResult? Function(SyncDataOnEngineRestoreEvent value)?
        syncDataOnEngineRestore,
    TResult? Function(ShowTasksOfflineEvent value)? showTasksOffline,
  }) {
    return getTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_FilterTasks value)? filterTasks,
    TResult Function(_SortTasks value)? sortTasks,
    TResult Function(_GetTask value)? getTask,
    TResult Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    TResult Function(ParseHtmlEvent value)? parseHtml,
    TResult Function(TasksLoadedSyncEvent value)? onTasksLoadedSync,
    TResult Function(SyncDataOnEngineRestoreEvent value)?
        syncDataOnEngineRestore,
    TResult Function(ShowTasksOfflineEvent value)? showTasksOffline,
    required TResult orElse(),
  }) {
    if (getTask != null) {
      return getTask(this);
    }
    return orElse();
  }
}

abstract class _GetTask implements TaskEvent {
  const factory _GetTask(final int id) = _$GetTaskImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$GetTaskImplCopyWith<_$GetTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowOfflinePopupEventImplCopyWith<$Res> {
  factory _$$ShowOfflinePopupEventImplCopyWith(
          _$ShowOfflinePopupEventImpl value,
          $Res Function(_$ShowOfflinePopupEventImpl) then) =
      __$$ShowOfflinePopupEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class __$$ShowOfflinePopupEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$ShowOfflinePopupEventImpl>
    implements _$$ShowOfflinePopupEventImplCopyWith<$Res> {
  __$$ShowOfflinePopupEventImplCopyWithImpl(_$ShowOfflinePopupEventImpl _value,
      $Res Function(_$ShowOfflinePopupEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
  }) {
    return _then(_$ShowOfflinePopupEventImpl(
      null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShowOfflinePopupEventImpl implements ShowOfflinePopupEvent {
  const _$ShowOfflinePopupEventImpl(this.isConnected);

  @override
  final bool isConnected;

  @override
  String toString() {
    return 'TaskEvent.showOfflinePopupEvent(isConnected: $isConnected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowOfflinePopupEventImpl &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowOfflinePopupEventImplCopyWith<_$ShowOfflinePopupEventImpl>
      get copyWith => __$$ShowOfflinePopupEventImplCopyWithImpl<
          _$ShowOfflinePopupEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FilterType activeFilter) getTasks,
    required TResult Function(FilterType activeFilter) filterTasks,
    required TResult Function(List<SortType> activeSortType) sortTasks,
    required TResult Function(int id) getTask,
    required TResult Function(bool isConnected) showOfflinePopupEvent,
    required TResult Function() parseHtml,
    required TResult Function() onTasksLoadedSync,
    required TResult Function() syncDataOnEngineRestore,
    required TResult Function() showTasksOffline,
  }) {
    return showOfflinePopupEvent(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FilterType activeFilter)? getTasks,
    TResult? Function(FilterType activeFilter)? filterTasks,
    TResult? Function(List<SortType> activeSortType)? sortTasks,
    TResult? Function(int id)? getTask,
    TResult? Function(bool isConnected)? showOfflinePopupEvent,
    TResult? Function()? parseHtml,
    TResult? Function()? onTasksLoadedSync,
    TResult? Function()? syncDataOnEngineRestore,
    TResult? Function()? showTasksOffline,
  }) {
    return showOfflinePopupEvent?.call(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FilterType activeFilter)? getTasks,
    TResult Function(FilterType activeFilter)? filterTasks,
    TResult Function(List<SortType> activeSortType)? sortTasks,
    TResult Function(int id)? getTask,
    TResult Function(bool isConnected)? showOfflinePopupEvent,
    TResult Function()? parseHtml,
    TResult Function()? onTasksLoadedSync,
    TResult Function()? syncDataOnEngineRestore,
    TResult Function()? showTasksOffline,
    required TResult orElse(),
  }) {
    if (showOfflinePopupEvent != null) {
      return showOfflinePopupEvent(isConnected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_FilterTasks value) filterTasks,
    required TResult Function(_SortTasks value) sortTasks,
    required TResult Function(_GetTask value) getTask,
    required TResult Function(ShowOfflinePopupEvent value)
        showOfflinePopupEvent,
    required TResult Function(ParseHtmlEvent value) parseHtml,
    required TResult Function(TasksLoadedSyncEvent value) onTasksLoadedSync,
    required TResult Function(SyncDataOnEngineRestoreEvent value)
        syncDataOnEngineRestore,
    required TResult Function(ShowTasksOfflineEvent value) showTasksOffline,
  }) {
    return showOfflinePopupEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_FilterTasks value)? filterTasks,
    TResult? Function(_SortTasks value)? sortTasks,
    TResult? Function(_GetTask value)? getTask,
    TResult? Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    TResult? Function(ParseHtmlEvent value)? parseHtml,
    TResult? Function(TasksLoadedSyncEvent value)? onTasksLoadedSync,
    TResult? Function(SyncDataOnEngineRestoreEvent value)?
        syncDataOnEngineRestore,
    TResult? Function(ShowTasksOfflineEvent value)? showTasksOffline,
  }) {
    return showOfflinePopupEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_FilterTasks value)? filterTasks,
    TResult Function(_SortTasks value)? sortTasks,
    TResult Function(_GetTask value)? getTask,
    TResult Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    TResult Function(ParseHtmlEvent value)? parseHtml,
    TResult Function(TasksLoadedSyncEvent value)? onTasksLoadedSync,
    TResult Function(SyncDataOnEngineRestoreEvent value)?
        syncDataOnEngineRestore,
    TResult Function(ShowTasksOfflineEvent value)? showTasksOffline,
    required TResult orElse(),
  }) {
    if (showOfflinePopupEvent != null) {
      return showOfflinePopupEvent(this);
    }
    return orElse();
  }
}

abstract class ShowOfflinePopupEvent implements TaskEvent {
  const factory ShowOfflinePopupEvent(final bool isConnected) =
      _$ShowOfflinePopupEventImpl;

  bool get isConnected;
  @JsonKey(ignore: true)
  _$$ShowOfflinePopupEventImplCopyWith<_$ShowOfflinePopupEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParseHtmlEventImplCopyWith<$Res> {
  factory _$$ParseHtmlEventImplCopyWith(_$ParseHtmlEventImpl value,
          $Res Function(_$ParseHtmlEventImpl) then) =
      __$$ParseHtmlEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParseHtmlEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$ParseHtmlEventImpl>
    implements _$$ParseHtmlEventImplCopyWith<$Res> {
  __$$ParseHtmlEventImplCopyWithImpl(
      _$ParseHtmlEventImpl _value, $Res Function(_$ParseHtmlEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ParseHtmlEventImpl implements ParseHtmlEvent {
  const _$ParseHtmlEventImpl();

  @override
  String toString() {
    return 'TaskEvent.parseHtml()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ParseHtmlEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FilterType activeFilter) getTasks,
    required TResult Function(FilterType activeFilter) filterTasks,
    required TResult Function(List<SortType> activeSortType) sortTasks,
    required TResult Function(int id) getTask,
    required TResult Function(bool isConnected) showOfflinePopupEvent,
    required TResult Function() parseHtml,
    required TResult Function() onTasksLoadedSync,
    required TResult Function() syncDataOnEngineRestore,
    required TResult Function() showTasksOffline,
  }) {
    return parseHtml();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FilterType activeFilter)? getTasks,
    TResult? Function(FilterType activeFilter)? filterTasks,
    TResult? Function(List<SortType> activeSortType)? sortTasks,
    TResult? Function(int id)? getTask,
    TResult? Function(bool isConnected)? showOfflinePopupEvent,
    TResult? Function()? parseHtml,
    TResult? Function()? onTasksLoadedSync,
    TResult? Function()? syncDataOnEngineRestore,
    TResult? Function()? showTasksOffline,
  }) {
    return parseHtml?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FilterType activeFilter)? getTasks,
    TResult Function(FilterType activeFilter)? filterTasks,
    TResult Function(List<SortType> activeSortType)? sortTasks,
    TResult Function(int id)? getTask,
    TResult Function(bool isConnected)? showOfflinePopupEvent,
    TResult Function()? parseHtml,
    TResult Function()? onTasksLoadedSync,
    TResult Function()? syncDataOnEngineRestore,
    TResult Function()? showTasksOffline,
    required TResult orElse(),
  }) {
    if (parseHtml != null) {
      return parseHtml();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_FilterTasks value) filterTasks,
    required TResult Function(_SortTasks value) sortTasks,
    required TResult Function(_GetTask value) getTask,
    required TResult Function(ShowOfflinePopupEvent value)
        showOfflinePopupEvent,
    required TResult Function(ParseHtmlEvent value) parseHtml,
    required TResult Function(TasksLoadedSyncEvent value) onTasksLoadedSync,
    required TResult Function(SyncDataOnEngineRestoreEvent value)
        syncDataOnEngineRestore,
    required TResult Function(ShowTasksOfflineEvent value) showTasksOffline,
  }) {
    return parseHtml(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_FilterTasks value)? filterTasks,
    TResult? Function(_SortTasks value)? sortTasks,
    TResult? Function(_GetTask value)? getTask,
    TResult? Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    TResult? Function(ParseHtmlEvent value)? parseHtml,
    TResult? Function(TasksLoadedSyncEvent value)? onTasksLoadedSync,
    TResult? Function(SyncDataOnEngineRestoreEvent value)?
        syncDataOnEngineRestore,
    TResult? Function(ShowTasksOfflineEvent value)? showTasksOffline,
  }) {
    return parseHtml?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_FilterTasks value)? filterTasks,
    TResult Function(_SortTasks value)? sortTasks,
    TResult Function(_GetTask value)? getTask,
    TResult Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    TResult Function(ParseHtmlEvent value)? parseHtml,
    TResult Function(TasksLoadedSyncEvent value)? onTasksLoadedSync,
    TResult Function(SyncDataOnEngineRestoreEvent value)?
        syncDataOnEngineRestore,
    TResult Function(ShowTasksOfflineEvent value)? showTasksOffline,
    required TResult orElse(),
  }) {
    if (parseHtml != null) {
      return parseHtml(this);
    }
    return orElse();
  }
}

abstract class ParseHtmlEvent implements TaskEvent {
  const factory ParseHtmlEvent() = _$ParseHtmlEventImpl;
}

/// @nodoc
abstract class _$$TasksLoadedSyncEventImplCopyWith<$Res> {
  factory _$$TasksLoadedSyncEventImplCopyWith(_$TasksLoadedSyncEventImpl value,
          $Res Function(_$TasksLoadedSyncEventImpl) then) =
      __$$TasksLoadedSyncEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TasksLoadedSyncEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$TasksLoadedSyncEventImpl>
    implements _$$TasksLoadedSyncEventImplCopyWith<$Res> {
  __$$TasksLoadedSyncEventImplCopyWithImpl(_$TasksLoadedSyncEventImpl _value,
      $Res Function(_$TasksLoadedSyncEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TasksLoadedSyncEventImpl implements TasksLoadedSyncEvent {
  const _$TasksLoadedSyncEventImpl();

  @override
  String toString() {
    return 'TaskEvent.onTasksLoadedSync()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksLoadedSyncEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FilterType activeFilter) getTasks,
    required TResult Function(FilterType activeFilter) filterTasks,
    required TResult Function(List<SortType> activeSortType) sortTasks,
    required TResult Function(int id) getTask,
    required TResult Function(bool isConnected) showOfflinePopupEvent,
    required TResult Function() parseHtml,
    required TResult Function() onTasksLoadedSync,
    required TResult Function() syncDataOnEngineRestore,
    required TResult Function() showTasksOffline,
  }) {
    return onTasksLoadedSync();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FilterType activeFilter)? getTasks,
    TResult? Function(FilterType activeFilter)? filterTasks,
    TResult? Function(List<SortType> activeSortType)? sortTasks,
    TResult? Function(int id)? getTask,
    TResult? Function(bool isConnected)? showOfflinePopupEvent,
    TResult? Function()? parseHtml,
    TResult? Function()? onTasksLoadedSync,
    TResult? Function()? syncDataOnEngineRestore,
    TResult? Function()? showTasksOffline,
  }) {
    return onTasksLoadedSync?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FilterType activeFilter)? getTasks,
    TResult Function(FilterType activeFilter)? filterTasks,
    TResult Function(List<SortType> activeSortType)? sortTasks,
    TResult Function(int id)? getTask,
    TResult Function(bool isConnected)? showOfflinePopupEvent,
    TResult Function()? parseHtml,
    TResult Function()? onTasksLoadedSync,
    TResult Function()? syncDataOnEngineRestore,
    TResult Function()? showTasksOffline,
    required TResult orElse(),
  }) {
    if (onTasksLoadedSync != null) {
      return onTasksLoadedSync();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_FilterTasks value) filterTasks,
    required TResult Function(_SortTasks value) sortTasks,
    required TResult Function(_GetTask value) getTask,
    required TResult Function(ShowOfflinePopupEvent value)
        showOfflinePopupEvent,
    required TResult Function(ParseHtmlEvent value) parseHtml,
    required TResult Function(TasksLoadedSyncEvent value) onTasksLoadedSync,
    required TResult Function(SyncDataOnEngineRestoreEvent value)
        syncDataOnEngineRestore,
    required TResult Function(ShowTasksOfflineEvent value) showTasksOffline,
  }) {
    return onTasksLoadedSync(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_FilterTasks value)? filterTasks,
    TResult? Function(_SortTasks value)? sortTasks,
    TResult? Function(_GetTask value)? getTask,
    TResult? Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    TResult? Function(ParseHtmlEvent value)? parseHtml,
    TResult? Function(TasksLoadedSyncEvent value)? onTasksLoadedSync,
    TResult? Function(SyncDataOnEngineRestoreEvent value)?
        syncDataOnEngineRestore,
    TResult? Function(ShowTasksOfflineEvent value)? showTasksOffline,
  }) {
    return onTasksLoadedSync?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_FilterTasks value)? filterTasks,
    TResult Function(_SortTasks value)? sortTasks,
    TResult Function(_GetTask value)? getTask,
    TResult Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    TResult Function(ParseHtmlEvent value)? parseHtml,
    TResult Function(TasksLoadedSyncEvent value)? onTasksLoadedSync,
    TResult Function(SyncDataOnEngineRestoreEvent value)?
        syncDataOnEngineRestore,
    TResult Function(ShowTasksOfflineEvent value)? showTasksOffline,
    required TResult orElse(),
  }) {
    if (onTasksLoadedSync != null) {
      return onTasksLoadedSync(this);
    }
    return orElse();
  }
}

abstract class TasksLoadedSyncEvent implements TaskEvent {
  const factory TasksLoadedSyncEvent() = _$TasksLoadedSyncEventImpl;
}

/// @nodoc
abstract class _$$SyncDataOnEngineRestoreEventImplCopyWith<$Res> {
  factory _$$SyncDataOnEngineRestoreEventImplCopyWith(
          _$SyncDataOnEngineRestoreEventImpl value,
          $Res Function(_$SyncDataOnEngineRestoreEventImpl) then) =
      __$$SyncDataOnEngineRestoreEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SyncDataOnEngineRestoreEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$SyncDataOnEngineRestoreEventImpl>
    implements _$$SyncDataOnEngineRestoreEventImplCopyWith<$Res> {
  __$$SyncDataOnEngineRestoreEventImplCopyWithImpl(
      _$SyncDataOnEngineRestoreEventImpl _value,
      $Res Function(_$SyncDataOnEngineRestoreEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SyncDataOnEngineRestoreEventImpl
    implements SyncDataOnEngineRestoreEvent {
  const _$SyncDataOnEngineRestoreEventImpl();

  @override
  String toString() {
    return 'TaskEvent.syncDataOnEngineRestore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncDataOnEngineRestoreEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FilterType activeFilter) getTasks,
    required TResult Function(FilterType activeFilter) filterTasks,
    required TResult Function(List<SortType> activeSortType) sortTasks,
    required TResult Function(int id) getTask,
    required TResult Function(bool isConnected) showOfflinePopupEvent,
    required TResult Function() parseHtml,
    required TResult Function() onTasksLoadedSync,
    required TResult Function() syncDataOnEngineRestore,
    required TResult Function() showTasksOffline,
  }) {
    return syncDataOnEngineRestore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FilterType activeFilter)? getTasks,
    TResult? Function(FilterType activeFilter)? filterTasks,
    TResult? Function(List<SortType> activeSortType)? sortTasks,
    TResult? Function(int id)? getTask,
    TResult? Function(bool isConnected)? showOfflinePopupEvent,
    TResult? Function()? parseHtml,
    TResult? Function()? onTasksLoadedSync,
    TResult? Function()? syncDataOnEngineRestore,
    TResult? Function()? showTasksOffline,
  }) {
    return syncDataOnEngineRestore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FilterType activeFilter)? getTasks,
    TResult Function(FilterType activeFilter)? filterTasks,
    TResult Function(List<SortType> activeSortType)? sortTasks,
    TResult Function(int id)? getTask,
    TResult Function(bool isConnected)? showOfflinePopupEvent,
    TResult Function()? parseHtml,
    TResult Function()? onTasksLoadedSync,
    TResult Function()? syncDataOnEngineRestore,
    TResult Function()? showTasksOffline,
    required TResult orElse(),
  }) {
    if (syncDataOnEngineRestore != null) {
      return syncDataOnEngineRestore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_FilterTasks value) filterTasks,
    required TResult Function(_SortTasks value) sortTasks,
    required TResult Function(_GetTask value) getTask,
    required TResult Function(ShowOfflinePopupEvent value)
        showOfflinePopupEvent,
    required TResult Function(ParseHtmlEvent value) parseHtml,
    required TResult Function(TasksLoadedSyncEvent value) onTasksLoadedSync,
    required TResult Function(SyncDataOnEngineRestoreEvent value)
        syncDataOnEngineRestore,
    required TResult Function(ShowTasksOfflineEvent value) showTasksOffline,
  }) {
    return syncDataOnEngineRestore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_FilterTasks value)? filterTasks,
    TResult? Function(_SortTasks value)? sortTasks,
    TResult? Function(_GetTask value)? getTask,
    TResult? Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    TResult? Function(ParseHtmlEvent value)? parseHtml,
    TResult? Function(TasksLoadedSyncEvent value)? onTasksLoadedSync,
    TResult? Function(SyncDataOnEngineRestoreEvent value)?
        syncDataOnEngineRestore,
    TResult? Function(ShowTasksOfflineEvent value)? showTasksOffline,
  }) {
    return syncDataOnEngineRestore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_FilterTasks value)? filterTasks,
    TResult Function(_SortTasks value)? sortTasks,
    TResult Function(_GetTask value)? getTask,
    TResult Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    TResult Function(ParseHtmlEvent value)? parseHtml,
    TResult Function(TasksLoadedSyncEvent value)? onTasksLoadedSync,
    TResult Function(SyncDataOnEngineRestoreEvent value)?
        syncDataOnEngineRestore,
    TResult Function(ShowTasksOfflineEvent value)? showTasksOffline,
    required TResult orElse(),
  }) {
    if (syncDataOnEngineRestore != null) {
      return syncDataOnEngineRestore(this);
    }
    return orElse();
  }
}

abstract class SyncDataOnEngineRestoreEvent implements TaskEvent {
  const factory SyncDataOnEngineRestoreEvent() =
      _$SyncDataOnEngineRestoreEventImpl;
}

/// @nodoc
abstract class _$$ShowTasksOfflineEventImplCopyWith<$Res> {
  factory _$$ShowTasksOfflineEventImplCopyWith(
          _$ShowTasksOfflineEventImpl value,
          $Res Function(_$ShowTasksOfflineEventImpl) then) =
      __$$ShowTasksOfflineEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowTasksOfflineEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$ShowTasksOfflineEventImpl>
    implements _$$ShowTasksOfflineEventImplCopyWith<$Res> {
  __$$ShowTasksOfflineEventImplCopyWithImpl(_$ShowTasksOfflineEventImpl _value,
      $Res Function(_$ShowTasksOfflineEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowTasksOfflineEventImpl implements ShowTasksOfflineEvent {
  const _$ShowTasksOfflineEventImpl();

  @override
  String toString() {
    return 'TaskEvent.showTasksOffline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowTasksOfflineEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FilterType activeFilter) getTasks,
    required TResult Function(FilterType activeFilter) filterTasks,
    required TResult Function(List<SortType> activeSortType) sortTasks,
    required TResult Function(int id) getTask,
    required TResult Function(bool isConnected) showOfflinePopupEvent,
    required TResult Function() parseHtml,
    required TResult Function() onTasksLoadedSync,
    required TResult Function() syncDataOnEngineRestore,
    required TResult Function() showTasksOffline,
  }) {
    return showTasksOffline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FilterType activeFilter)? getTasks,
    TResult? Function(FilterType activeFilter)? filterTasks,
    TResult? Function(List<SortType> activeSortType)? sortTasks,
    TResult? Function(int id)? getTask,
    TResult? Function(bool isConnected)? showOfflinePopupEvent,
    TResult? Function()? parseHtml,
    TResult? Function()? onTasksLoadedSync,
    TResult? Function()? syncDataOnEngineRestore,
    TResult? Function()? showTasksOffline,
  }) {
    return showTasksOffline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FilterType activeFilter)? getTasks,
    TResult Function(FilterType activeFilter)? filterTasks,
    TResult Function(List<SortType> activeSortType)? sortTasks,
    TResult Function(int id)? getTask,
    TResult Function(bool isConnected)? showOfflinePopupEvent,
    TResult Function()? parseHtml,
    TResult Function()? onTasksLoadedSync,
    TResult Function()? syncDataOnEngineRestore,
    TResult Function()? showTasksOffline,
    required TResult orElse(),
  }) {
    if (showTasksOffline != null) {
      return showTasksOffline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_FilterTasks value) filterTasks,
    required TResult Function(_SortTasks value) sortTasks,
    required TResult Function(_GetTask value) getTask,
    required TResult Function(ShowOfflinePopupEvent value)
        showOfflinePopupEvent,
    required TResult Function(ParseHtmlEvent value) parseHtml,
    required TResult Function(TasksLoadedSyncEvent value) onTasksLoadedSync,
    required TResult Function(SyncDataOnEngineRestoreEvent value)
        syncDataOnEngineRestore,
    required TResult Function(ShowTasksOfflineEvent value) showTasksOffline,
  }) {
    return showTasksOffline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_FilterTasks value)? filterTasks,
    TResult? Function(_SortTasks value)? sortTasks,
    TResult? Function(_GetTask value)? getTask,
    TResult? Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    TResult? Function(ParseHtmlEvent value)? parseHtml,
    TResult? Function(TasksLoadedSyncEvent value)? onTasksLoadedSync,
    TResult? Function(SyncDataOnEngineRestoreEvent value)?
        syncDataOnEngineRestore,
    TResult? Function(ShowTasksOfflineEvent value)? showTasksOffline,
  }) {
    return showTasksOffline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_FilterTasks value)? filterTasks,
    TResult Function(_SortTasks value)? sortTasks,
    TResult Function(_GetTask value)? getTask,
    TResult Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    TResult Function(ParseHtmlEvent value)? parseHtml,
    TResult Function(TasksLoadedSyncEvent value)? onTasksLoadedSync,
    TResult Function(SyncDataOnEngineRestoreEvent value)?
        syncDataOnEngineRestore,
    TResult Function(ShowTasksOfflineEvent value)? showTasksOffline,
    required TResult orElse(),
  }) {
    if (showTasksOffline != null) {
      return showTasksOffline(this);
    }
    return orElse();
  }
}

abstract class ShowTasksOfflineEvent implements TaskEvent {
  const factory ShowTasksOfflineEvent() = _$ShowTasksOfflineEventImpl;
}

/// @nodoc
mixin _$TaskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isShowLoading) loading,
    required TResult Function(String error) error,
    required TResult Function(List<TaskIvy> tasks, bool isOnline) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isShowLoading)? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<TaskIvy> tasks, bool isOnline)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isShowLoading)? loading,
    TResult Function(String error)? error,
    TResult Function(List<TaskIvy> tasks, bool isOnline)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskLoadingState value) loading,
    required TResult Function(TaskErrorState value) error,
    required TResult Function(TaskSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskLoadingState value)? loading,
    TResult? Function(TaskErrorState value)? error,
    TResult? Function(TaskSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskLoadingState value)? loading,
    TResult Function(TaskErrorState value)? error,
    TResult Function(TaskSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TaskLoadingStateImplCopyWith<$Res> {
  factory _$$TaskLoadingStateImplCopyWith(_$TaskLoadingStateImpl value,
          $Res Function(_$TaskLoadingStateImpl) then) =
      __$$TaskLoadingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isShowLoading});
}

/// @nodoc
class __$$TaskLoadingStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskLoadingStateImpl>
    implements _$$TaskLoadingStateImplCopyWith<$Res> {
  __$$TaskLoadingStateImplCopyWithImpl(_$TaskLoadingStateImpl _value,
      $Res Function(_$TaskLoadingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowLoading = null,
  }) {
    return _then(_$TaskLoadingStateImpl(
      null == isShowLoading
          ? _value.isShowLoading
          : isShowLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TaskLoadingStateImpl implements TaskLoadingState {
  const _$TaskLoadingStateImpl(this.isShowLoading);

  @override
  final bool isShowLoading;

  @override
  String toString() {
    return 'TaskState.loading(isShowLoading: $isShowLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskLoadingStateImpl &&
            (identical(other.isShowLoading, isShowLoading) ||
                other.isShowLoading == isShowLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isShowLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskLoadingStateImplCopyWith<_$TaskLoadingStateImpl> get copyWith =>
      __$$TaskLoadingStateImplCopyWithImpl<_$TaskLoadingStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isShowLoading) loading,
    required TResult Function(String error) error,
    required TResult Function(List<TaskIvy> tasks, bool isOnline) success,
  }) {
    return loading(isShowLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isShowLoading)? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<TaskIvy> tasks, bool isOnline)? success,
  }) {
    return loading?.call(isShowLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isShowLoading)? loading,
    TResult Function(String error)? error,
    TResult Function(List<TaskIvy> tasks, bool isOnline)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isShowLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskLoadingState value) loading,
    required TResult Function(TaskErrorState value) error,
    required TResult Function(TaskSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskLoadingState value)? loading,
    TResult? Function(TaskErrorState value)? error,
    TResult? Function(TaskSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskLoadingState value)? loading,
    TResult Function(TaskErrorState value)? error,
    TResult Function(TaskSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TaskLoadingState implements TaskState {
  const factory TaskLoadingState(final bool isShowLoading) =
      _$TaskLoadingStateImpl;

  bool get isShowLoading;
  @JsonKey(ignore: true)
  _$$TaskLoadingStateImplCopyWith<_$TaskLoadingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskErrorStateImplCopyWith<$Res> {
  factory _$$TaskErrorStateImplCopyWith(_$TaskErrorStateImpl value,
          $Res Function(_$TaskErrorStateImpl) then) =
      __$$TaskErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$TaskErrorStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskErrorStateImpl>
    implements _$$TaskErrorStateImplCopyWith<$Res> {
  __$$TaskErrorStateImplCopyWithImpl(
      _$TaskErrorStateImpl _value, $Res Function(_$TaskErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$TaskErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskErrorStateImpl implements TaskErrorState {
  const _$TaskErrorStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'TaskState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskErrorStateImplCopyWith<_$TaskErrorStateImpl> get copyWith =>
      __$$TaskErrorStateImplCopyWithImpl<_$TaskErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isShowLoading) loading,
    required TResult Function(String error) error,
    required TResult Function(List<TaskIvy> tasks, bool isOnline) success,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isShowLoading)? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<TaskIvy> tasks, bool isOnline)? success,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isShowLoading)? loading,
    TResult Function(String error)? error,
    TResult Function(List<TaskIvy> tasks, bool isOnline)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskLoadingState value) loading,
    required TResult Function(TaskErrorState value) error,
    required TResult Function(TaskSuccessState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskLoadingState value)? loading,
    TResult? Function(TaskErrorState value)? error,
    TResult? Function(TaskSuccessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskLoadingState value)? loading,
    TResult Function(TaskErrorState value)? error,
    TResult Function(TaskSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TaskErrorState implements TaskState {
  const factory TaskErrorState(final String error) = _$TaskErrorStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$TaskErrorStateImplCopyWith<_$TaskErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskSuccessStateImplCopyWith<$Res> {
  factory _$$TaskSuccessStateImplCopyWith(_$TaskSuccessStateImpl value,
          $Res Function(_$TaskSuccessStateImpl) then) =
      __$$TaskSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskIvy> tasks, bool isOnline});
}

/// @nodoc
class __$$TaskSuccessStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskSuccessStateImpl>
    implements _$$TaskSuccessStateImplCopyWith<$Res> {
  __$$TaskSuccessStateImplCopyWithImpl(_$TaskSuccessStateImpl _value,
      $Res Function(_$TaskSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? isOnline = null,
  }) {
    return _then(_$TaskSuccessStateImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskIvy>,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TaskSuccessStateImpl implements TaskSuccessState {
  const _$TaskSuccessStateImpl(
      {required final List<TaskIvy> tasks, this.isOnline = true})
      : _tasks = tasks;

  final List<TaskIvy> _tasks;
  @override
  List<TaskIvy> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  @JsonKey()
  final bool isOnline;

  @override
  String toString() {
    return 'TaskState.success(tasks: $tasks, isOnline: $isOnline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskSuccessStateImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tasks), isOnline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskSuccessStateImplCopyWith<_$TaskSuccessStateImpl> get copyWith =>
      __$$TaskSuccessStateImplCopyWithImpl<_$TaskSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isShowLoading) loading,
    required TResult Function(String error) error,
    required TResult Function(List<TaskIvy> tasks, bool isOnline) success,
  }) {
    return success(tasks, isOnline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isShowLoading)? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<TaskIvy> tasks, bool isOnline)? success,
  }) {
    return success?.call(tasks, isOnline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isShowLoading)? loading,
    TResult Function(String error)? error,
    TResult Function(List<TaskIvy> tasks, bool isOnline)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(tasks, isOnline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskLoadingState value) loading,
    required TResult Function(TaskErrorState value) error,
    required TResult Function(TaskSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskLoadingState value)? loading,
    TResult? Function(TaskErrorState value)? error,
    TResult? Function(TaskSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskLoadingState value)? loading,
    TResult Function(TaskErrorState value)? error,
    TResult Function(TaskSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class TaskSuccessState implements TaskState {
  const factory TaskSuccessState(
      {required final List<TaskIvy> tasks,
      final bool isOnline}) = _$TaskSuccessStateImpl;

  List<TaskIvy> get tasks;
  bool get isOnline;
  @JsonKey(ignore: true)
  _$$TaskSuccessStateImplCopyWith<_$TaskSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
