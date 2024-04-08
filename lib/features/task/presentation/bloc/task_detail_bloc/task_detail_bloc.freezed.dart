// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskDetailEvent {
  int get taskId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int taskId) getTaskDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int taskId)? getTaskDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int taskId)? getTaskDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTaskDetail value) getTaskDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTaskDetail value)? getTaskDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTaskDetail value)? getTaskDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskDetailEventCopyWith<TaskDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDetailEventCopyWith<$Res> {
  factory $TaskDetailEventCopyWith(
          TaskDetailEvent value, $Res Function(TaskDetailEvent) then) =
      _$TaskDetailEventCopyWithImpl<$Res, TaskDetailEvent>;
  @useResult
  $Res call({int taskId});
}

/// @nodoc
class _$TaskDetailEventCopyWithImpl<$Res, $Val extends TaskDetailEvent>
    implements $TaskDetailEventCopyWith<$Res> {
  _$TaskDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_value.copyWith(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetTaskDetailImplCopyWith<$Res>
    implements $TaskDetailEventCopyWith<$Res> {
  factory _$$GetTaskDetailImplCopyWith(
          _$GetTaskDetailImpl value, $Res Function(_$GetTaskDetailImpl) then) =
      __$$GetTaskDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int taskId});
}

/// @nodoc
class __$$GetTaskDetailImplCopyWithImpl<$Res>
    extends _$TaskDetailEventCopyWithImpl<$Res, _$GetTaskDetailImpl>
    implements _$$GetTaskDetailImplCopyWith<$Res> {
  __$$GetTaskDetailImplCopyWithImpl(
      _$GetTaskDetailImpl _value, $Res Function(_$GetTaskDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$GetTaskDetailImpl(
      null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetTaskDetailImpl
    with DiagnosticableTreeMixin
    implements _GetTaskDetail {
  const _$GetTaskDetailImpl(this.taskId);

  @override
  final int taskId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskDetailEvent.getTaskDetail(taskId: $taskId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskDetailEvent.getTaskDetail'))
      ..add(DiagnosticsProperty('taskId', taskId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTaskDetailImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTaskDetailImplCopyWith<_$GetTaskDetailImpl> get copyWith =>
      __$$GetTaskDetailImplCopyWithImpl<_$GetTaskDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int taskId) getTaskDetail,
  }) {
    return getTaskDetail(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int taskId)? getTaskDetail,
  }) {
    return getTaskDetail?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int taskId)? getTaskDetail,
    required TResult orElse(),
  }) {
    if (getTaskDetail != null) {
      return getTaskDetail(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTaskDetail value) getTaskDetail,
  }) {
    return getTaskDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTaskDetail value)? getTaskDetail,
  }) {
    return getTaskDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTaskDetail value)? getTaskDetail,
    required TResult orElse(),
  }) {
    if (getTaskDetail != null) {
      return getTaskDetail(this);
    }
    return orElse();
  }
}

abstract class _GetTaskDetail implements TaskDetailEvent {
  const factory _GetTaskDetail(final int taskId) = _$GetTaskDetailImpl;

  @override
  int get taskId;
  @override
  @JsonKey(ignore: true)
  _$$GetTaskDetailImplCopyWith<_$GetTaskDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(TaskIvy task) success,
    required TResult Function(TaskIvy task) startTaskSucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(TaskIvy task)? success,
    TResult? Function(TaskIvy task)? startTaskSucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(TaskIvy task)? success,
    TResult Function(TaskIvy task)? startTaskSucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailLoadingState value) loading,
    required TResult Function(TaskDetailErrorState value) error,
    required TResult Function(TaskDetailSuccessState value) success,
    required TResult Function(TaskDetailStartSuccessState value)
        startTaskSucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailLoadingState value)? loading,
    TResult? Function(TaskDetailErrorState value)? error,
    TResult? Function(TaskDetailSuccessState value)? success,
    TResult? Function(TaskDetailStartSuccessState value)? startTaskSucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailLoadingState value)? loading,
    TResult Function(TaskDetailErrorState value)? error,
    TResult Function(TaskDetailSuccessState value)? success,
    TResult Function(TaskDetailStartSuccessState value)? startTaskSucess,
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
abstract class _$$TaskDetailLoadingStateImplCopyWith<$Res> {
  factory _$$TaskDetailLoadingStateImplCopyWith(
          _$TaskDetailLoadingStateImpl value,
          $Res Function(_$TaskDetailLoadingStateImpl) then) =
      __$$TaskDetailLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskDetailLoadingStateImplCopyWithImpl<$Res>
    extends _$TaskDetailStateCopyWithImpl<$Res, _$TaskDetailLoadingStateImpl>
    implements _$$TaskDetailLoadingStateImplCopyWith<$Res> {
  __$$TaskDetailLoadingStateImplCopyWithImpl(
      _$TaskDetailLoadingStateImpl _value,
      $Res Function(_$TaskDetailLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskDetailLoadingStateImpl
    with DiagnosticableTreeMixin
    implements TaskDetailLoadingState {
  const _$TaskDetailLoadingStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskDetailState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TaskDetailState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(TaskIvy task) success,
    required TResult Function(TaskIvy task) startTaskSucess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(TaskIvy task)? success,
    TResult? Function(TaskIvy task)? startTaskSucess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(TaskIvy task)? success,
    TResult Function(TaskIvy task)? startTaskSucess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailLoadingState value) loading,
    required TResult Function(TaskDetailErrorState value) error,
    required TResult Function(TaskDetailSuccessState value) success,
    required TResult Function(TaskDetailStartSuccessState value)
        startTaskSucess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailLoadingState value)? loading,
    TResult? Function(TaskDetailErrorState value)? error,
    TResult? Function(TaskDetailSuccessState value)? success,
    TResult? Function(TaskDetailStartSuccessState value)? startTaskSucess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailLoadingState value)? loading,
    TResult Function(TaskDetailErrorState value)? error,
    TResult Function(TaskDetailSuccessState value)? success,
    TResult Function(TaskDetailStartSuccessState value)? startTaskSucess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TaskDetailLoadingState implements TaskDetailState {
  const factory TaskDetailLoadingState() = _$TaskDetailLoadingStateImpl;
}

/// @nodoc
abstract class _$$TaskDetailErrorStateImplCopyWith<$Res> {
  factory _$$TaskDetailErrorStateImplCopyWith(_$TaskDetailErrorStateImpl value,
          $Res Function(_$TaskDetailErrorStateImpl) then) =
      __$$TaskDetailErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$TaskDetailErrorStateImplCopyWithImpl<$Res>
    extends _$TaskDetailStateCopyWithImpl<$Res, _$TaskDetailErrorStateImpl>
    implements _$$TaskDetailErrorStateImplCopyWith<$Res> {
  __$$TaskDetailErrorStateImplCopyWithImpl(_$TaskDetailErrorStateImpl _value,
      $Res Function(_$TaskDetailErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$TaskDetailErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskDetailErrorStateImpl
    with DiagnosticableTreeMixin
    implements TaskDetailErrorState {
  const _$TaskDetailErrorStateImpl(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskDetailState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskDetailState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDetailErrorStateImplCopyWith<_$TaskDetailErrorStateImpl>
      get copyWith =>
          __$$TaskDetailErrorStateImplCopyWithImpl<_$TaskDetailErrorStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(TaskIvy task) success,
    required TResult Function(TaskIvy task) startTaskSucess,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(TaskIvy task)? success,
    TResult? Function(TaskIvy task)? startTaskSucess,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(TaskIvy task)? success,
    TResult Function(TaskIvy task)? startTaskSucess,
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
    required TResult Function(TaskDetailLoadingState value) loading,
    required TResult Function(TaskDetailErrorState value) error,
    required TResult Function(TaskDetailSuccessState value) success,
    required TResult Function(TaskDetailStartSuccessState value)
        startTaskSucess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailLoadingState value)? loading,
    TResult? Function(TaskDetailErrorState value)? error,
    TResult? Function(TaskDetailSuccessState value)? success,
    TResult? Function(TaskDetailStartSuccessState value)? startTaskSucess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailLoadingState value)? loading,
    TResult Function(TaskDetailErrorState value)? error,
    TResult Function(TaskDetailSuccessState value)? success,
    TResult Function(TaskDetailStartSuccessState value)? startTaskSucess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TaskDetailErrorState implements TaskDetailState {
  const factory TaskDetailErrorState(final String error) =
      _$TaskDetailErrorStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$TaskDetailErrorStateImplCopyWith<_$TaskDetailErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskDetailSuccessStateImplCopyWith<$Res> {
  factory _$$TaskDetailSuccessStateImplCopyWith(
          _$TaskDetailSuccessStateImpl value,
          $Res Function(_$TaskDetailSuccessStateImpl) then) =
      __$$TaskDetailSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskIvy task});

  $TaskIvyCopyWith<$Res> get task;
}

/// @nodoc
class __$$TaskDetailSuccessStateImplCopyWithImpl<$Res>
    extends _$TaskDetailStateCopyWithImpl<$Res, _$TaskDetailSuccessStateImpl>
    implements _$$TaskDetailSuccessStateImplCopyWith<$Res> {
  __$$TaskDetailSuccessStateImplCopyWithImpl(
      _$TaskDetailSuccessStateImpl _value,
      $Res Function(_$TaskDetailSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$TaskDetailSuccessStateImpl(
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

class _$TaskDetailSuccessStateImpl
    with DiagnosticableTreeMixin
    implements TaskDetailSuccessState {
  const _$TaskDetailSuccessStateImpl(this.task);

  @override
  final TaskIvy task;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskDetailState.success(task: $task)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskDetailState.success'))
      ..add(DiagnosticsProperty('task', task));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailSuccessStateImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDetailSuccessStateImplCopyWith<_$TaskDetailSuccessStateImpl>
      get copyWith => __$$TaskDetailSuccessStateImplCopyWithImpl<
          _$TaskDetailSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(TaskIvy task) success,
    required TResult Function(TaskIvy task) startTaskSucess,
  }) {
    return success(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(TaskIvy task)? success,
    TResult? Function(TaskIvy task)? startTaskSucess,
  }) {
    return success?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(TaskIvy task)? success,
    TResult Function(TaskIvy task)? startTaskSucess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailLoadingState value) loading,
    required TResult Function(TaskDetailErrorState value) error,
    required TResult Function(TaskDetailSuccessState value) success,
    required TResult Function(TaskDetailStartSuccessState value)
        startTaskSucess,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailLoadingState value)? loading,
    TResult? Function(TaskDetailErrorState value)? error,
    TResult? Function(TaskDetailSuccessState value)? success,
    TResult? Function(TaskDetailStartSuccessState value)? startTaskSucess,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailLoadingState value)? loading,
    TResult Function(TaskDetailErrorState value)? error,
    TResult Function(TaskDetailSuccessState value)? success,
    TResult Function(TaskDetailStartSuccessState value)? startTaskSucess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class TaskDetailSuccessState implements TaskDetailState {
  const factory TaskDetailSuccessState(final TaskIvy task) =
      _$TaskDetailSuccessStateImpl;

  TaskIvy get task;
  @JsonKey(ignore: true)
  _$$TaskDetailSuccessStateImplCopyWith<_$TaskDetailSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskDetailStartSuccessStateImplCopyWith<$Res> {
  factory _$$TaskDetailStartSuccessStateImplCopyWith(
          _$TaskDetailStartSuccessStateImpl value,
          $Res Function(_$TaskDetailStartSuccessStateImpl) then) =
      __$$TaskDetailStartSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskIvy task});

  $TaskIvyCopyWith<$Res> get task;
}

/// @nodoc
class __$$TaskDetailStartSuccessStateImplCopyWithImpl<$Res>
    extends _$TaskDetailStateCopyWithImpl<$Res,
        _$TaskDetailStartSuccessStateImpl>
    implements _$$TaskDetailStartSuccessStateImplCopyWith<$Res> {
  __$$TaskDetailStartSuccessStateImplCopyWithImpl(
      _$TaskDetailStartSuccessStateImpl _value,
      $Res Function(_$TaskDetailStartSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$TaskDetailStartSuccessStateImpl(
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

class _$TaskDetailStartSuccessStateImpl
    with DiagnosticableTreeMixin
    implements TaskDetailStartSuccessState {
  const _$TaskDetailStartSuccessStateImpl(this.task);

  @override
  final TaskIvy task;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskDetailState.startTaskSucess(task: $task)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskDetailState.startTaskSucess'))
      ..add(DiagnosticsProperty('task', task));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailStartSuccessStateImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDetailStartSuccessStateImplCopyWith<_$TaskDetailStartSuccessStateImpl>
      get copyWith => __$$TaskDetailStartSuccessStateImplCopyWithImpl<
          _$TaskDetailStartSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(TaskIvy task) success,
    required TResult Function(TaskIvy task) startTaskSucess,
  }) {
    return startTaskSucess(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(TaskIvy task)? success,
    TResult? Function(TaskIvy task)? startTaskSucess,
  }) {
    return startTaskSucess?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(TaskIvy task)? success,
    TResult Function(TaskIvy task)? startTaskSucess,
    required TResult orElse(),
  }) {
    if (startTaskSucess != null) {
      return startTaskSucess(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailLoadingState value) loading,
    required TResult Function(TaskDetailErrorState value) error,
    required TResult Function(TaskDetailSuccessState value) success,
    required TResult Function(TaskDetailStartSuccessState value)
        startTaskSucess,
  }) {
    return startTaskSucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailLoadingState value)? loading,
    TResult? Function(TaskDetailErrorState value)? error,
    TResult? Function(TaskDetailSuccessState value)? success,
    TResult? Function(TaskDetailStartSuccessState value)? startTaskSucess,
  }) {
    return startTaskSucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailLoadingState value)? loading,
    TResult Function(TaskDetailErrorState value)? error,
    TResult Function(TaskDetailSuccessState value)? success,
    TResult Function(TaskDetailStartSuccessState value)? startTaskSucess,
    required TResult orElse(),
  }) {
    if (startTaskSucess != null) {
      return startTaskSucess(this);
    }
    return orElse();
  }
}

abstract class TaskDetailStartSuccessState implements TaskDetailState {
  const factory TaskDetailStartSuccessState(final TaskIvy task) =
      _$TaskDetailStartSuccessStateImpl;

  TaskIvy get task;
  @JsonKey(ignore: true)
  _$$TaskDetailStartSuccessStateImplCopyWith<_$TaskDetailStartSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
