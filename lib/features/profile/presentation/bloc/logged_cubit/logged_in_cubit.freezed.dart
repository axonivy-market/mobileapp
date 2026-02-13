// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logged_in_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoggedInState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoggedInState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoggedInState()';
  }
}

/// @nodoc
class $LoggedInStateCopyWith<$Res> {
  $LoggedInStateCopyWith(LoggedInState _, $Res Function(LoggedInState) __);
}

/// Adds pattern-matching-related methods to [LoggedInState].
extension LoggedInStatePatterns on LoggedInState {
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
    TResult Function(LoggedInSuccessState value)? loggedIn,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial(_that);
      case LoggedInSuccessState() when loggedIn != null:
        return loggedIn(_that);
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
    required TResult Function(LoggedInSuccessState value) loggedIn,
  }) {
    final _that = this;
    switch (_that) {
      case Initial():
        return initial(_that);
      case LoggedInSuccessState():
        return loggedIn(_that);
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
    TResult? Function(LoggedInSuccessState value)? loggedIn,
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial(_that);
      case LoggedInSuccessState() when loggedIn != null:
        return loggedIn(_that);
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
    TResult Function(bool isLoggedIn)? loggedIn,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial();
      case LoggedInSuccessState() when loggedIn != null:
        return loggedIn(_that.isLoggedIn);
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
    required TResult Function(bool isLoggedIn) loggedIn,
  }) {
    final _that = this;
    switch (_that) {
      case Initial():
        return initial();
      case LoggedInSuccessState():
        return loggedIn(_that.isLoggedIn);
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
    TResult? Function(bool isLoggedIn)? loggedIn,
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial();
      case LoggedInSuccessState() when loggedIn != null:
        return loggedIn(_that.isLoggedIn);
      case _:
        return null;
    }
  }
}

/// @nodoc

class Initial implements LoggedInState {
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
    return 'LoggedInState.initial()';
  }
}

/// @nodoc

class LoggedInSuccessState implements LoggedInState {
  const LoggedInSuccessState(this.isLoggedIn);

  final bool isLoggedIn;

  /// Create a copy of LoggedInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoggedInSuccessStateCopyWith<LoggedInSuccessState> get copyWith =>
      _$LoggedInSuccessStateCopyWithImpl<LoggedInSuccessState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoggedInSuccessState &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoggedIn);

  @override
  String toString() {
    return 'LoggedInState.loggedIn(isLoggedIn: $isLoggedIn)';
  }
}

/// @nodoc
abstract mixin class $LoggedInSuccessStateCopyWith<$Res>
    implements $LoggedInStateCopyWith<$Res> {
  factory $LoggedInSuccessStateCopyWith(LoggedInSuccessState value,
          $Res Function(LoggedInSuccessState) _then) =
      _$LoggedInSuccessStateCopyWithImpl;
  @useResult
  $Res call({bool isLoggedIn});
}

/// @nodoc
class _$LoggedInSuccessStateCopyWithImpl<$Res>
    implements $LoggedInSuccessStateCopyWith<$Res> {
  _$LoggedInSuccessStateCopyWithImpl(this._self, this._then);

  final LoggedInSuccessState _self;
  final $Res Function(LoggedInSuccessState) _then;

  /// Create a copy of LoggedInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoggedIn = null,
  }) {
    return _then(LoggedInSuccessState(
      null == isLoggedIn
          ? _self.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
