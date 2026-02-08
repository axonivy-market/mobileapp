// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_activity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TaskActivityEvent {
  TaskIvy get taskIvy;

  /// Create a copy of TaskActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TaskActivityEventCopyWith<TaskActivityEvent> get copyWith =>
      _$TaskActivityEventCopyWithImpl<TaskActivityEvent>(
          this as TaskActivityEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TaskActivityEvent &&
            (identical(other.taskIvy, taskIvy) || other.taskIvy == taskIvy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskIvy);

  @override
  String toString() {
    return 'TaskActivityEvent(taskIvy: $taskIvy)';
  }
}

/// @nodoc
abstract mixin class $TaskActivityEventCopyWith<$Res> {
  factory $TaskActivityEventCopyWith(
          TaskActivityEvent value, $Res Function(TaskActivityEvent) _then) =
      _$TaskActivityEventCopyWithImpl;
  @useResult
  $Res call({TaskIvy taskIvy});

  $TaskIvyCopyWith<$Res> get taskIvy;
}

/// @nodoc
class _$TaskActivityEventCopyWithImpl<$Res>
    implements $TaskActivityEventCopyWith<$Res> {
  _$TaskActivityEventCopyWithImpl(this._self, this._then);

  final TaskActivityEvent _self;
  final $Res Function(TaskActivityEvent) _then;

  /// Create a copy of TaskActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskIvy = null,
  }) {
    return _then(_self.copyWith(
      taskIvy: null == taskIvy
          ? _self.taskIvy
          : taskIvy // ignore: cast_nullable_to_non_nullable
              as TaskIvy,
    ));
  }

  /// Create a copy of TaskActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskIvyCopyWith<$Res> get taskIvy {
    return $TaskIvyCopyWith<$Res>(_self.taskIvy, (value) {
      return _then(_self.copyWith(taskIvy: value));
    });
  }
}

/// Adds pattern-matching-related methods to [TaskActivityEvent].
extension TaskActivityEventPatterns on TaskActivityEvent {
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
    TResult Function(_FinishTaskOfflineEvent value)? finishTaskOffline,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FinishTaskOfflineEvent() when finishTaskOffline != null:
        return finishTaskOffline(_that);
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
    required TResult Function(_FinishTaskOfflineEvent value) finishTaskOffline,
  }) {
    final _that = this;
    switch (_that) {
      case _FinishTaskOfflineEvent():
        return finishTaskOffline(_that);
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
    TResult? Function(_FinishTaskOfflineEvent value)? finishTaskOffline,
  }) {
    final _that = this;
    switch (_that) {
      case _FinishTaskOfflineEvent() when finishTaskOffline != null:
        return finishTaskOffline(_that);
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
    TResult Function(TaskIvy taskIvy)? finishTaskOffline,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FinishTaskOfflineEvent() when finishTaskOffline != null:
        return finishTaskOffline(_that.taskIvy);
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
    required TResult Function(TaskIvy taskIvy) finishTaskOffline,
  }) {
    final _that = this;
    switch (_that) {
      case _FinishTaskOfflineEvent():
        return finishTaskOffline(_that.taskIvy);
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
    TResult? Function(TaskIvy taskIvy)? finishTaskOffline,
  }) {
    final _that = this;
    switch (_that) {
      case _FinishTaskOfflineEvent() when finishTaskOffline != null:
        return finishTaskOffline(_that.taskIvy);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FinishTaskOfflineEvent implements TaskActivityEvent {
  const _FinishTaskOfflineEvent(this.taskIvy);

  @override
  final TaskIvy taskIvy;

  /// Create a copy of TaskActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FinishTaskOfflineEventCopyWith<_FinishTaskOfflineEvent> get copyWith =>
      __$FinishTaskOfflineEventCopyWithImpl<_FinishTaskOfflineEvent>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FinishTaskOfflineEvent &&
            (identical(other.taskIvy, taskIvy) || other.taskIvy == taskIvy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskIvy);

  @override
  String toString() {
    return 'TaskActivityEvent.finishTaskOffline(taskIvy: $taskIvy)';
  }
}

/// @nodoc
abstract mixin class _$FinishTaskOfflineEventCopyWith<$Res>
    implements $TaskActivityEventCopyWith<$Res> {
  factory _$FinishTaskOfflineEventCopyWith(_FinishTaskOfflineEvent value,
          $Res Function(_FinishTaskOfflineEvent) _then) =
      __$FinishTaskOfflineEventCopyWithImpl;
  @override
  @useResult
  $Res call({TaskIvy taskIvy});

  @override
  $TaskIvyCopyWith<$Res> get taskIvy;
}

/// @nodoc
class __$FinishTaskOfflineEventCopyWithImpl<$Res>
    implements _$FinishTaskOfflineEventCopyWith<$Res> {
  __$FinishTaskOfflineEventCopyWithImpl(this._self, this._then);

  final _FinishTaskOfflineEvent _self;
  final $Res Function(_FinishTaskOfflineEvent) _then;

  /// Create a copy of TaskActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? taskIvy = null,
  }) {
    return _then(_FinishTaskOfflineEvent(
      null == taskIvy
          ? _self.taskIvy
          : taskIvy // ignore: cast_nullable_to_non_nullable
              as TaskIvy,
    ));
  }

  /// Create a copy of TaskActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskIvyCopyWith<$Res> get taskIvy {
    return $TaskIvyCopyWith<$Res>(_self.taskIvy, (value) {
      return _then(_self.copyWith(taskIvy: value));
    });
  }
}

/// @nodoc
mixin _$TaskActivityState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TaskActivityState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TaskActivityState()';
  }
}

/// @nodoc
class $TaskActivityStateCopyWith<$Res> {
  $TaskActivityStateCopyWith(
      TaskActivityState _, $Res Function(TaskActivityState) __);
}

/// Adds pattern-matching-related methods to [TaskActivityState].
extension TaskActivityStatePatterns on TaskActivityState {
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
    TResult Function(_Initial value)? initial,
    TResult Function(FinishedLoadingState value)? loading,
    TResult Function(FinishedTaskOffline value)? finishedTaskOffline,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case FinishedLoadingState() when loading != null:
        return loading(_that);
      case FinishedTaskOffline() when finishedTaskOffline != null:
        return finishedTaskOffline(_that);
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
    required TResult Function(_Initial value) initial,
    required TResult Function(FinishedLoadingState value) loading,
    required TResult Function(FinishedTaskOffline value) finishedTaskOffline,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case FinishedLoadingState():
        return loading(_that);
      case FinishedTaskOffline():
        return finishedTaskOffline(_that);
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(FinishedLoadingState value)? loading,
    TResult? Function(FinishedTaskOffline value)? finishedTaskOffline,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case FinishedLoadingState() when loading != null:
        return loading(_that);
      case FinishedTaskOffline() when finishedTaskOffline != null:
        return finishedTaskOffline(_that);
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
    TResult Function()? initial,
    TResult Function(bool isShowLoading)? loading,
    TResult Function(TaskIvy taskIvy)? finishedTaskOffline,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case FinishedLoadingState() when loading != null:
        return loading(_that.isShowLoading);
      case FinishedTaskOffline() when finishedTaskOffline != null:
        return finishedTaskOffline(_that.taskIvy);
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
    required TResult Function() initial,
    required TResult Function(bool isShowLoading) loading,
    required TResult Function(TaskIvy taskIvy) finishedTaskOffline,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case FinishedLoadingState():
        return loading(_that.isShowLoading);
      case FinishedTaskOffline():
        return finishedTaskOffline(_that.taskIvy);
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
    TResult? Function()? initial,
    TResult? Function(bool isShowLoading)? loading,
    TResult? Function(TaskIvy taskIvy)? finishedTaskOffline,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case FinishedLoadingState() when loading != null:
        return loading(_that.isShowLoading);
      case FinishedTaskOffline() when finishedTaskOffline != null:
        return finishedTaskOffline(_that.taskIvy);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements TaskActivityState {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TaskActivityState.initial()';
  }
}

/// @nodoc

class FinishedLoadingState implements TaskActivityState {
  const FinishedLoadingState(this.isShowLoading);

  final bool isShowLoading;

  /// Create a copy of TaskActivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FinishedLoadingStateCopyWith<FinishedLoadingState> get copyWith =>
      _$FinishedLoadingStateCopyWithImpl<FinishedLoadingState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FinishedLoadingState &&
            (identical(other.isShowLoading, isShowLoading) ||
                other.isShowLoading == isShowLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isShowLoading);

  @override
  String toString() {
    return 'TaskActivityState.loading(isShowLoading: $isShowLoading)';
  }
}

/// @nodoc
abstract mixin class $FinishedLoadingStateCopyWith<$Res>
    implements $TaskActivityStateCopyWith<$Res> {
  factory $FinishedLoadingStateCopyWith(FinishedLoadingState value,
          $Res Function(FinishedLoadingState) _then) =
      _$FinishedLoadingStateCopyWithImpl;
  @useResult
  $Res call({bool isShowLoading});
}

/// @nodoc
class _$FinishedLoadingStateCopyWithImpl<$Res>
    implements $FinishedLoadingStateCopyWith<$Res> {
  _$FinishedLoadingStateCopyWithImpl(this._self, this._then);

  final FinishedLoadingState _self;
  final $Res Function(FinishedLoadingState) _then;

  /// Create a copy of TaskActivityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isShowLoading = null,
  }) {
    return _then(FinishedLoadingState(
      null == isShowLoading
          ? _self.isShowLoading
          : isShowLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class FinishedTaskOffline implements TaskActivityState {
  const FinishedTaskOffline(this.taskIvy);

  final TaskIvy taskIvy;

  /// Create a copy of TaskActivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FinishedTaskOfflineCopyWith<FinishedTaskOffline> get copyWith =>
      _$FinishedTaskOfflineCopyWithImpl<FinishedTaskOffline>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FinishedTaskOffline &&
            (identical(other.taskIvy, taskIvy) || other.taskIvy == taskIvy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskIvy);

  @override
  String toString() {
    return 'TaskActivityState.finishedTaskOffline(taskIvy: $taskIvy)';
  }
}

/// @nodoc
abstract mixin class $FinishedTaskOfflineCopyWith<$Res>
    implements $TaskActivityStateCopyWith<$Res> {
  factory $FinishedTaskOfflineCopyWith(
          FinishedTaskOffline value, $Res Function(FinishedTaskOffline) _then) =
      _$FinishedTaskOfflineCopyWithImpl;
  @useResult
  $Res call({TaskIvy taskIvy});

  $TaskIvyCopyWith<$Res> get taskIvy;
}

/// @nodoc
class _$FinishedTaskOfflineCopyWithImpl<$Res>
    implements $FinishedTaskOfflineCopyWith<$Res> {
  _$FinishedTaskOfflineCopyWithImpl(this._self, this._then);

  final FinishedTaskOffline _self;
  final $Res Function(FinishedTaskOffline) _then;

  /// Create a copy of TaskActivityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? taskIvy = null,
  }) {
    return _then(FinishedTaskOffline(
      null == taskIvy
          ? _self.taskIvy
          : taskIvy // ignore: cast_nullable_to_non_nullable
              as TaskIvy,
    ));
  }

  /// Create a copy of TaskActivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskIvyCopyWith<$Res> get taskIvy {
    return $TaskIvyCopyWith<$Res>(_self.taskIvy, (value) {
      return _then(_self.copyWith(taskIvy: value));
    });
  }
}

// dart format on
