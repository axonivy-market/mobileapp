// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TaskDetailEvent implements DiagnosticableTreeMixin {
  TaskIvy get task;

  /// Create a copy of TaskDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TaskDetailEventCopyWith<TaskDetailEvent> get copyWith =>
      _$TaskDetailEventCopyWithImpl<TaskDetailEvent>(
          this as TaskDetailEvent, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TaskDetailEvent'))
      ..add(DiagnosticsProperty('task', task));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TaskDetailEvent &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskDetailEvent(task: $task)';
  }
}

/// @nodoc
abstract mixin class $TaskDetailEventCopyWith<$Res> {
  factory $TaskDetailEventCopyWith(
          TaskDetailEvent value, $Res Function(TaskDetailEvent) _then) =
      _$TaskDetailEventCopyWithImpl;
  @useResult
  $Res call({TaskIvy task});

  $TaskIvyCopyWith<$Res> get task;
}

/// @nodoc
class _$TaskDetailEventCopyWithImpl<$Res>
    implements $TaskDetailEventCopyWith<$Res> {
  _$TaskDetailEventCopyWithImpl(this._self, this._then);

  final TaskDetailEvent _self;
  final $Res Function(TaskDetailEvent) _then;

  /// Create a copy of TaskDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_self.copyWith(
      task: null == task
          ? _self.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskIvy,
    ));
  }

  /// Create a copy of TaskDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskIvyCopyWith<$Res> get task {
    return $TaskIvyCopyWith<$Res>(_self.task, (value) {
      return _then(_self.copyWith(task: value));
    });
  }
}

/// Adds pattern-matching-related methods to [TaskDetailEvent].
extension TaskDetailEventPatterns on TaskDetailEvent {
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
    TResult Function(_GetTaskDetail value)? getTaskDetail,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetTaskDetail() when getTaskDetail != null:
        return getTaskDetail(_that);
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
    required TResult Function(_GetTaskDetail value) getTaskDetail,
  }) {
    final _that = this;
    switch (_that) {
      case _GetTaskDetail():
        return getTaskDetail(_that);
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
    TResult? Function(_GetTaskDetail value)? getTaskDetail,
  }) {
    final _that = this;
    switch (_that) {
      case _GetTaskDetail() when getTaskDetail != null:
        return getTaskDetail(_that);
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
    TResult Function(TaskIvy task)? getTaskDetail,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetTaskDetail() when getTaskDetail != null:
        return getTaskDetail(_that.task);
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
    required TResult Function(TaskIvy task) getTaskDetail,
  }) {
    final _that = this;
    switch (_that) {
      case _GetTaskDetail():
        return getTaskDetail(_that.task);
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
    TResult? Function(TaskIvy task)? getTaskDetail,
  }) {
    final _that = this;
    switch (_that) {
      case _GetTaskDetail() when getTaskDetail != null:
        return getTaskDetail(_that.task);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GetTaskDetail with DiagnosticableTreeMixin implements TaskDetailEvent {
  const _GetTaskDetail(this.task);

  @override
  final TaskIvy task;

  /// Create a copy of TaskDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetTaskDetailCopyWith<_GetTaskDetail> get copyWith =>
      __$GetTaskDetailCopyWithImpl<_GetTaskDetail>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TaskDetailEvent.getTaskDetail'))
      ..add(DiagnosticsProperty('task', task));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetTaskDetail &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskDetailEvent.getTaskDetail(task: $task)';
  }
}

/// @nodoc
abstract mixin class _$GetTaskDetailCopyWith<$Res>
    implements $TaskDetailEventCopyWith<$Res> {
  factory _$GetTaskDetailCopyWith(
          _GetTaskDetail value, $Res Function(_GetTaskDetail) _then) =
      __$GetTaskDetailCopyWithImpl;
  @override
  @useResult
  $Res call({TaskIvy task});

  @override
  $TaskIvyCopyWith<$Res> get task;
}

/// @nodoc
class __$GetTaskDetailCopyWithImpl<$Res>
    implements _$GetTaskDetailCopyWith<$Res> {
  __$GetTaskDetailCopyWithImpl(this._self, this._then);

  final _GetTaskDetail _self;
  final $Res Function(_GetTaskDetail) _then;

  /// Create a copy of TaskDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? task = null,
  }) {
    return _then(_GetTaskDetail(
      null == task
          ? _self.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskIvy,
    ));
  }

  /// Create a copy of TaskDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskIvyCopyWith<$Res> get task {
    return $TaskIvyCopyWith<$Res>(_self.task, (value) {
      return _then(_self.copyWith(task: value));
    });
  }
}

/// @nodoc
mixin _$TaskDetailState implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'TaskDetailState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TaskDetailState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskDetailState()';
  }
}

/// @nodoc
class $TaskDetailStateCopyWith<$Res> {
  $TaskDetailStateCopyWith(
      TaskDetailState _, $Res Function(TaskDetailState) __);
}

/// Adds pattern-matching-related methods to [TaskDetailState].
extension TaskDetailStatePatterns on TaskDetailState {
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
    TResult Function(TaskDetailLoadingState value)? loading,
    TResult Function(TaskDetailErrorState value)? error,
    TResult Function(TaskDetailSuccessState value)? success,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case TaskDetailLoadingState() when loading != null:
        return loading(_that);
      case TaskDetailErrorState() when error != null:
        return error(_that);
      case TaskDetailSuccessState() when success != null:
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
    required TResult Function(TaskDetailLoadingState value) loading,
    required TResult Function(TaskDetailErrorState value) error,
    required TResult Function(TaskDetailSuccessState value) success,
  }) {
    final _that = this;
    switch (_that) {
      case TaskDetailLoadingState():
        return loading(_that);
      case TaskDetailErrorState():
        return error(_that);
      case TaskDetailSuccessState():
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
    TResult? Function(TaskDetailLoadingState value)? loading,
    TResult? Function(TaskDetailErrorState value)? error,
    TResult? Function(TaskDetailSuccessState value)? success,
  }) {
    final _that = this;
    switch (_that) {
      case TaskDetailLoadingState() when loading != null:
        return loading(_that);
      case TaskDetailErrorState() when error != null:
        return error(_that);
      case TaskDetailSuccessState() when success != null:
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
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(TaskIvy task)? success,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case TaskDetailLoadingState() when loading != null:
        return loading();
      case TaskDetailErrorState() when error != null:
        return error(_that.error);
      case TaskDetailSuccessState() when success != null:
        return success(_that.task);
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
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(TaskIvy task) success,
  }) {
    final _that = this;
    switch (_that) {
      case TaskDetailLoadingState():
        return loading();
      case TaskDetailErrorState():
        return error(_that.error);
      case TaskDetailSuccessState():
        return success(_that.task);
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
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(TaskIvy task)? success,
  }) {
    final _that = this;
    switch (_that) {
      case TaskDetailLoadingState() when loading != null:
        return loading();
      case TaskDetailErrorState() when error != null:
        return error(_that.error);
      case TaskDetailSuccessState() when success != null:
        return success(_that.task);
      case _:
        return null;
    }
  }
}

/// @nodoc

class TaskDetailLoadingState
    with DiagnosticableTreeMixin
    implements TaskDetailState {
  const TaskDetailLoadingState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'TaskDetailState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TaskDetailLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskDetailState.loading()';
  }
}

/// @nodoc

class TaskDetailErrorState
    with DiagnosticableTreeMixin
    implements TaskDetailState {
  const TaskDetailErrorState(this.error);

  final String error;

  /// Create a copy of TaskDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TaskDetailErrorStateCopyWith<TaskDetailErrorState> get copyWith =>
      _$TaskDetailErrorStateCopyWithImpl<TaskDetailErrorState>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TaskDetailState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TaskDetailErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskDetailState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $TaskDetailErrorStateCopyWith<$Res>
    implements $TaskDetailStateCopyWith<$Res> {
  factory $TaskDetailErrorStateCopyWith(TaskDetailErrorState value,
          $Res Function(TaskDetailErrorState) _then) =
      _$TaskDetailErrorStateCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$TaskDetailErrorStateCopyWithImpl<$Res>
    implements $TaskDetailErrorStateCopyWith<$Res> {
  _$TaskDetailErrorStateCopyWithImpl(this._self, this._then);

  final TaskDetailErrorState _self;
  final $Res Function(TaskDetailErrorState) _then;

  /// Create a copy of TaskDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(TaskDetailErrorState(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class TaskDetailSuccessState
    with DiagnosticableTreeMixin
    implements TaskDetailState {
  const TaskDetailSuccessState(this.task);

  final TaskIvy task;

  /// Create a copy of TaskDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TaskDetailSuccessStateCopyWith<TaskDetailSuccessState> get copyWith =>
      _$TaskDetailSuccessStateCopyWithImpl<TaskDetailSuccessState>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TaskDetailState.success'))
      ..add(DiagnosticsProperty('task', task));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TaskDetailSuccessState &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskDetailState.success(task: $task)';
  }
}

/// @nodoc
abstract mixin class $TaskDetailSuccessStateCopyWith<$Res>
    implements $TaskDetailStateCopyWith<$Res> {
  factory $TaskDetailSuccessStateCopyWith(TaskDetailSuccessState value,
          $Res Function(TaskDetailSuccessState) _then) =
      _$TaskDetailSuccessStateCopyWithImpl;
  @useResult
  $Res call({TaskIvy task});

  $TaskIvyCopyWith<$Res> get task;
}

/// @nodoc
class _$TaskDetailSuccessStateCopyWithImpl<$Res>
    implements $TaskDetailSuccessStateCopyWith<$Res> {
  _$TaskDetailSuccessStateCopyWithImpl(this._self, this._then);

  final TaskDetailSuccessState _self;
  final $Res Function(TaskDetailSuccessState) _then;

  /// Create a copy of TaskDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? task = null,
  }) {
    return _then(TaskDetailSuccessState(
      null == task
          ? _self.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskIvy,
    ));
  }

  /// Create a copy of TaskDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskIvyCopyWith<$Res> get task {
    return $TaskIvyCopyWith<$Res>(_self.task, (value) {
      return _then(_self.copyWith(task: value));
    });
  }
}

// dart format on
