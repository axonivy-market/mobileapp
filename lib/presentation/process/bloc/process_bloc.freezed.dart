// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'process_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProcessEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProcess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProcess value) getProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProcess value)? getProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProcess value)? getProcess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcessEventCopyWith<$Res> {
  factory $ProcessEventCopyWith(
          ProcessEvent value, $Res Function(ProcessEvent) then) =
      _$ProcessEventCopyWithImpl<$Res, ProcessEvent>;
}

/// @nodoc
class _$ProcessEventCopyWithImpl<$Res, $Val extends ProcessEvent>
    implements $ProcessEventCopyWith<$Res> {
  _$ProcessEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetProcessImplCopyWith<$Res> {
  factory _$$GetProcessImplCopyWith(
          _$GetProcessImpl value, $Res Function(_$GetProcessImpl) then) =
      __$$GetProcessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProcessImplCopyWithImpl<$Res>
    extends _$ProcessEventCopyWithImpl<$Res, _$GetProcessImpl>
    implements _$$GetProcessImplCopyWith<$Res> {
  __$$GetProcessImplCopyWithImpl(
      _$GetProcessImpl _value, $Res Function(_$GetProcessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProcessImpl with DiagnosticableTreeMixin implements _GetProcess {
  const _$GetProcessImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProcessEvent.getProcess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProcessEvent.getProcess'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProcessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProcess,
  }) {
    return getProcess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProcess,
  }) {
    return getProcess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProcess,
    required TResult orElse(),
  }) {
    if (getProcess != null) {
      return getProcess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProcess value) getProcess,
  }) {
    return getProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProcess value)? getProcess,
  }) {
    return getProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProcess value)? getProcess,
    required TResult orElse(),
  }) {
    if (getProcess != null) {
      return getProcess(this);
    }
    return orElse();
  }
}

abstract class _GetProcess implements ProcessEvent {
  const factory _GetProcess() = _$GetProcessImpl;
}

/// @nodoc
mixin _$ProcessState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isShowLoading) loading,
    required TResult Function(String error) error,
    required TResult Function(List<Process> processes) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isShowLoading)? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Process> processes)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isShowLoading)? loading,
    TResult Function(String error)? error,
    TResult Function(List<Process> processes)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProcessLoadingState value) loading,
    required TResult Function(ProcessErrorState value) error,
    required TResult Function(ProcessSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessLoadingState value)? loading,
    TResult? Function(ProcessErrorState value)? error,
    TResult? Function(ProcessSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessLoadingState value)? loading,
    TResult Function(ProcessErrorState value)? error,
    TResult Function(ProcessSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcessStateCopyWith<$Res> {
  factory $ProcessStateCopyWith(
          ProcessState value, $Res Function(ProcessState) then) =
      _$ProcessStateCopyWithImpl<$Res, ProcessState>;
}

/// @nodoc
class _$ProcessStateCopyWithImpl<$Res, $Val extends ProcessState>
    implements $ProcessStateCopyWith<$Res> {
  _$ProcessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProcessLoadingStateImplCopyWith<$Res> {
  factory _$$ProcessLoadingStateImplCopyWith(_$ProcessLoadingStateImpl value,
          $Res Function(_$ProcessLoadingStateImpl) then) =
      __$$ProcessLoadingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isShowLoading});
}

/// @nodoc
class __$$ProcessLoadingStateImplCopyWithImpl<$Res>
    extends _$ProcessStateCopyWithImpl<$Res, _$ProcessLoadingStateImpl>
    implements _$$ProcessLoadingStateImplCopyWith<$Res> {
  __$$ProcessLoadingStateImplCopyWithImpl(_$ProcessLoadingStateImpl _value,
      $Res Function(_$ProcessLoadingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowLoading = null,
  }) {
    return _then(_$ProcessLoadingStateImpl(
      null == isShowLoading
          ? _value.isShowLoading
          : isShowLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProcessLoadingStateImpl
    with DiagnosticableTreeMixin
    implements ProcessLoadingState {
  const _$ProcessLoadingStateImpl(this.isShowLoading);

  @override
  final bool isShowLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProcessState.loading(isShowLoading: $isShowLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProcessState.loading'))
      ..add(DiagnosticsProperty('isShowLoading', isShowLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessLoadingStateImpl &&
            (identical(other.isShowLoading, isShowLoading) ||
                other.isShowLoading == isShowLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isShowLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessLoadingStateImplCopyWith<_$ProcessLoadingStateImpl> get copyWith =>
      __$$ProcessLoadingStateImplCopyWithImpl<_$ProcessLoadingStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isShowLoading) loading,
    required TResult Function(String error) error,
    required TResult Function(List<Process> processes) success,
  }) {
    return loading(isShowLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isShowLoading)? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Process> processes)? success,
  }) {
    return loading?.call(isShowLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isShowLoading)? loading,
    TResult Function(String error)? error,
    TResult Function(List<Process> processes)? success,
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
    required TResult Function(ProcessLoadingState value) loading,
    required TResult Function(ProcessErrorState value) error,
    required TResult Function(ProcessSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessLoadingState value)? loading,
    TResult? Function(ProcessErrorState value)? error,
    TResult? Function(ProcessSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessLoadingState value)? loading,
    TResult Function(ProcessErrorState value)? error,
    TResult Function(ProcessSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProcessLoadingState implements ProcessState {
  const factory ProcessLoadingState(final bool isShowLoading) =
      _$ProcessLoadingStateImpl;

  bool get isShowLoading;
  @JsonKey(ignore: true)
  _$$ProcessLoadingStateImplCopyWith<_$ProcessLoadingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProcessErrorStateImplCopyWith<$Res> {
  factory _$$ProcessErrorStateImplCopyWith(_$ProcessErrorStateImpl value,
          $Res Function(_$ProcessErrorStateImpl) then) =
      __$$ProcessErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ProcessErrorStateImplCopyWithImpl<$Res>
    extends _$ProcessStateCopyWithImpl<$Res, _$ProcessErrorStateImpl>
    implements _$$ProcessErrorStateImplCopyWith<$Res> {
  __$$ProcessErrorStateImplCopyWithImpl(_$ProcessErrorStateImpl _value,
      $Res Function(_$ProcessErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ProcessErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProcessErrorStateImpl
    with DiagnosticableTreeMixin
    implements ProcessErrorState {
  const _$ProcessErrorStateImpl(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProcessState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProcessState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessErrorStateImplCopyWith<_$ProcessErrorStateImpl> get copyWith =>
      __$$ProcessErrorStateImplCopyWithImpl<_$ProcessErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isShowLoading) loading,
    required TResult Function(String error) error,
    required TResult Function(List<Process> processes) success,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isShowLoading)? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Process> processes)? success,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isShowLoading)? loading,
    TResult Function(String error)? error,
    TResult Function(List<Process> processes)? success,
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
    required TResult Function(ProcessLoadingState value) loading,
    required TResult Function(ProcessErrorState value) error,
    required TResult Function(ProcessSuccessState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessLoadingState value)? loading,
    TResult? Function(ProcessErrorState value)? error,
    TResult? Function(ProcessSuccessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessLoadingState value)? loading,
    TResult Function(ProcessErrorState value)? error,
    TResult Function(ProcessSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProcessErrorState implements ProcessState {
  const factory ProcessErrorState(final String error) = _$ProcessErrorStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ProcessErrorStateImplCopyWith<_$ProcessErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProcessSuccessStateImplCopyWith<$Res> {
  factory _$$ProcessSuccessStateImplCopyWith(_$ProcessSuccessStateImpl value,
          $Res Function(_$ProcessSuccessStateImpl) then) =
      __$$ProcessSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Process> processes});
}

/// @nodoc
class __$$ProcessSuccessStateImplCopyWithImpl<$Res>
    extends _$ProcessStateCopyWithImpl<$Res, _$ProcessSuccessStateImpl>
    implements _$$ProcessSuccessStateImplCopyWith<$Res> {
  __$$ProcessSuccessStateImplCopyWithImpl(_$ProcessSuccessStateImpl _value,
      $Res Function(_$ProcessSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processes = null,
  }) {
    return _then(_$ProcessSuccessStateImpl(
      null == processes
          ? _value._processes
          : processes // ignore: cast_nullable_to_non_nullable
              as List<Process>,
    ));
  }
}

/// @nodoc

class _$ProcessSuccessStateImpl
    with DiagnosticableTreeMixin
    implements ProcessSuccessState {
  const _$ProcessSuccessStateImpl(final List<Process> processes)
      : _processes = processes;

  final List<Process> _processes;
  @override
  List<Process> get processes {
    if (_processes is EqualUnmodifiableListView) return _processes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_processes);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProcessState.success(processes: $processes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProcessState.success'))
      ..add(DiagnosticsProperty('processes', processes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessSuccessStateImpl &&
            const DeepCollectionEquality()
                .equals(other._processes, _processes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_processes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessSuccessStateImplCopyWith<_$ProcessSuccessStateImpl> get copyWith =>
      __$$ProcessSuccessStateImplCopyWithImpl<_$ProcessSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isShowLoading) loading,
    required TResult Function(String error) error,
    required TResult Function(List<Process> processes) success,
  }) {
    return success(processes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isShowLoading)? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Process> processes)? success,
  }) {
    return success?.call(processes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isShowLoading)? loading,
    TResult Function(String error)? error,
    TResult Function(List<Process> processes)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(processes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProcessLoadingState value) loading,
    required TResult Function(ProcessErrorState value) error,
    required TResult Function(ProcessSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessLoadingState value)? loading,
    TResult? Function(ProcessErrorState value)? error,
    TResult? Function(ProcessSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessLoadingState value)? loading,
    TResult Function(ProcessErrorState value)? error,
    TResult Function(ProcessSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ProcessSuccessState implements ProcessState {
  const factory ProcessSuccessState(final List<Process> processes) =
      _$ProcessSuccessStateImpl;

  List<Process> get processes;
  @JsonKey(ignore: true)
  _$$ProcessSuccessStateImplCopyWith<_$ProcessSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
