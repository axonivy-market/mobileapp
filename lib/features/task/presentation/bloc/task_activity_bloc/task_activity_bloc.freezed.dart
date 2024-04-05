// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_activity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskActivityEvent {
  TaskIvy get taskIvy => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskIvy taskIvy) finishTaskOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskIvy taskIvy)? finishTaskOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskIvy taskIvy)? finishTaskOffline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FinishTaskOfflineEvent value) finishTaskOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FinishTaskOfflineEvent value)? finishTaskOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FinishTaskOfflineEvent value)? finishTaskOffline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskActivityEventCopyWith<TaskActivityEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskActivityEventCopyWith<$Res> {
  factory $TaskActivityEventCopyWith(
          TaskActivityEvent value, $Res Function(TaskActivityEvent) then) =
      _$TaskActivityEventCopyWithImpl<$Res, TaskActivityEvent>;
  @useResult
  $Res call({TaskIvy taskIvy});

  $TaskIvyCopyWith<$Res> get taskIvy;
}

/// @nodoc
class _$TaskActivityEventCopyWithImpl<$Res, $Val extends TaskActivityEvent>
    implements $TaskActivityEventCopyWith<$Res> {
  _$TaskActivityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskIvy = null,
  }) {
    return _then(_value.copyWith(
      taskIvy: null == taskIvy
          ? _value.taskIvy
          : taskIvy // ignore: cast_nullable_to_non_nullable
              as TaskIvy,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskIvyCopyWith<$Res> get taskIvy {
    return $TaskIvyCopyWith<$Res>(_value.taskIvy, (value) {
      return _then(_value.copyWith(taskIvy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FinishTaskOfflineEventImplCopyWith<$Res>
    implements $TaskActivityEventCopyWith<$Res> {
  factory _$$FinishTaskOfflineEventImplCopyWith(
          _$FinishTaskOfflineEventImpl value,
          $Res Function(_$FinishTaskOfflineEventImpl) then) =
      __$$FinishTaskOfflineEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskIvy taskIvy});

  @override
  $TaskIvyCopyWith<$Res> get taskIvy;
}

/// @nodoc
class __$$FinishTaskOfflineEventImplCopyWithImpl<$Res>
    extends _$TaskActivityEventCopyWithImpl<$Res, _$FinishTaskOfflineEventImpl>
    implements _$$FinishTaskOfflineEventImplCopyWith<$Res> {
  __$$FinishTaskOfflineEventImplCopyWithImpl(
      _$FinishTaskOfflineEventImpl _value,
      $Res Function(_$FinishTaskOfflineEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskIvy = null,
  }) {
    return _then(_$FinishTaskOfflineEventImpl(
      null == taskIvy
          ? _value.taskIvy
          : taskIvy // ignore: cast_nullable_to_non_nullable
              as TaskIvy,
    ));
  }
}

/// @nodoc

class _$FinishTaskOfflineEventImpl implements _FinishTaskOfflineEvent {
  const _$FinishTaskOfflineEventImpl(this.taskIvy);

  @override
  final TaskIvy taskIvy;

  @override
  String toString() {
    return 'TaskActivityEvent.finishTaskOffline(taskIvy: $taskIvy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinishTaskOfflineEventImpl &&
            (identical(other.taskIvy, taskIvy) || other.taskIvy == taskIvy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskIvy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinishTaskOfflineEventImplCopyWith<_$FinishTaskOfflineEventImpl>
      get copyWith => __$$FinishTaskOfflineEventImplCopyWithImpl<
          _$FinishTaskOfflineEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskIvy taskIvy) finishTaskOffline,
  }) {
    return finishTaskOffline(taskIvy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskIvy taskIvy)? finishTaskOffline,
  }) {
    return finishTaskOffline?.call(taskIvy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskIvy taskIvy)? finishTaskOffline,
    required TResult orElse(),
  }) {
    if (finishTaskOffline != null) {
      return finishTaskOffline(taskIvy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FinishTaskOfflineEvent value) finishTaskOffline,
  }) {
    return finishTaskOffline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FinishTaskOfflineEvent value)? finishTaskOffline,
  }) {
    return finishTaskOffline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FinishTaskOfflineEvent value)? finishTaskOffline,
    required TResult orElse(),
  }) {
    if (finishTaskOffline != null) {
      return finishTaskOffline(this);
    }
    return orElse();
  }
}

abstract class _FinishTaskOfflineEvent implements TaskActivityEvent {
  const factory _FinishTaskOfflineEvent(final TaskIvy taskIvy) =
      _$FinishTaskOfflineEventImpl;

  @override
  TaskIvy get taskIvy;
  @override
  @JsonKey(ignore: true)
  _$$FinishTaskOfflineEventImplCopyWith<_$FinishTaskOfflineEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskActivityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isShowLoading) loading,
    required TResult Function(TaskIvy taskIvy) finishedTaskOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isShowLoading)? loading,
    TResult? Function(TaskIvy taskIvy)? finishedTaskOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isShowLoading)? loading,
    TResult Function(TaskIvy taskIvy)? finishedTaskOffline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(FinishedLoadingState value) loading,
    required TResult Function(FinishedTaskOffline value) finishedTaskOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FinishedLoadingState value)? loading,
    TResult? Function(FinishedTaskOffline value)? finishedTaskOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FinishedLoadingState value)? loading,
    TResult Function(FinishedTaskOffline value)? finishedTaskOffline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskActivityStateCopyWith<$Res> {
  factory $TaskActivityStateCopyWith(
          TaskActivityState value, $Res Function(TaskActivityState) then) =
      _$TaskActivityStateCopyWithImpl<$Res, TaskActivityState>;
}

/// @nodoc
class _$TaskActivityStateCopyWithImpl<$Res, $Val extends TaskActivityState>
    implements $TaskActivityStateCopyWith<$Res> {
  _$TaskActivityStateCopyWithImpl(this._value, this._then);

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
    extends _$TaskActivityStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TaskActivityState.initial()';
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
    required TResult Function(bool isShowLoading) loading,
    required TResult Function(TaskIvy taskIvy) finishedTaskOffline,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isShowLoading)? loading,
    TResult? Function(TaskIvy taskIvy)? finishedTaskOffline,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isShowLoading)? loading,
    TResult Function(TaskIvy taskIvy)? finishedTaskOffline,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(FinishedLoadingState value) loading,
    required TResult Function(FinishedTaskOffline value) finishedTaskOffline,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FinishedLoadingState value)? loading,
    TResult? Function(FinishedTaskOffline value)? finishedTaskOffline,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FinishedLoadingState value)? loading,
    TResult Function(FinishedTaskOffline value)? finishedTaskOffline,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TaskActivityState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FinishedLoadingStateImplCopyWith<$Res> {
  factory _$$FinishedLoadingStateImplCopyWith(_$FinishedLoadingStateImpl value,
          $Res Function(_$FinishedLoadingStateImpl) then) =
      __$$FinishedLoadingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isShowLoading});
}

/// @nodoc
class __$$FinishedLoadingStateImplCopyWithImpl<$Res>
    extends _$TaskActivityStateCopyWithImpl<$Res, _$FinishedLoadingStateImpl>
    implements _$$FinishedLoadingStateImplCopyWith<$Res> {
  __$$FinishedLoadingStateImplCopyWithImpl(_$FinishedLoadingStateImpl _value,
      $Res Function(_$FinishedLoadingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowLoading = null,
  }) {
    return _then(_$FinishedLoadingStateImpl(
      null == isShowLoading
          ? _value.isShowLoading
          : isShowLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FinishedLoadingStateImpl implements FinishedLoadingState {
  const _$FinishedLoadingStateImpl(this.isShowLoading);

  @override
  final bool isShowLoading;

  @override
  String toString() {
    return 'TaskActivityState.loading(isShowLoading: $isShowLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinishedLoadingStateImpl &&
            (identical(other.isShowLoading, isShowLoading) ||
                other.isShowLoading == isShowLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isShowLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinishedLoadingStateImplCopyWith<_$FinishedLoadingStateImpl>
      get copyWith =>
          __$$FinishedLoadingStateImplCopyWithImpl<_$FinishedLoadingStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isShowLoading) loading,
    required TResult Function(TaskIvy taskIvy) finishedTaskOffline,
  }) {
    return loading(isShowLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isShowLoading)? loading,
    TResult? Function(TaskIvy taskIvy)? finishedTaskOffline,
  }) {
    return loading?.call(isShowLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isShowLoading)? loading,
    TResult Function(TaskIvy taskIvy)? finishedTaskOffline,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(FinishedLoadingState value) loading,
    required TResult Function(FinishedTaskOffline value) finishedTaskOffline,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FinishedLoadingState value)? loading,
    TResult? Function(FinishedTaskOffline value)? finishedTaskOffline,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FinishedLoadingState value)? loading,
    TResult Function(FinishedTaskOffline value)? finishedTaskOffline,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FinishedLoadingState implements TaskActivityState {
  const factory FinishedLoadingState(final bool isShowLoading) =
      _$FinishedLoadingStateImpl;

  bool get isShowLoading;
  @JsonKey(ignore: true)
  _$$FinishedLoadingStateImplCopyWith<_$FinishedLoadingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinishedTaskOfflineImplCopyWith<$Res> {
  factory _$$FinishedTaskOfflineImplCopyWith(_$FinishedTaskOfflineImpl value,
          $Res Function(_$FinishedTaskOfflineImpl) then) =
      __$$FinishedTaskOfflineImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskIvy taskIvy});

  $TaskIvyCopyWith<$Res> get taskIvy;
}

/// @nodoc
class __$$FinishedTaskOfflineImplCopyWithImpl<$Res>
    extends _$TaskActivityStateCopyWithImpl<$Res, _$FinishedTaskOfflineImpl>
    implements _$$FinishedTaskOfflineImplCopyWith<$Res> {
  __$$FinishedTaskOfflineImplCopyWithImpl(_$FinishedTaskOfflineImpl _value,
      $Res Function(_$FinishedTaskOfflineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskIvy = null,
  }) {
    return _then(_$FinishedTaskOfflineImpl(
      null == taskIvy
          ? _value.taskIvy
          : taskIvy // ignore: cast_nullable_to_non_nullable
              as TaskIvy,
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

class _$FinishedTaskOfflineImpl implements FinishedTaskOffline {
  const _$FinishedTaskOfflineImpl(this.taskIvy);

  @override
  final TaskIvy taskIvy;

  @override
  String toString() {
    return 'TaskActivityState.finishedTaskOffline(taskIvy: $taskIvy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinishedTaskOfflineImpl &&
            (identical(other.taskIvy, taskIvy) || other.taskIvy == taskIvy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskIvy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinishedTaskOfflineImplCopyWith<_$FinishedTaskOfflineImpl> get copyWith =>
      __$$FinishedTaskOfflineImplCopyWithImpl<_$FinishedTaskOfflineImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isShowLoading) loading,
    required TResult Function(TaskIvy taskIvy) finishedTaskOffline,
  }) {
    return finishedTaskOffline(taskIvy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isShowLoading)? loading,
    TResult? Function(TaskIvy taskIvy)? finishedTaskOffline,
  }) {
    return finishedTaskOffline?.call(taskIvy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isShowLoading)? loading,
    TResult Function(TaskIvy taskIvy)? finishedTaskOffline,
    required TResult orElse(),
  }) {
    if (finishedTaskOffline != null) {
      return finishedTaskOffline(taskIvy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(FinishedLoadingState value) loading,
    required TResult Function(FinishedTaskOffline value) finishedTaskOffline,
  }) {
    return finishedTaskOffline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FinishedLoadingState value)? loading,
    TResult? Function(FinishedTaskOffline value)? finishedTaskOffline,
  }) {
    return finishedTaskOffline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FinishedLoadingState value)? loading,
    TResult Function(FinishedTaskOffline value)? finishedTaskOffline,
    required TResult orElse(),
  }) {
    if (finishedTaskOffline != null) {
      return finishedTaskOffline(this);
    }
    return orElse();
  }
}

abstract class FinishedTaskOffline implements TaskActivityState {
  const factory FinishedTaskOffline(final TaskIvy taskIvy) =
      _$FinishedTaskOfflineImpl;

  TaskIvy get taskIvy;
  @JsonKey(ignore: true)
  _$$FinishedTaskOfflineImplCopyWith<_$FinishedTaskOfflineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
