// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toast_message_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ToastMessageState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ToastMessageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ToastMessageState()';
  }
}

/// @nodoc
class $ToastMessageStateCopyWith<$Res> {
  $ToastMessageStateCopyWith(
      ToastMessageState _, $Res Function(ToastMessageState) __);
}

/// Adds pattern-matching-related methods to [ToastMessageState].
extension ToastMessageStatePatterns on ToastMessageState {
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
    TResult Function(ShowToastMessageState value)? show,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial(_that);
      case ShowToastMessageState() when show != null:
        return show(_that);
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
    required TResult Function(ShowToastMessageState value) show,
  }) {
    final _that = this;
    switch (_that) {
      case Initial():
        return initial(_that);
      case ShowToastMessageState():
        return show(_that);
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
    TResult? Function(ShowToastMessageState value)? show,
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial(_that);
      case ShowToastMessageState() when show != null:
        return show(_that);
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
    TResult Function(int currentTime, String taskName)? show,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial();
      case ShowToastMessageState() when show != null:
        return show(_that.currentTime, _that.taskName);
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
    required TResult Function(int currentTime, String taskName) show,
  }) {
    final _that = this;
    switch (_that) {
      case Initial():
        return initial();
      case ShowToastMessageState():
        return show(_that.currentTime, _that.taskName);
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
    TResult? Function(int currentTime, String taskName)? show,
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial();
      case ShowToastMessageState() when show != null:
        return show(_that.currentTime, _that.taskName);
      case _:
        return null;
    }
  }
}

/// @nodoc

class Initial implements ToastMessageState {
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
    return 'ToastMessageState.initial()';
  }
}

/// @nodoc

class ShowToastMessageState implements ToastMessageState {
  const ShowToastMessageState(this.currentTime, this.taskName);

  final int currentTime;
  final String taskName;

  /// Create a copy of ToastMessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShowToastMessageStateCopyWith<ShowToastMessageState> get copyWith =>
      _$ShowToastMessageStateCopyWithImpl<ShowToastMessageState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowToastMessageState &&
            (identical(other.currentTime, currentTime) ||
                other.currentTime == currentTime) &&
            (identical(other.taskName, taskName) ||
                other.taskName == taskName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentTime, taskName);

  @override
  String toString() {
    return 'ToastMessageState.show(currentTime: $currentTime, taskName: $taskName)';
  }
}

/// @nodoc
abstract mixin class $ShowToastMessageStateCopyWith<$Res>
    implements $ToastMessageStateCopyWith<$Res> {
  factory $ShowToastMessageStateCopyWith(ShowToastMessageState value,
          $Res Function(ShowToastMessageState) _then) =
      _$ShowToastMessageStateCopyWithImpl;
  @useResult
  $Res call({int currentTime, String taskName});
}

/// @nodoc
class _$ShowToastMessageStateCopyWithImpl<$Res>
    implements $ShowToastMessageStateCopyWith<$Res> {
  _$ShowToastMessageStateCopyWithImpl(this._self, this._then);

  final ShowToastMessageState _self;
  final $Res Function(ShowToastMessageState) _then;

  /// Create a copy of ToastMessageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentTime = null,
    Object? taskName = null,
  }) {
    return _then(ShowToastMessageState(
      null == currentTime
          ? _self.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as int,
      null == taskName
          ? _self.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
