// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connectivity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConnectivityEvent implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'ConnectivityEvent'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ConnectivityEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityEvent()';
  }
}

/// @nodoc
class $ConnectivityEventCopyWith<$Res> {
  $ConnectivityEventCopyWith(
      ConnectivityEvent _, $Res Function(ConnectivityEvent) __);
}

/// Adds pattern-matching-related methods to [ConnectivityEvent].
extension ConnectivityEventPatterns on ConnectivityEvent {
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
    TResult Function(ConnectedEvent value)? connectedEvent,
    TResult Function(NotConnectedEvent value)? notConnectedEvent,
    TResult Function(FetchEngineInfoEvent value)? fetchEngineInfo,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ConnectedEvent() when connectedEvent != null:
        return connectedEvent(_that);
      case NotConnectedEvent() when notConnectedEvent != null:
        return notConnectedEvent(_that);
      case FetchEngineInfoEvent() when fetchEngineInfo != null:
        return fetchEngineInfo(_that);
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
    required TResult Function(ConnectedEvent value) connectedEvent,
    required TResult Function(NotConnectedEvent value) notConnectedEvent,
    required TResult Function(FetchEngineInfoEvent value) fetchEngineInfo,
  }) {
    final _that = this;
    switch (_that) {
      case ConnectedEvent():
        return connectedEvent(_that);
      case NotConnectedEvent():
        return notConnectedEvent(_that);
      case FetchEngineInfoEvent():
        return fetchEngineInfo(_that);
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
    TResult? Function(ConnectedEvent value)? connectedEvent,
    TResult? Function(NotConnectedEvent value)? notConnectedEvent,
    TResult? Function(FetchEngineInfoEvent value)? fetchEngineInfo,
  }) {
    final _that = this;
    switch (_that) {
      case ConnectedEvent() when connectedEvent != null:
        return connectedEvent(_that);
      case NotConnectedEvent() when notConnectedEvent != null:
        return notConnectedEvent(_that);
      case FetchEngineInfoEvent() when fetchEngineInfo != null:
        return fetchEngineInfo(_that);
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
    TResult Function()? connectedEvent,
    TResult Function()? notConnectedEvent,
    TResult Function()? fetchEngineInfo,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ConnectedEvent() when connectedEvent != null:
        return connectedEvent();
      case NotConnectedEvent() when notConnectedEvent != null:
        return notConnectedEvent();
      case FetchEngineInfoEvent() when fetchEngineInfo != null:
        return fetchEngineInfo();
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
    required TResult Function() connectedEvent,
    required TResult Function() notConnectedEvent,
    required TResult Function() fetchEngineInfo,
  }) {
    final _that = this;
    switch (_that) {
      case ConnectedEvent():
        return connectedEvent();
      case NotConnectedEvent():
        return notConnectedEvent();
      case FetchEngineInfoEvent():
        return fetchEngineInfo();
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
    TResult? Function()? connectedEvent,
    TResult? Function()? notConnectedEvent,
    TResult? Function()? fetchEngineInfo,
  }) {
    final _that = this;
    switch (_that) {
      case ConnectedEvent() when connectedEvent != null:
        return connectedEvent();
      case NotConnectedEvent() when notConnectedEvent != null:
        return notConnectedEvent();
      case FetchEngineInfoEvent() when fetchEngineInfo != null:
        return fetchEngineInfo();
      case _:
        return null;
    }
  }
}

/// @nodoc

class ConnectedEvent with DiagnosticableTreeMixin implements ConnectivityEvent {
  const ConnectedEvent();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ConnectivityEvent.connectedEvent'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ConnectedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityEvent.connectedEvent()';
  }
}

/// @nodoc

class NotConnectedEvent
    with DiagnosticableTreeMixin
    implements ConnectivityEvent {
  const NotConnectedEvent();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ConnectivityEvent.notConnectedEvent'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotConnectedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityEvent.notConnectedEvent()';
  }
}

/// @nodoc

class FetchEngineInfoEvent
    with DiagnosticableTreeMixin
    implements ConnectivityEvent {
  const FetchEngineInfoEvent();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ConnectivityEvent.fetchEngineInfo'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchEngineInfoEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityEvent.fetchEngineInfo()';
  }
}

/// @nodoc
mixin _$ConnectivityState implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'ConnectivityState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ConnectivityState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityState()';
  }
}

/// @nodoc
class $ConnectivityStateCopyWith<$Res> {
  $ConnectivityStateCopyWith(
      ConnectivityState _, $Res Function(ConnectivityState) __);
}

/// Adds pattern-matching-related methods to [ConnectivityState].
extension ConnectivityStatePatterns on ConnectivityState {
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
    TResult Function(InitialState value)? initial,
    TResult Function(ConnectedState value)? connectedState,
    TResult Function(NotConnectedState value)? notConnectedState,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case InitialState() when initial != null:
        return initial(_that);
      case ConnectedState() when connectedState != null:
        return connectedState(_that);
      case NotConnectedState() when notConnectedState != null:
        return notConnectedState(_that);
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
    required TResult Function(InitialState value) initial,
    required TResult Function(ConnectedState value) connectedState,
    required TResult Function(NotConnectedState value) notConnectedState,
  }) {
    final _that = this;
    switch (_that) {
      case InitialState():
        return initial(_that);
      case ConnectedState():
        return connectedState(_that);
      case NotConnectedState():
        return notConnectedState(_that);
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
    TResult? Function(InitialState value)? initial,
    TResult? Function(ConnectedState value)? connectedState,
    TResult? Function(NotConnectedState value)? notConnectedState,
  }) {
    final _that = this;
    switch (_that) {
      case InitialState() when initial != null:
        return initial(_that);
      case ConnectedState() when connectedState != null:
        return connectedState(_that);
      case NotConnectedState() when notConnectedState != null:
        return notConnectedState(_that);
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
    TResult Function()? connectedState,
    TResult Function()? notConnectedState,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case InitialState() when initial != null:
        return initial();
      case ConnectedState() when connectedState != null:
        return connectedState();
      case NotConnectedState() when notConnectedState != null:
        return notConnectedState();
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
    required TResult Function() connectedState,
    required TResult Function() notConnectedState,
  }) {
    final _that = this;
    switch (_that) {
      case InitialState():
        return initial();
      case ConnectedState():
        return connectedState();
      case NotConnectedState():
        return notConnectedState();
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
    TResult? Function()? connectedState,
    TResult? Function()? notConnectedState,
  }) {
    final _that = this;
    switch (_that) {
      case InitialState() when initial != null:
        return initial();
      case ConnectedState() when connectedState != null:
        return connectedState();
      case NotConnectedState() when notConnectedState != null:
        return notConnectedState();
      case _:
        return null;
    }
  }
}

/// @nodoc

class InitialState with DiagnosticableTreeMixin implements ConnectivityState {
  const InitialState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'ConnectivityState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityState.initial()';
  }
}

/// @nodoc

class ConnectedState with DiagnosticableTreeMixin implements ConnectivityState {
  const ConnectedState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ConnectivityState.connectedState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ConnectedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityState.connectedState()';
  }
}

/// @nodoc

class NotConnectedState
    with DiagnosticableTreeMixin
    implements ConnectivityState {
  const NotConnectedState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ConnectivityState.notConnectedState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotConnectedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityState.notConnectedState()';
  }
}

// dart format on
