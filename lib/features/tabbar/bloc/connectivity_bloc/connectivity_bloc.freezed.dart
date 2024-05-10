// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connectivity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectivityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectedEvent,
    required TResult Function() notConnectedEvent,
    required TResult Function() fetchEngineInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectedEvent,
    TResult? Function()? notConnectedEvent,
    TResult? Function()? fetchEngineInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectedEvent,
    TResult Function()? notConnectedEvent,
    TResult Function()? fetchEngineInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectedEvent value) connectedEvent,
    required TResult Function(NotConnectedEvent value) notConnectedEvent,
    required TResult Function(FetchEngineInfoEvent value) fetchEngineInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectedEvent value)? connectedEvent,
    TResult? Function(NotConnectedEvent value)? notConnectedEvent,
    TResult? Function(FetchEngineInfoEvent value)? fetchEngineInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectedEvent value)? connectedEvent,
    TResult Function(NotConnectedEvent value)? notConnectedEvent,
    TResult Function(FetchEngineInfoEvent value)? fetchEngineInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityEventCopyWith<$Res> {
  factory $ConnectivityEventCopyWith(
          ConnectivityEvent value, $Res Function(ConnectivityEvent) then) =
      _$ConnectivityEventCopyWithImpl<$Res, ConnectivityEvent>;
}

/// @nodoc
class _$ConnectivityEventCopyWithImpl<$Res, $Val extends ConnectivityEvent>
    implements $ConnectivityEventCopyWith<$Res> {
  _$ConnectivityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ConnectedEventImplCopyWith<$Res> {
  factory _$$ConnectedEventImplCopyWith(_$ConnectedEventImpl value,
          $Res Function(_$ConnectedEventImpl) then) =
      __$$ConnectedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectedEventImplCopyWithImpl<$Res>
    extends _$ConnectivityEventCopyWithImpl<$Res, _$ConnectedEventImpl>
    implements _$$ConnectedEventImplCopyWith<$Res> {
  __$$ConnectedEventImplCopyWithImpl(
      _$ConnectedEventImpl _value, $Res Function(_$ConnectedEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectedEventImpl
    with DiagnosticableTreeMixin
    implements ConnectedEvent {
  const _$ConnectedEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityEvent.connectedEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ConnectivityEvent.connectedEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectedEvent,
    required TResult Function() notConnectedEvent,
    required TResult Function() fetchEngineInfo,
  }) {
    return connectedEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectedEvent,
    TResult? Function()? notConnectedEvent,
    TResult? Function()? fetchEngineInfo,
  }) {
    return connectedEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectedEvent,
    TResult Function()? notConnectedEvent,
    TResult Function()? fetchEngineInfo,
    required TResult orElse(),
  }) {
    if (connectedEvent != null) {
      return connectedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectedEvent value) connectedEvent,
    required TResult Function(NotConnectedEvent value) notConnectedEvent,
    required TResult Function(FetchEngineInfoEvent value) fetchEngineInfo,
  }) {
    return connectedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectedEvent value)? connectedEvent,
    TResult? Function(NotConnectedEvent value)? notConnectedEvent,
    TResult? Function(FetchEngineInfoEvent value)? fetchEngineInfo,
  }) {
    return connectedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectedEvent value)? connectedEvent,
    TResult Function(NotConnectedEvent value)? notConnectedEvent,
    TResult Function(FetchEngineInfoEvent value)? fetchEngineInfo,
    required TResult orElse(),
  }) {
    if (connectedEvent != null) {
      return connectedEvent(this);
    }
    return orElse();
  }
}

abstract class ConnectedEvent implements ConnectivityEvent {
  const factory ConnectedEvent() = _$ConnectedEventImpl;
}

/// @nodoc
abstract class _$$NotConnectedEventImplCopyWith<$Res> {
  factory _$$NotConnectedEventImplCopyWith(_$NotConnectedEventImpl value,
          $Res Function(_$NotConnectedEventImpl) then) =
      __$$NotConnectedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotConnectedEventImplCopyWithImpl<$Res>
    extends _$ConnectivityEventCopyWithImpl<$Res, _$NotConnectedEventImpl>
    implements _$$NotConnectedEventImplCopyWith<$Res> {
  __$$NotConnectedEventImplCopyWithImpl(_$NotConnectedEventImpl _value,
      $Res Function(_$NotConnectedEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotConnectedEventImpl
    with DiagnosticableTreeMixin
    implements NotConnectedEvent {
  const _$NotConnectedEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityEvent.notConnectedEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'ConnectivityEvent.notConnectedEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotConnectedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectedEvent,
    required TResult Function() notConnectedEvent,
    required TResult Function() fetchEngineInfo,
  }) {
    return notConnectedEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectedEvent,
    TResult? Function()? notConnectedEvent,
    TResult? Function()? fetchEngineInfo,
  }) {
    return notConnectedEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectedEvent,
    TResult Function()? notConnectedEvent,
    TResult Function()? fetchEngineInfo,
    required TResult orElse(),
  }) {
    if (notConnectedEvent != null) {
      return notConnectedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectedEvent value) connectedEvent,
    required TResult Function(NotConnectedEvent value) notConnectedEvent,
    required TResult Function(FetchEngineInfoEvent value) fetchEngineInfo,
  }) {
    return notConnectedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectedEvent value)? connectedEvent,
    TResult? Function(NotConnectedEvent value)? notConnectedEvent,
    TResult? Function(FetchEngineInfoEvent value)? fetchEngineInfo,
  }) {
    return notConnectedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectedEvent value)? connectedEvent,
    TResult Function(NotConnectedEvent value)? notConnectedEvent,
    TResult Function(FetchEngineInfoEvent value)? fetchEngineInfo,
    required TResult orElse(),
  }) {
    if (notConnectedEvent != null) {
      return notConnectedEvent(this);
    }
    return orElse();
  }
}

abstract class NotConnectedEvent implements ConnectivityEvent {
  const factory NotConnectedEvent() = _$NotConnectedEventImpl;
}

/// @nodoc
abstract class _$$FetchEngineInfoEventImplCopyWith<$Res> {
  factory _$$FetchEngineInfoEventImplCopyWith(_$FetchEngineInfoEventImpl value,
          $Res Function(_$FetchEngineInfoEventImpl) then) =
      __$$FetchEngineInfoEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchEngineInfoEventImplCopyWithImpl<$Res>
    extends _$ConnectivityEventCopyWithImpl<$Res, _$FetchEngineInfoEventImpl>
    implements _$$FetchEngineInfoEventImplCopyWith<$Res> {
  __$$FetchEngineInfoEventImplCopyWithImpl(_$FetchEngineInfoEventImpl _value,
      $Res Function(_$FetchEngineInfoEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchEngineInfoEventImpl
    with DiagnosticableTreeMixin
    implements FetchEngineInfoEvent {
  const _$FetchEngineInfoEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityEvent.fetchEngineInfo()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ConnectivityEvent.fetchEngineInfo'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchEngineInfoEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectedEvent,
    required TResult Function() notConnectedEvent,
    required TResult Function() fetchEngineInfo,
  }) {
    return fetchEngineInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectedEvent,
    TResult? Function()? notConnectedEvent,
    TResult? Function()? fetchEngineInfo,
  }) {
    return fetchEngineInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectedEvent,
    TResult Function()? notConnectedEvent,
    TResult Function()? fetchEngineInfo,
    required TResult orElse(),
  }) {
    if (fetchEngineInfo != null) {
      return fetchEngineInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectedEvent value) connectedEvent,
    required TResult Function(NotConnectedEvent value) notConnectedEvent,
    required TResult Function(FetchEngineInfoEvent value) fetchEngineInfo,
  }) {
    return fetchEngineInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectedEvent value)? connectedEvent,
    TResult? Function(NotConnectedEvent value)? notConnectedEvent,
    TResult? Function(FetchEngineInfoEvent value)? fetchEngineInfo,
  }) {
    return fetchEngineInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectedEvent value)? connectedEvent,
    TResult Function(NotConnectedEvent value)? notConnectedEvent,
    TResult Function(FetchEngineInfoEvent value)? fetchEngineInfo,
    required TResult orElse(),
  }) {
    if (fetchEngineInfo != null) {
      return fetchEngineInfo(this);
    }
    return orElse();
  }
}

abstract class FetchEngineInfoEvent implements ConnectivityEvent {
  const factory FetchEngineInfoEvent() = _$FetchEngineInfoEventImpl;
}

/// @nodoc
mixin _$ConnectivityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connectedState,
    required TResult Function() notConnectedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connectedState,
    TResult? Function()? notConnectedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connectedState,
    TResult Function()? notConnectedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ConnectedState value) connectedState,
    required TResult Function(NotConnectedState value) notConnectedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ConnectedState value)? connectedState,
    TResult? Function(NotConnectedState value)? notConnectedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ConnectedState value)? connectedState,
    TResult Function(NotConnectedState value)? notConnectedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityStateCopyWith<$Res> {
  factory $ConnectivityStateCopyWith(
          ConnectivityState value, $Res Function(ConnectivityState) then) =
      _$ConnectivityStateCopyWithImpl<$Res, ConnectivityState>;
}

/// @nodoc
class _$ConnectivityStateCopyWithImpl<$Res, $Val extends ConnectivityState>
    implements $ConnectivityStateCopyWith<$Res> {
  _$ConnectivityStateCopyWithImpl(this._value, this._then);

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
    extends _$ConnectivityStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialStateImpl with DiagnosticableTreeMixin implements InitialState {
  const _$InitialStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ConnectivityState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connectedState,
    required TResult Function() notConnectedState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connectedState,
    TResult? Function()? notConnectedState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connectedState,
    TResult Function()? notConnectedState,
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
    required TResult Function(ConnectedState value) connectedState,
    required TResult Function(NotConnectedState value) notConnectedState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ConnectedState value)? connectedState,
    TResult? Function(NotConnectedState value)? notConnectedState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ConnectedState value)? connectedState,
    TResult Function(NotConnectedState value)? notConnectedState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements ConnectivityState {
  const factory InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$ConnectedStateImplCopyWith<$Res> {
  factory _$$ConnectedStateImplCopyWith(_$ConnectedStateImpl value,
          $Res Function(_$ConnectedStateImpl) then) =
      __$$ConnectedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectedStateImplCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res, _$ConnectedStateImpl>
    implements _$$ConnectedStateImplCopyWith<$Res> {
  __$$ConnectedStateImplCopyWithImpl(
      _$ConnectedStateImpl _value, $Res Function(_$ConnectedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectedStateImpl
    with DiagnosticableTreeMixin
    implements ConnectedState {
  const _$ConnectedStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityState.connectedState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ConnectivityState.connectedState'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connectedState,
    required TResult Function() notConnectedState,
  }) {
    return connectedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connectedState,
    TResult? Function()? notConnectedState,
  }) {
    return connectedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connectedState,
    TResult Function()? notConnectedState,
    required TResult orElse(),
  }) {
    if (connectedState != null) {
      return connectedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ConnectedState value) connectedState,
    required TResult Function(NotConnectedState value) notConnectedState,
  }) {
    return connectedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ConnectedState value)? connectedState,
    TResult? Function(NotConnectedState value)? notConnectedState,
  }) {
    return connectedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ConnectedState value)? connectedState,
    TResult Function(NotConnectedState value)? notConnectedState,
    required TResult orElse(),
  }) {
    if (connectedState != null) {
      return connectedState(this);
    }
    return orElse();
  }
}

abstract class ConnectedState implements ConnectivityState {
  const factory ConnectedState() = _$ConnectedStateImpl;
}

/// @nodoc
abstract class _$$NotConnectedStateImplCopyWith<$Res> {
  factory _$$NotConnectedStateImplCopyWith(_$NotConnectedStateImpl value,
          $Res Function(_$NotConnectedStateImpl) then) =
      __$$NotConnectedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotConnectedStateImplCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res, _$NotConnectedStateImpl>
    implements _$$NotConnectedStateImplCopyWith<$Res> {
  __$$NotConnectedStateImplCopyWithImpl(_$NotConnectedStateImpl _value,
      $Res Function(_$NotConnectedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotConnectedStateImpl
    with DiagnosticableTreeMixin
    implements NotConnectedState {
  const _$NotConnectedStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityState.notConnectedState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'ConnectivityState.notConnectedState'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotConnectedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connectedState,
    required TResult Function() notConnectedState,
  }) {
    return notConnectedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connectedState,
    TResult? Function()? notConnectedState,
  }) {
    return notConnectedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connectedState,
    TResult Function()? notConnectedState,
    required TResult orElse(),
  }) {
    if (notConnectedState != null) {
      return notConnectedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ConnectedState value) connectedState,
    required TResult Function(NotConnectedState value) notConnectedState,
  }) {
    return notConnectedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ConnectedState value)? connectedState,
    TResult? Function(NotConnectedState value)? notConnectedState,
  }) {
    return notConnectedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ConnectedState value)? connectedState,
    TResult Function(NotConnectedState value)? notConnectedState,
    required TResult orElse(),
  }) {
    if (notConnectedState != null) {
      return notConnectedState(this);
    }
    return orElse();
  }
}

abstract class NotConnectedState implements ConnectivityState {
  const factory NotConnectedState() = _$NotConnectedStateImpl;
}
