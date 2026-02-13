// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'process_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProcessEvent implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'ProcessEvent'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProcessEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProcessEvent()';
  }
}

/// @nodoc
class $ProcessEventCopyWith<$Res> {
  $ProcessEventCopyWith(ProcessEvent _, $Res Function(ProcessEvent) __);
}

/// Adds pattern-matching-related methods to [ProcessEvent].
extension ProcessEventPatterns on ProcessEvent {
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
    TResult Function(GetProcess value)? getProcess,
    TResult Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetProcess() when getProcess != null:
        return getProcess(_that);
      case ShowOfflinePopupEvent() when showOfflinePopupEvent != null:
        return showOfflinePopupEvent(_that);
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
    required TResult Function(GetProcess value) getProcess,
    required TResult Function(ShowOfflinePopupEvent value)
        showOfflinePopupEvent,
  }) {
    final _that = this;
    switch (_that) {
      case GetProcess():
        return getProcess(_that);
      case ShowOfflinePopupEvent():
        return showOfflinePopupEvent(_that);
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
    TResult? Function(GetProcess value)? getProcess,
    TResult? Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
  }) {
    final _that = this;
    switch (_that) {
      case GetProcess() when getProcess != null:
        return getProcess(_that);
      case ShowOfflinePopupEvent() when showOfflinePopupEvent != null:
        return showOfflinePopupEvent(_that);
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
    TResult Function()? getProcess,
    TResult Function(bool isConnected)? showOfflinePopupEvent,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetProcess() when getProcess != null:
        return getProcess();
      case ShowOfflinePopupEvent() when showOfflinePopupEvent != null:
        return showOfflinePopupEvent(_that.isConnected);
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
    required TResult Function() getProcess,
    required TResult Function(bool isConnected) showOfflinePopupEvent,
  }) {
    final _that = this;
    switch (_that) {
      case GetProcess():
        return getProcess();
      case ShowOfflinePopupEvent():
        return showOfflinePopupEvent(_that.isConnected);
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
    TResult? Function()? getProcess,
    TResult? Function(bool isConnected)? showOfflinePopupEvent,
  }) {
    final _that = this;
    switch (_that) {
      case GetProcess() when getProcess != null:
        return getProcess();
      case ShowOfflinePopupEvent() when showOfflinePopupEvent != null:
        return showOfflinePopupEvent(_that.isConnected);
      case _:
        return null;
    }
  }
}

/// @nodoc

class GetProcess with DiagnosticableTreeMixin implements ProcessEvent {
  const GetProcess();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'ProcessEvent.getProcess'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetProcess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProcessEvent.getProcess()';
  }
}

/// @nodoc

class ShowOfflinePopupEvent
    with DiagnosticableTreeMixin
    implements ProcessEvent {
  const ShowOfflinePopupEvent(this.isConnected);

  final bool isConnected;

  /// Create a copy of ProcessEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShowOfflinePopupEventCopyWith<ShowOfflinePopupEvent> get copyWith =>
      _$ShowOfflinePopupEventCopyWithImpl<ShowOfflinePopupEvent>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ProcessEvent.showOfflinePopupEvent'))
      ..add(DiagnosticsProperty('isConnected', isConnected));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowOfflinePopupEvent &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProcessEvent.showOfflinePopupEvent(isConnected: $isConnected)';
  }
}

/// @nodoc
abstract mixin class $ShowOfflinePopupEventCopyWith<$Res>
    implements $ProcessEventCopyWith<$Res> {
  factory $ShowOfflinePopupEventCopyWith(ShowOfflinePopupEvent value,
          $Res Function(ShowOfflinePopupEvent) _then) =
      _$ShowOfflinePopupEventCopyWithImpl;
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class _$ShowOfflinePopupEventCopyWithImpl<$Res>
    implements $ShowOfflinePopupEventCopyWith<$Res> {
  _$ShowOfflinePopupEventCopyWithImpl(this._self, this._then);

  final ShowOfflinePopupEvent _self;
  final $Res Function(ShowOfflinePopupEvent) _then;

  /// Create a copy of ProcessEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isConnected = null,
  }) {
    return _then(ShowOfflinePopupEvent(
      null == isConnected
          ? _self.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$ProcessState implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'ProcessState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProcessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProcessState()';
  }
}

/// @nodoc
class $ProcessStateCopyWith<$Res> {
  $ProcessStateCopyWith(ProcessState _, $Res Function(ProcessState) __);
}

/// Adds pattern-matching-related methods to [ProcessState].
extension ProcessStatePatterns on ProcessState {
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
    TResult Function(ProcessLoadingState value)? loading,
    TResult Function(ProcessErrorState value)? error,
    TResult Function(ProcessSuccessState value)? success,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case InitialState() when initial != null:
        return initial(_that);
      case ProcessLoadingState() when loading != null:
        return loading(_that);
      case ProcessErrorState() when error != null:
        return error(_that);
      case ProcessSuccessState() when success != null:
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
    required TResult Function(InitialState value) initial,
    required TResult Function(ProcessLoadingState value) loading,
    required TResult Function(ProcessErrorState value) error,
    required TResult Function(ProcessSuccessState value) success,
  }) {
    final _that = this;
    switch (_that) {
      case InitialState():
        return initial(_that);
      case ProcessLoadingState():
        return loading(_that);
      case ProcessErrorState():
        return error(_that);
      case ProcessSuccessState():
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
    TResult? Function(InitialState value)? initial,
    TResult? Function(ProcessLoadingState value)? loading,
    TResult? Function(ProcessErrorState value)? error,
    TResult? Function(ProcessSuccessState value)? success,
  }) {
    final _that = this;
    switch (_that) {
      case InitialState() when initial != null:
        return initial(_that);
      case ProcessLoadingState() when loading != null:
        return loading(_that);
      case ProcessErrorState() when error != null:
        return error(_that);
      case ProcessSuccessState() when success != null:
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
    TResult Function()? initial,
    TResult Function(bool isShowLoading)? loading,
    TResult Function(String error)? error,
    TResult Function(List<Process> processes, bool isOnline)? success,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case InitialState() when initial != null:
        return initial();
      case ProcessLoadingState() when loading != null:
        return loading(_that.isShowLoading);
      case ProcessErrorState() when error != null:
        return error(_that.error);
      case ProcessSuccessState() when success != null:
        return success(_that.processes, _that.isOnline);
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
    required TResult Function(bool isShowLoading) loading,
    required TResult Function(String error) error,
    required TResult Function(List<Process> processes, bool isOnline) success,
  }) {
    final _that = this;
    switch (_that) {
      case InitialState():
        return initial();
      case ProcessLoadingState():
        return loading(_that.isShowLoading);
      case ProcessErrorState():
        return error(_that.error);
      case ProcessSuccessState():
        return success(_that.processes, _that.isOnline);
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
    TResult? Function(bool isShowLoading)? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Process> processes, bool isOnline)? success,
  }) {
    final _that = this;
    switch (_that) {
      case InitialState() when initial != null:
        return initial();
      case ProcessLoadingState() when loading != null:
        return loading(_that.isShowLoading);
      case ProcessErrorState() when error != null:
        return error(_that.error);
      case ProcessSuccessState() when success != null:
        return success(_that.processes, _that.isOnline);
      case _:
        return null;
    }
  }
}

/// @nodoc

class InitialState with DiagnosticableTreeMixin implements ProcessState {
  const InitialState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'ProcessState.initial'));
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
    return 'ProcessState.initial()';
  }
}

/// @nodoc

class ProcessLoadingState with DiagnosticableTreeMixin implements ProcessState {
  const ProcessLoadingState(this.isShowLoading);

  final bool isShowLoading;

  /// Create a copy of ProcessState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProcessLoadingStateCopyWith<ProcessLoadingState> get copyWith =>
      _$ProcessLoadingStateCopyWithImpl<ProcessLoadingState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ProcessState.loading'))
      ..add(DiagnosticsProperty('isShowLoading', isShowLoading));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProcessLoadingState &&
            (identical(other.isShowLoading, isShowLoading) ||
                other.isShowLoading == isShowLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isShowLoading);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProcessState.loading(isShowLoading: $isShowLoading)';
  }
}

/// @nodoc
abstract mixin class $ProcessLoadingStateCopyWith<$Res>
    implements $ProcessStateCopyWith<$Res> {
  factory $ProcessLoadingStateCopyWith(
          ProcessLoadingState value, $Res Function(ProcessLoadingState) _then) =
      _$ProcessLoadingStateCopyWithImpl;
  @useResult
  $Res call({bool isShowLoading});
}

/// @nodoc
class _$ProcessLoadingStateCopyWithImpl<$Res>
    implements $ProcessLoadingStateCopyWith<$Res> {
  _$ProcessLoadingStateCopyWithImpl(this._self, this._then);

  final ProcessLoadingState _self;
  final $Res Function(ProcessLoadingState) _then;

  /// Create a copy of ProcessState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isShowLoading = null,
  }) {
    return _then(ProcessLoadingState(
      null == isShowLoading
          ? _self.isShowLoading
          : isShowLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class ProcessErrorState with DiagnosticableTreeMixin implements ProcessState {
  const ProcessErrorState(this.error);

  final String error;

  /// Create a copy of ProcessState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProcessErrorStateCopyWith<ProcessErrorState> get copyWith =>
      _$ProcessErrorStateCopyWithImpl<ProcessErrorState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ProcessState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProcessErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProcessState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $ProcessErrorStateCopyWith<$Res>
    implements $ProcessStateCopyWith<$Res> {
  factory $ProcessErrorStateCopyWith(
          ProcessErrorState value, $Res Function(ProcessErrorState) _then) =
      _$ProcessErrorStateCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ProcessErrorStateCopyWithImpl<$Res>
    implements $ProcessErrorStateCopyWith<$Res> {
  _$ProcessErrorStateCopyWithImpl(this._self, this._then);

  final ProcessErrorState _self;
  final $Res Function(ProcessErrorState) _then;

  /// Create a copy of ProcessState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(ProcessErrorState(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ProcessSuccessState with DiagnosticableTreeMixin implements ProcessState {
  const ProcessSuccessState(
      {required final List<Process> processes, this.isOnline = true})
      : _processes = processes;

  final List<Process> _processes;
  List<Process> get processes {
    if (_processes is EqualUnmodifiableListView) return _processes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_processes);
  }

  @JsonKey()
  final bool isOnline;

  /// Create a copy of ProcessState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProcessSuccessStateCopyWith<ProcessSuccessState> get copyWith =>
      _$ProcessSuccessStateCopyWithImpl<ProcessSuccessState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ProcessState.success'))
      ..add(DiagnosticsProperty('processes', processes))
      ..add(DiagnosticsProperty('isOnline', isOnline));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProcessSuccessState &&
            const DeepCollectionEquality()
                .equals(other._processes, _processes) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_processes), isOnline);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProcessState.success(processes: $processes, isOnline: $isOnline)';
  }
}

/// @nodoc
abstract mixin class $ProcessSuccessStateCopyWith<$Res>
    implements $ProcessStateCopyWith<$Res> {
  factory $ProcessSuccessStateCopyWith(
          ProcessSuccessState value, $Res Function(ProcessSuccessState) _then) =
      _$ProcessSuccessStateCopyWithImpl;
  @useResult
  $Res call({List<Process> processes, bool isOnline});
}

/// @nodoc
class _$ProcessSuccessStateCopyWithImpl<$Res>
    implements $ProcessSuccessStateCopyWith<$Res> {
  _$ProcessSuccessStateCopyWithImpl(this._self, this._then);

  final ProcessSuccessState _self;
  final $Res Function(ProcessSuccessState) _then;

  /// Create a copy of ProcessState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? processes = null,
    Object? isOnline = null,
  }) {
    return _then(ProcessSuccessState(
      processes: null == processes
          ? _self._processes
          : processes // ignore: cast_nullable_to_non_nullable
              as List<Process>,
      isOnline: null == isOnline
          ? _self.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
