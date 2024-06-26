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
  TaskIvy get task => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskIvy task) getTaskDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskIvy task)? getTaskDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskIvy task)? getTaskDetail,
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
  $Res call({TaskIvy task});

  $TaskIvyCopyWith<$Res> get task;
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
    Object? task = null,
  }) {
    return _then(_value.copyWith(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskIvy,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskIvyCopyWith<$Res> get task {
    return $TaskIvyCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
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
  $Res call({TaskIvy task});

  @override
  $TaskIvyCopyWith<$Res> get task;
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
    Object? task = null,
  }) {
    return _then(_$GetTaskDetailImpl(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskIvy,
    ));
  }
}

/// @nodoc

class _$GetTaskDetailImpl
    with DiagnosticableTreeMixin
    implements _GetTaskDetail {
  const _$GetTaskDetailImpl(this.task);

  @override
  final TaskIvy task;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskDetailEvent.getTaskDetail(task: $task)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskDetailEvent.getTaskDetail'))
      ..add(DiagnosticsProperty('task', task));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTaskDetailImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTaskDetailImplCopyWith<_$GetTaskDetailImpl> get copyWith =>
      __$$GetTaskDetailImplCopyWithImpl<_$GetTaskDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskIvy task) getTaskDetail,
  }) {
    return getTaskDetail(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskIvy task)? getTaskDetail,
  }) {
    return getTaskDetail?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskIvy task)? getTaskDetail,
    required TResult orElse(),
  }) {
    if (getTaskDetail != null) {
      return getTaskDetail(task);
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
  const factory _GetTaskDetail(final TaskIvy task) = _$GetTaskDetailImpl;

  @override
  TaskIvy get task;
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(TaskIvy task)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(TaskIvy task)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailLoadingState value) loading,
    required TResult Function(TaskDetailErrorState value) error,
    required TResult Function(TaskDetailSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailLoadingState value)? loading,
    TResult? Function(TaskDetailErrorState value)? error,
    TResult? Function(TaskDetailSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailLoadingState value)? loading,
    TResult Function(TaskDetailErrorState value)? error,
    TResult Function(TaskDetailSuccessState value)? success,
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
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(TaskIvy task)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(TaskIvy task)? success,
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
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailLoadingState value)? loading,
    TResult? Function(TaskDetailErrorState value)? error,
    TResult? Function(TaskDetailSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailLoadingState value)? loading,
    TResult Function(TaskDetailErrorState value)? error,
    TResult Function(TaskDetailSuccessState value)? success,
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
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(TaskIvy task)? success,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(TaskIvy task)? success,
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
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailLoadingState value)? loading,
    TResult? Function(TaskDetailErrorState value)? error,
    TResult? Function(TaskDetailSuccessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailLoadingState value)? loading,
    TResult Function(TaskDetailErrorState value)? error,
    TResult Function(TaskDetailSuccessState value)? success,
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
  }) {
    return success(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(TaskIvy task)? success,
  }) {
    return success?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(TaskIvy task)? success,
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
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailLoadingState value)? loading,
    TResult? Function(TaskDetailErrorState value)? error,
    TResult? Function(TaskDetailSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailLoadingState value)? loading,
    TResult Function(TaskDetailErrorState value)? error,
    TResult Function(TaskDetailSuccessState value)? success,
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
