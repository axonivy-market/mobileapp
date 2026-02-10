// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ThemeEvent {
  ThemeData get themeData;

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThemeEventCopyWith<ThemeEvent> get copyWith =>
      _$ThemeEventCopyWithImpl<ThemeEvent>(this as ThemeEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeEvent &&
            (identical(other.themeData, themeData) ||
                other.themeData == themeData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeData);

  @override
  String toString() {
    return 'ThemeEvent(themeData: $themeData)';
  }
}

/// @nodoc
abstract mixin class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) _then) =
      _$ThemeEventCopyWithImpl;
  @useResult
  $Res call({ThemeData themeData});
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res> implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._self, this._then);

  final ThemeEvent _self;
  final $Res Function(ThemeEvent) _then;

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeData = null,
  }) {
    return _then(_self.copyWith(
      themeData: null == themeData
          ? _self.themeData
          : themeData // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ));
  }
}

/// Adds pattern-matching-related methods to [ThemeEvent].
extension ThemeEventPatterns on ThemeEvent {
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
    TResult Function(ChangeTheme value)? changeTheme,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ChangeTheme() when changeTheme != null:
        return changeTheme(_that);
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
    required TResult Function(ChangeTheme value) changeTheme,
  }) {
    final _that = this;
    switch (_that) {
      case ChangeTheme():
        return changeTheme(_that);
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
    TResult? Function(ChangeTheme value)? changeTheme,
  }) {
    final _that = this;
    switch (_that) {
      case ChangeTheme() when changeTheme != null:
        return changeTheme(_that);
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
    TResult Function(ThemeData themeData)? changeTheme,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ChangeTheme() when changeTheme != null:
        return changeTheme(_that.themeData);
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
    required TResult Function(ThemeData themeData) changeTheme,
  }) {
    final _that = this;
    switch (_that) {
      case ChangeTheme():
        return changeTheme(_that.themeData);
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
    TResult? Function(ThemeData themeData)? changeTheme,
  }) {
    final _that = this;
    switch (_that) {
      case ChangeTheme() when changeTheme != null:
        return changeTheme(_that.themeData);
      case _:
        return null;
    }
  }
}

/// @nodoc

class ChangeTheme implements ThemeEvent {
  const ChangeTheme(this.themeData);

  @override
  final ThemeData themeData;

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChangeThemeCopyWith<ChangeTheme> get copyWith =>
      _$ChangeThemeCopyWithImpl<ChangeTheme>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeTheme &&
            (identical(other.themeData, themeData) ||
                other.themeData == themeData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeData);

  @override
  String toString() {
    return 'ThemeEvent.changeTheme(themeData: $themeData)';
  }
}

/// @nodoc
abstract mixin class $ChangeThemeCopyWith<$Res>
    implements $ThemeEventCopyWith<$Res> {
  factory $ChangeThemeCopyWith(
          ChangeTheme value, $Res Function(ChangeTheme) _then) =
      _$ChangeThemeCopyWithImpl;
  @override
  @useResult
  $Res call({ThemeData themeData});
}

/// @nodoc
class _$ChangeThemeCopyWithImpl<$Res> implements $ChangeThemeCopyWith<$Res> {
  _$ChangeThemeCopyWithImpl(this._self, this._then);

  final ChangeTheme _self;
  final $Res Function(ChangeTheme) _then;

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? themeData = null,
  }) {
    return _then(ChangeTheme(
      null == themeData
          ? _self.themeData
          : themeData // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ));
  }
}

// dart format on
