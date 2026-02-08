// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TaskEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TaskEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TaskEvent()';
  }
}

/// @nodoc
class $TaskEventCopyWith<$Res> {
  $TaskEventCopyWith(TaskEvent _, $Res Function(TaskEvent) __);
}

/// Adds pattern-matching-related methods to [TaskEvent].
extension TaskEventPatterns on TaskEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case _GetTasks() when getTasks != null:
        return getTasks(_that);
      case _FilterTasks() when filterTasks != null:
        return filterTasks(_that);
      case _SortTasks() when sortTasks != null:
        return sortTasks(_that);
      case _GetTask() when getTask != null:
        return getTask(_that);
      case ShowOfflinePopupEvent() when showOfflinePopupEvent != null:
        return showOfflinePopupEvent(_that);
      case ParseHtmlEvent() when parseHtml != null:
        return parseHtml(_that);
      case TasksLoadedSyncEvent() when onTasksLoadedSync != null:
        return onTasksLoadedSync(_that);
      case SyncDataOnEngineRestoreEvent() when syncDataOnEngineRestore != null:
        return syncDataOnEngineRestore(_that);
      case ShowTasksOfflineEvent() when showTasksOffline != null:
        return showTasksOffline(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case _GetTasks():
        return getTasks(_that);
      case _FilterTasks():
        return filterTasks(_that);
      case _SortTasks():
        return sortTasks(_that);
      case _GetTask():
        return getTask(_that);
      case ShowOfflinePopupEvent():
        return showOfflinePopupEvent(_that);
      case ParseHtmlEvent():
        return parseHtml(_that);
      case TasksLoadedSyncEvent():
        return onTasksLoadedSync(_that);
      case SyncDataOnEngineRestoreEvent():
        return syncDataOnEngineRestore(_that);
      case ShowTasksOfflineEvent():
        return showTasksOffline(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case _GetTasks() when getTasks != null:
        return getTasks(_that);
      case _FilterTasks() when filterTasks != null:
        return filterTasks(_that);
      case _SortTasks() when sortTasks != null:
        return sortTasks(_that);
      case _GetTask() when getTask != null:
        return getTask(_that);
      case ShowOfflinePopupEvent() when showOfflinePopupEvent != null:
        return showOfflinePopupEvent(_that);
      case ParseHtmlEvent() when parseHtml != null:
        return parseHtml(_that);
      case TasksLoadedSyncEvent() when onTasksLoadedSync != null:
        return onTasksLoadedSync(_that);
      case SyncDataOnEngineRestoreEvent() when syncDataOnEngineRestore != null:
        return syncDataOnEngineRestore(_that);
      case ShowTasksOfflineEvent() when showTasksOffline != null:
        return showTasksOffline(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case _GetTasks() when getTasks != null:
        return getTasks(_that.activeFilter);
      case _FilterTasks() when filterTasks != null:
        return filterTasks(_that.activeFilter);
      case _SortTasks() when sortTasks != null:
        return sortTasks(_that.activeSortType);
      case _GetTask() when getTask != null:
        return getTask(_that.id);
      case ShowOfflinePopupEvent() when showOfflinePopupEvent != null:
        return showOfflinePopupEvent(_that.isConnected);
      case ParseHtmlEvent() when parseHtml != null:
        return parseHtml();
      case TasksLoadedSyncEvent() when onTasksLoadedSync != null:
        return onTasksLoadedSync();
      case SyncDataOnEngineRestoreEvent() when syncDataOnEngineRestore != null:
        return syncDataOnEngineRestore();
      case ShowTasksOfflineEvent() when showTasksOffline != null:
        return showTasksOffline();
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case _GetTasks():
        return getTasks(_that.activeFilter);
      case _FilterTasks():
        return filterTasks(_that.activeFilter);
      case _SortTasks():
        return sortTasks(_that.activeSortType);
      case _GetTask():
        return getTask(_that.id);
      case ShowOfflinePopupEvent():
        return showOfflinePopupEvent(_that.isConnected);
      case ParseHtmlEvent():
        return parseHtml();
      case TasksLoadedSyncEvent():
        return onTasksLoadedSync();
      case SyncDataOnEngineRestoreEvent():
        return syncDataOnEngineRestore();
      case ShowTasksOfflineEvent():
        return showTasksOffline();
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case _GetTasks() when getTasks != null:
        return getTasks(_that.activeFilter);
      case _FilterTasks() when filterTasks != null:
        return filterTasks(_that.activeFilter);
      case _SortTasks() when sortTasks != null:
        return sortTasks(_that.activeSortType);
      case _GetTask() when getTask != null:
        return getTask(_that.id);
      case ShowOfflinePopupEvent() when showOfflinePopupEvent != null:
        return showOfflinePopupEvent(_that.isConnected);
      case ParseHtmlEvent() when parseHtml != null:
        return parseHtml();
      case TasksLoadedSyncEvent() when onTasksLoadedSync != null:
        return onTasksLoadedSync();
      case SyncDataOnEngineRestoreEvent() when syncDataOnEngineRestore != null:
        return syncDataOnEngineRestore();
      case ShowTasksOfflineEvent() when showTasksOffline != null:
        return showTasksOffline();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GetTasks implements TaskEvent {
  const _GetTasks(this.activeFilter);

  final FilterType activeFilter;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetTasksCopyWith<_GetTasks> get copyWith =>
      __$GetTasksCopyWithImpl<_GetTasks>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetTasks &&
            (identical(other.activeFilter, activeFilter) ||
                other.activeFilter == activeFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeFilter);

  @override
  String toString() {
    return 'TaskEvent.getTasks(activeFilter: $activeFilter)';
  }
}

/// @nodoc
abstract mixin class _$GetTasksCopyWith<$Res>
    implements $TaskEventCopyWith<$Res> {
  factory _$GetTasksCopyWith(_GetTasks value, $Res Function(_GetTasks) _then) =
      __$GetTasksCopyWithImpl;
  @useResult
  $Res call({FilterType activeFilter});
}

/// @nodoc
class __$GetTasksCopyWithImpl<$Res> implements _$GetTasksCopyWith<$Res> {
  __$GetTasksCopyWithImpl(this._self, this._then);

  final _GetTasks _self;
  final $Res Function(_GetTasks) _then;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? activeFilter = null,
  }) {
    return _then(_GetTasks(
      null == activeFilter
          ? _self.activeFilter
          : activeFilter // ignore: cast_nullable_to_non_nullable
              as FilterType,
    ));
  }
}

/// @nodoc

class _FilterTasks implements TaskEvent {
  const _FilterTasks(this.activeFilter);

  final FilterType activeFilter;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FilterTasksCopyWith<_FilterTasks> get copyWith =>
      __$FilterTasksCopyWithImpl<_FilterTasks>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FilterTasks &&
            (identical(other.activeFilter, activeFilter) ||
                other.activeFilter == activeFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeFilter);

  @override
  String toString() {
    return 'TaskEvent.filterTasks(activeFilter: $activeFilter)';
  }
}

/// @nodoc
abstract mixin class _$FilterTasksCopyWith<$Res>
    implements $TaskEventCopyWith<$Res> {
  factory _$FilterTasksCopyWith(
          _FilterTasks value, $Res Function(_FilterTasks) _then) =
      __$FilterTasksCopyWithImpl;
  @useResult
  $Res call({FilterType activeFilter});
}

/// @nodoc
class __$FilterTasksCopyWithImpl<$Res> implements _$FilterTasksCopyWith<$Res> {
  __$FilterTasksCopyWithImpl(this._self, this._then);

  final _FilterTasks _self;
  final $Res Function(_FilterTasks) _then;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? activeFilter = null,
  }) {
    return _then(_FilterTasks(
      null == activeFilter
          ? _self.activeFilter
          : activeFilter // ignore: cast_nullable_to_non_nullable
              as FilterType,
    ));
  }
}

/// @nodoc

class _SortTasks implements TaskEvent {
  const _SortTasks(final List<SortType> activeSortType)
      : _activeSortType = activeSortType;

  final List<SortType> _activeSortType;
  List<SortType> get activeSortType {
    if (_activeSortType is EqualUnmodifiableListView) return _activeSortType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeSortType);
  }

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SortTasksCopyWith<_SortTasks> get copyWith =>
      __$SortTasksCopyWithImpl<_SortTasks>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SortTasks &&
            const DeepCollectionEquality()
                .equals(other._activeSortType, _activeSortType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_activeSortType));

  @override
  String toString() {
    return 'TaskEvent.sortTasks(activeSortType: $activeSortType)';
  }
}

/// @nodoc
abstract mixin class _$SortTasksCopyWith<$Res>
    implements $TaskEventCopyWith<$Res> {
  factory _$SortTasksCopyWith(
          _SortTasks value, $Res Function(_SortTasks) _then) =
      __$SortTasksCopyWithImpl;
  @useResult
  $Res call({List<SortType> activeSortType});
}

/// @nodoc
class __$SortTasksCopyWithImpl<$Res> implements _$SortTasksCopyWith<$Res> {
  __$SortTasksCopyWithImpl(this._self, this._then);

  final _SortTasks _self;
  final $Res Function(_SortTasks) _then;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? activeSortType = null,
  }) {
    return _then(_SortTasks(
      null == activeSortType
          ? _self._activeSortType
          : activeSortType // ignore: cast_nullable_to_non_nullable
              as List<SortType>,
    ));
  }
}

/// @nodoc

class _GetTask implements TaskEvent {
  const _GetTask(this.id);

  final int id;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetTaskCopyWith<_GetTask> get copyWith =>
      __$GetTaskCopyWithImpl<_GetTask>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetTask &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'TaskEvent.getTask(id: $id)';
  }
}

/// @nodoc
abstract mixin class _$GetTaskCopyWith<$Res>
    implements $TaskEventCopyWith<$Res> {
  factory _$GetTaskCopyWith(_GetTask value, $Res Function(_GetTask) _then) =
      __$GetTaskCopyWithImpl;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$GetTaskCopyWithImpl<$Res> implements _$GetTaskCopyWith<$Res> {
  __$GetTaskCopyWithImpl(this._self, this._then);

  final _GetTask _self;
  final $Res Function(_GetTask) _then;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(_GetTask(
      null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class ShowOfflinePopupEvent implements TaskEvent {
  const ShowOfflinePopupEvent(this.isConnected);

  final bool isConnected;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShowOfflinePopupEventCopyWith<ShowOfflinePopupEvent> get copyWith =>
      _$ShowOfflinePopupEventCopyWithImpl<ShowOfflinePopupEvent>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowOfflinePopupEvent &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected);

  @override
  String toString() {
    return 'TaskEvent.showOfflinePopupEvent(isConnected: $isConnected)';
  }
}

/// @nodoc
abstract mixin class $ShowOfflinePopupEventCopyWith<$Res>
    implements $TaskEventCopyWith<$Res> {
  factory $ShowOfflinePopupEventCopyWith(ShowOfflinePopupEvent value,
          $Res Function(ShowOfflinePopupEvent) _then) =
      _$ShowOfflinePopupEventCopyWithImpl;
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class _$ShowOfflinePopupEventCopyWithImpl<$Res>
    implements $ShowOfflinePopupEventCopyWith<$Res> {
  _$ShowOfflinePopupEventCopyWithImpl(this._self, this._then);

  final ShowOfflinePopupEvent _self;
  final $Res Function(ShowOfflinePopupEvent) _then;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isConnected = null,
  }) {
    return _then(ShowOfflinePopupEvent(
      null == isConnected
          ? _self.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class ParseHtmlEvent implements TaskEvent {
  const ParseHtmlEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ParseHtmlEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TaskEvent.parseHtml()';
  }
}

/// @nodoc

class TasksLoadedSyncEvent implements TaskEvent {
  const TasksLoadedSyncEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TasksLoadedSyncEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TaskEvent.onTasksLoadedSync()';
  }
}

/// @nodoc

class SyncDataOnEngineRestoreEvent implements TaskEvent {
  const SyncDataOnEngineRestoreEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SyncDataOnEngineRestoreEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TaskEvent.syncDataOnEngineRestore()';
  }
}

/// @nodoc

class ShowTasksOfflineEvent implements TaskEvent {
  const ShowTasksOfflineEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ShowTasksOfflineEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TaskEvent.showTasksOffline()';
  }
}

/// @nodoc
mixin _$TaskState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TaskState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TaskState()';
  }
}

/// @nodoc
class $TaskStateCopyWith<$Res> {
  $TaskStateCopyWith(TaskState _, $Res Function(TaskState) __);
}

/// Adds pattern-matching-related methods to [TaskState].
extension TaskStatePatterns on TaskState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskLoadingState value)? loading,
    TResult Function(TaskErrorState value)? error,
    TResult Function(TaskSuccessState value)? success,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case TaskLoadingState() when loading != null:
        return loading(_that);
      case TaskErrorState() when error != null:
        return error(_that);
      case TaskSuccessState() when success != null:
        return success(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskLoadingState value) loading,
    required TResult Function(TaskErrorState value) error,
    required TResult Function(TaskSuccessState value) success,
  }) {
    final _that = this;
    switch (_that) {
      case TaskLoadingState():
        return loading(_that);
      case TaskErrorState():
        return error(_that);
      case TaskSuccessState():
        return success(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskLoadingState value)? loading,
    TResult? Function(TaskErrorState value)? error,
    TResult? Function(TaskSuccessState value)? success,
  }) {
    final _that = this;
    switch (_that) {
      case TaskLoadingState() when loading != null:
        return loading(_that);
      case TaskErrorState() when error != null:
        return error(_that);
      case TaskSuccessState() when success != null:
        return success(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isShowLoading)? loading,
    TResult Function(String error)? error,
    TResult Function(List<TaskIvy> tasks, bool isOnline)? success,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case TaskLoadingState() when loading != null:
        return loading(_that.isShowLoading);
      case TaskErrorState() when error != null:
        return error(_that.error);
      case TaskSuccessState() when success != null:
        return success(_that.tasks, _that.isOnline);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isShowLoading) loading,
    required TResult Function(String error) error,
    required TResult Function(List<TaskIvy> tasks, bool isOnline) success,
  }) {
    final _that = this;
    switch (_that) {
      case TaskLoadingState():
        return loading(_that.isShowLoading);
      case TaskErrorState():
        return error(_that.error);
      case TaskSuccessState():
        return success(_that.tasks, _that.isOnline);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isShowLoading)? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<TaskIvy> tasks, bool isOnline)? success,
  }) {
    final _that = this;
    switch (_that) {
      case TaskLoadingState() when loading != null:
        return loading(_that.isShowLoading);
      case TaskErrorState() when error != null:
        return error(_that.error);
      case TaskSuccessState() when success != null:
        return success(_that.tasks, _that.isOnline);
      case _:
        return null;
    }
  }
}

/// @nodoc

class TaskLoadingState implements TaskState {
  const TaskLoadingState(this.isShowLoading);

  final bool isShowLoading;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TaskLoadingStateCopyWith<TaskLoadingState> get copyWith =>
      _$TaskLoadingStateCopyWithImpl<TaskLoadingState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TaskLoadingState &&
            (identical(other.isShowLoading, isShowLoading) ||
                other.isShowLoading == isShowLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isShowLoading);

  @override
  String toString() {
    return 'TaskState.loading(isShowLoading: $isShowLoading)';
  }
}

/// @nodoc
abstract mixin class $TaskLoadingStateCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory $TaskLoadingStateCopyWith(
          TaskLoadingState value, $Res Function(TaskLoadingState) _then) =
      _$TaskLoadingStateCopyWithImpl;
  @useResult
  $Res call({bool isShowLoading});
}

/// @nodoc
class _$TaskLoadingStateCopyWithImpl<$Res>
    implements $TaskLoadingStateCopyWith<$Res> {
  _$TaskLoadingStateCopyWithImpl(this._self, this._then);

  final TaskLoadingState _self;
  final $Res Function(TaskLoadingState) _then;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isShowLoading = null,
  }) {
    return _then(TaskLoadingState(
      null == isShowLoading
          ? _self.isShowLoading
          : isShowLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class TaskErrorState implements TaskState {
  const TaskErrorState(this.error);

  final String error;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TaskErrorStateCopyWith<TaskErrorState> get copyWith =>
      _$TaskErrorStateCopyWithImpl<TaskErrorState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TaskErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'TaskState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $TaskErrorStateCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory $TaskErrorStateCopyWith(
          TaskErrorState value, $Res Function(TaskErrorState) _then) =
      _$TaskErrorStateCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$TaskErrorStateCopyWithImpl<$Res>
    implements $TaskErrorStateCopyWith<$Res> {
  _$TaskErrorStateCopyWithImpl(this._self, this._then);

  final TaskErrorState _self;
  final $Res Function(TaskErrorState) _then;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(TaskErrorState(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class TaskSuccessState implements TaskState {
  const TaskSuccessState(
      {required final List<TaskIvy> tasks, this.isOnline = true})
      : _tasks = tasks;

  final List<TaskIvy> _tasks;
  List<TaskIvy> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @JsonKey()
  final bool isOnline;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TaskSuccessStateCopyWith<TaskSuccessState> get copyWith =>
      _$TaskSuccessStateCopyWithImpl<TaskSuccessState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TaskSuccessState &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tasks), isOnline);

  @override
  String toString() {
    return 'TaskState.success(tasks: $tasks, isOnline: $isOnline)';
  }
}

/// @nodoc
abstract mixin class $TaskSuccessStateCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory $TaskSuccessStateCopyWith(
          TaskSuccessState value, $Res Function(TaskSuccessState) _then) =
      _$TaskSuccessStateCopyWithImpl;
  @useResult
  $Res call({List<TaskIvy> tasks, bool isOnline});
}

/// @nodoc
class _$TaskSuccessStateCopyWithImpl<$Res>
    implements $TaskSuccessStateCopyWith<$Res> {
  _$TaskSuccessStateCopyWithImpl(this._self, this._then);

  final TaskSuccessState _self;
  final $Res Function(TaskSuccessState) _then;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tasks = null,
    Object? isOnline = null,
  }) {
    return _then(TaskSuccessState(
      tasks: null == tasks
          ? _self._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskIvy>,
      isOnline: null == isOnline
          ? _self.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
