// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_conflict_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskConflictState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int currentTime, String message) taskUnstartable,
    required TResult Function(int currentTime, TaskIvy task) taskStartable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int currentTime, String message)? taskUnstartable,
    TResult? Function(int currentTime, TaskIvy task)? taskStartable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentTime, String message)? taskUnstartable,
    TResult Function(int currentTime, TaskIvy task)? taskStartable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(TaskUnstartableState value) taskUnstartable,
    required TResult Function(TaskStartableState value) taskStartable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(TaskUnstartableState value)? taskUnstartable,
    TResult? Function(TaskStartableState value)? taskStartable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(TaskUnstartableState value)? taskUnstartable,
    TResult Function(TaskStartableState value)? taskStartable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskConflictStateCopyWith<$Res> {
  factory $TaskConflictStateCopyWith(
          TaskConflictState value, $Res Function(TaskConflictState) then) =
      _$TaskConflictStateCopyWithImpl<$Res, TaskConflictState>;
}

/// @nodoc
class _$TaskConflictStateCopyWithImpl<$Res, $Val extends TaskConflictState>
    implements $TaskConflictStateCopyWith<$Res> {
  _$TaskConflictStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TaskConflictStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TaskConflictState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int currentTime, String message) taskUnstartable,
    required TResult Function(int currentTime, TaskIvy task) taskStartable,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int currentTime, String message)? taskUnstartable,
    TResult? Function(int currentTime, TaskIvy task)? taskStartable,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentTime, String message)? taskUnstartable,
    TResult Function(int currentTime, TaskIvy task)? taskStartable,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(TaskUnstartableState value) taskUnstartable,
    required TResult Function(TaskStartableState value) taskStartable,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(TaskUnstartableState value)? taskUnstartable,
    TResult? Function(TaskStartableState value)? taskStartable,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(TaskUnstartableState value)? taskUnstartable,
    TResult Function(TaskStartableState value)? taskStartable,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TaskConflictState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$TaskUnstartableStateImplCopyWith<$Res> {
  factory _$$TaskUnstartableStateImplCopyWith(_$TaskUnstartableStateImpl value,
          $Res Function(_$TaskUnstartableStateImpl) then) =
      __$$TaskUnstartableStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int currentTime, String message});
}

/// @nodoc
class __$$TaskUnstartableStateImplCopyWithImpl<$Res>
    extends _$TaskConflictStateCopyWithImpl<$Res, _$TaskUnstartableStateImpl>
    implements _$$TaskUnstartableStateImplCopyWith<$Res> {
  __$$TaskUnstartableStateImplCopyWithImpl(_$TaskUnstartableStateImpl _value,
      $Res Function(_$TaskUnstartableStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTime = null,
    Object? message = null,
  }) {
    return _then(_$TaskUnstartableStateImpl(
      null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as int,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskUnstartableStateImpl implements TaskUnstartableState {
  const _$TaskUnstartableStateImpl(this.currentTime, this.message);

  @override
  final int currentTime;
  @override
  final String message;

  @override
  String toString() {
    return 'TaskConflictState.taskUnstartable(currentTime: $currentTime, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskUnstartableStateImpl &&
            (identical(other.currentTime, currentTime) ||
                other.currentTime == currentTime) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentTime, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskUnstartableStateImplCopyWith<_$TaskUnstartableStateImpl>
      get copyWith =>
          __$$TaskUnstartableStateImplCopyWithImpl<_$TaskUnstartableStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int currentTime, String message) taskUnstartable,
    required TResult Function(int currentTime, TaskIvy task) taskStartable,
  }) {
    return taskUnstartable(currentTime, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int currentTime, String message)? taskUnstartable,
    TResult? Function(int currentTime, TaskIvy task)? taskStartable,
  }) {
    return taskUnstartable?.call(currentTime, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentTime, String message)? taskUnstartable,
    TResult Function(int currentTime, TaskIvy task)? taskStartable,
    required TResult orElse(),
  }) {
    if (taskUnstartable != null) {
      return taskUnstartable(currentTime, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(TaskUnstartableState value) taskUnstartable,
    required TResult Function(TaskStartableState value) taskStartable,
  }) {
    return taskUnstartable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(TaskUnstartableState value)? taskUnstartable,
    TResult? Function(TaskStartableState value)? taskStartable,
  }) {
    return taskUnstartable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(TaskUnstartableState value)? taskUnstartable,
    TResult Function(TaskStartableState value)? taskStartable,
    required TResult orElse(),
  }) {
    if (taskUnstartable != null) {
      return taskUnstartable(this);
    }
    return orElse();
  }
}

abstract class TaskUnstartableState implements TaskConflictState {
  const factory TaskUnstartableState(
      final int currentTime, final String message) = _$TaskUnstartableStateImpl;

  int get currentTime;
  String get message;
  @JsonKey(ignore: true)
  _$$TaskUnstartableStateImplCopyWith<_$TaskUnstartableStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskStartableStateImplCopyWith<$Res> {
  factory _$$TaskStartableStateImplCopyWith(_$TaskStartableStateImpl value,
          $Res Function(_$TaskStartableStateImpl) then) =
      __$$TaskStartableStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int currentTime, TaskIvy task});

  $TaskIvyCopyWith<$Res> get task;
}

/// @nodoc
class __$$TaskStartableStateImplCopyWithImpl<$Res>
    extends _$TaskConflictStateCopyWithImpl<$Res, _$TaskStartableStateImpl>
    implements _$$TaskStartableStateImplCopyWith<$Res> {
  __$$TaskStartableStateImplCopyWithImpl(_$TaskStartableStateImpl _value,
      $Res Function(_$TaskStartableStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTime = null,
    Object? task = null,
  }) {
    return _then(_$TaskStartableStateImpl(
      null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as int,
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskIvy,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskIvyCopyWith<$Res> get task {
    return $TaskIvyCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$TaskStartableStateImpl implements TaskStartableState {
  const _$TaskStartableStateImpl(this.currentTime, this.task);

  @override
  final int currentTime;
  @override
  final TaskIvy task;

  @override
  String toString() {
    return 'TaskConflictState.taskStartable(currentTime: $currentTime, task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskStartableStateImpl &&
            (identical(other.currentTime, currentTime) ||
                other.currentTime == currentTime) &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentTime, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskStartableStateImplCopyWith<_$TaskStartableStateImpl> get copyWith =>
      __$$TaskStartableStateImplCopyWithImpl<_$TaskStartableStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int currentTime, String message) taskUnstartable,
    required TResult Function(int currentTime, TaskIvy task) taskStartable,
  }) {
    return taskStartable(currentTime, task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int currentTime, String message)? taskUnstartable,
    TResult? Function(int currentTime, TaskIvy task)? taskStartable,
  }) {
    return taskStartable?.call(currentTime, task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentTime, String message)? taskUnstartable,
    TResult Function(int currentTime, TaskIvy task)? taskStartable,
    required TResult orElse(),
  }) {
    if (taskStartable != null) {
      return taskStartable(currentTime, task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(TaskUnstartableState value) taskUnstartable,
    required TResult Function(TaskStartableState value) taskStartable,
  }) {
    return taskStartable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(TaskUnstartableState value)? taskUnstartable,
    TResult? Function(TaskStartableState value)? taskStartable,
  }) {
    return taskStartable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(TaskUnstartableState value)? taskUnstartable,
    TResult Function(TaskStartableState value)? taskStartable,
    required TResult orElse(),
  }) {
    if (taskStartable != null) {
      return taskStartable(this);
    }
    return orElse();
  }
}

abstract class TaskStartableState implements TaskConflictState {
  const factory TaskStartableState(final int currentTime, final TaskIvy task) =
      _$TaskStartableStateImpl;

  int get currentTime;
  TaskIvy get task;
  @JsonKey(ignore: true)
  _$$TaskStartableStateImplCopyWith<_$TaskStartableStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
