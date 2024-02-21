// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TaskIvy taskIvy, DateTime now) startTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TaskIvy taskIvy, DateTime now)? startTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TaskIvy taskIvy, DateTime now)? startTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(StartTaskState value) startTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(StartTaskState value)? startTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(StartTaskState value)? startTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDetailStateCopyWith<$Res> {
  factory $TaskDetailStateCopyWith(
          TaskDetailState value, $Res Function(TaskDetailState) then) =
      _$TaskDetailStateCopyWithImpl<$Res, TaskDetailState>;
}

/// @nodoc
class _$TaskDetailStateCopyWithImpl<$Res, $Val extends TaskDetailState>
    implements $TaskDetailStateCopyWith<$Res> {
  _$TaskDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$TaskDetailStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialStateImpl implements InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'TaskDetailState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TaskIvy taskIvy, DateTime now) startTask,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TaskIvy taskIvy, DateTime now)? startTask,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TaskIvy taskIvy, DateTime now)? startTask,
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
    required TResult Function(InitialState value) initial,
    required TResult Function(StartTaskState value) startTask,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(StartTaskState value)? startTask,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(StartTaskState value)? startTask,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements TaskDetailState {
  const factory InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$StartTaskStateImplCopyWith<$Res> {
  factory _$$StartTaskStateImplCopyWith(_$StartTaskStateImpl value,
          $Res Function(_$StartTaskStateImpl) then) =
      __$$StartTaskStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskIvy taskIvy, DateTime now});

  $TaskIvyCopyWith<$Res> get taskIvy;
}

/// @nodoc
class __$$StartTaskStateImplCopyWithImpl<$Res>
    extends _$TaskDetailStateCopyWithImpl<$Res, _$StartTaskStateImpl>
    implements _$$StartTaskStateImplCopyWith<$Res> {
  __$$StartTaskStateImplCopyWithImpl(
      _$StartTaskStateImpl _value, $Res Function(_$StartTaskStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskIvy = null,
    Object? now = null,
  }) {
    return _then(_$StartTaskStateImpl(
      null == taskIvy
          ? _value.taskIvy
          : taskIvy // ignore: cast_nullable_to_non_nullable
              as TaskIvy,
      null == now
          ? _value.now
          : now // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskIvyCopyWith<$Res> get taskIvy {
    return $TaskIvyCopyWith<$Res>(_value.taskIvy, (value) {
      return _then(_value.copyWith(taskIvy: value));
    });
  }
}

/// @nodoc

class _$StartTaskStateImpl implements StartTaskState {
  const _$StartTaskStateImpl(this.taskIvy, this.now);

  @override
  final TaskIvy taskIvy;
  @override
  final DateTime now;

  @override
  String toString() {
    return 'TaskDetailState.startTask(taskIvy: $taskIvy, now: $now)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartTaskStateImpl &&
            (identical(other.taskIvy, taskIvy) || other.taskIvy == taskIvy) &&
            (identical(other.now, now) || other.now == now));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskIvy, now);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartTaskStateImplCopyWith<_$StartTaskStateImpl> get copyWith =>
      __$$StartTaskStateImplCopyWithImpl<_$StartTaskStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TaskIvy taskIvy, DateTime now) startTask,
  }) {
    return startTask(taskIvy, now);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TaskIvy taskIvy, DateTime now)? startTask,
  }) {
    return startTask?.call(taskIvy, now);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TaskIvy taskIvy, DateTime now)? startTask,
    required TResult orElse(),
  }) {
    if (startTask != null) {
      return startTask(taskIvy, now);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(StartTaskState value) startTask,
  }) {
    return startTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(StartTaskState value)? startTask,
  }) {
    return startTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(StartTaskState value)? startTask,
    required TResult orElse(),
  }) {
    if (startTask != null) {
      return startTask(this);
    }
    return orElse();
  }
}

abstract class StartTaskState implements TaskDetailState {
  const factory StartTaskState(final TaskIvy taskIvy, final DateTime now) =
      _$StartTaskStateImpl;

  TaskIvy get taskIvy;
  DateTime get now;
  @JsonKey(ignore: true)
  _$$StartTaskStateImplCopyWith<_$StartTaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
