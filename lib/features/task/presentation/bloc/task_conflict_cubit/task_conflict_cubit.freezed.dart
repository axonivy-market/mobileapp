// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_conflict_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TaskConflictState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TaskConflictState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TaskConflictState()';
  }
}

/// @nodoc
class $TaskConflictStateCopyWith<$Res> {
  $TaskConflictStateCopyWith(
      TaskConflictState _, $Res Function(TaskConflictState) __);
}

/// Adds pattern-matching-related methods to [TaskConflictState].
extension TaskConflictStatePatterns on TaskConflictState {
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
    TResult Function(Initial value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(TaskUnstartableState value)? taskUnstartable,
    TResult Function(TaskStartableState value)? taskStartable,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial(_that);
      case LoadingState() when loading != null:
        return loading(_that);
      case TaskUnstartableState() when taskUnstartable != null:
        return taskUnstartable(_that);
      case TaskStartableState() when taskStartable != null:
        return taskStartable(_that);
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
    required TResult Function(Initial value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(TaskUnstartableState value) taskUnstartable,
    required TResult Function(TaskStartableState value) taskStartable,
  }) {
    final _that = this;
    switch (_that) {
      case Initial():
        return initial(_that);
      case LoadingState():
        return loading(_that);
      case TaskUnstartableState():
        return taskUnstartable(_that);
      case TaskStartableState():
        return taskStartable(_that);
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
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(TaskUnstartableState value)? taskUnstartable,
    TResult? Function(TaskStartableState value)? taskStartable,
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial(_that);
      case LoadingState() when loading != null:
        return loading(_that);
      case TaskUnstartableState() when taskUnstartable != null:
        return taskUnstartable(_that);
      case TaskStartableState() when taskStartable != null:
        return taskStartable(_that);
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
    TResult Function()? loading,
    TResult Function(int currentTime, String message)? taskUnstartable,
    TResult Function(int currentTime, TaskIvy task)? taskStartable,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial();
      case LoadingState() when loading != null:
        return loading();
      case TaskUnstartableState() when taskUnstartable != null:
        return taskUnstartable(_that.currentTime, _that.message);
      case TaskStartableState() when taskStartable != null:
        return taskStartable(_that.currentTime, _that.task);
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
    required TResult Function() loading,
    required TResult Function(int currentTime, String message) taskUnstartable,
    required TResult Function(int currentTime, TaskIvy task) taskStartable,
  }) {
    final _that = this;
    switch (_that) {
      case Initial():
        return initial();
      case LoadingState():
        return loading();
      case TaskUnstartableState():
        return taskUnstartable(_that.currentTime, _that.message);
      case TaskStartableState():
        return taskStartable(_that.currentTime, _that.task);
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
    TResult? Function()? loading,
    TResult? Function(int currentTime, String message)? taskUnstartable,
    TResult? Function(int currentTime, TaskIvy task)? taskStartable,
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial();
      case LoadingState() when loading != null:
        return loading();
      case TaskUnstartableState() when taskUnstartable != null:
        return taskUnstartable(_that.currentTime, _that.message);
      case TaskStartableState() when taskStartable != null:
        return taskStartable(_that.currentTime, _that.task);
      case _:
        return null;
    }
  }
}

/// @nodoc

class Initial implements TaskConflictState {
  const Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TaskConflictState.initial()';
  }
}

/// @nodoc

class LoadingState implements TaskConflictState {
  const LoadingState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TaskConflictState.loading()';
  }
}

/// @nodoc

class TaskUnstartableState implements TaskConflictState {
  const TaskUnstartableState(this.currentTime, this.message);

  final int currentTime;
  final String message;

  /// Create a copy of TaskConflictState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TaskUnstartableStateCopyWith<TaskUnstartableState> get copyWith =>
      _$TaskUnstartableStateCopyWithImpl<TaskUnstartableState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TaskUnstartableState &&
            (identical(other.currentTime, currentTime) ||
                other.currentTime == currentTime) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentTime, message);

  @override
  String toString() {
    return 'TaskConflictState.taskUnstartable(currentTime: $currentTime, message: $message)';
  }
}

/// @nodoc
abstract mixin class $TaskUnstartableStateCopyWith<$Res>
    implements $TaskConflictStateCopyWith<$Res> {
  factory $TaskUnstartableStateCopyWith(TaskUnstartableState value,
          $Res Function(TaskUnstartableState) _then) =
      _$TaskUnstartableStateCopyWithImpl;
  @useResult
  $Res call({int currentTime, String message});
}

/// @nodoc
class _$TaskUnstartableStateCopyWithImpl<$Res>
    implements $TaskUnstartableStateCopyWith<$Res> {
  _$TaskUnstartableStateCopyWithImpl(this._self, this._then);

  final TaskUnstartableState _self;
  final $Res Function(TaskUnstartableState) _then;

  /// Create a copy of TaskConflictState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentTime = null,
    Object? message = null,
  }) {
    return _then(TaskUnstartableState(
      null == currentTime
          ? _self.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as int,
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class TaskStartableState implements TaskConflictState {
  const TaskStartableState(this.currentTime, this.task);

  final int currentTime;
  final TaskIvy task;

  /// Create a copy of TaskConflictState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TaskStartableStateCopyWith<TaskStartableState> get copyWith =>
      _$TaskStartableStateCopyWithImpl<TaskStartableState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TaskStartableState &&
            (identical(other.currentTime, currentTime) ||
                other.currentTime == currentTime) &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentTime, task);

  @override
  String toString() {
    return 'TaskConflictState.taskStartable(currentTime: $currentTime, task: $task)';
  }
}

/// @nodoc
abstract mixin class $TaskStartableStateCopyWith<$Res>
    implements $TaskConflictStateCopyWith<$Res> {
  factory $TaskStartableStateCopyWith(
          TaskStartableState value, $Res Function(TaskStartableState) _then) =
      _$TaskStartableStateCopyWithImpl;
  @useResult
  $Res call({int currentTime, TaskIvy task});

  $TaskIvyCopyWith<$Res> get task;
}

/// @nodoc
class _$TaskStartableStateCopyWithImpl<$Res>
    implements $TaskStartableStateCopyWith<$Res> {
  _$TaskStartableStateCopyWithImpl(this._self, this._then);

  final TaskStartableState _self;
  final $Res Function(TaskStartableState) _then;

  /// Create a copy of TaskConflictState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentTime = null,
    Object? task = null,
  }) {
    return _then(TaskStartableState(
      null == currentTime
          ? _self.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as int,
      null == task
          ? _self.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskIvy,
    ));
  }

  /// Create a copy of TaskConflictState
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
