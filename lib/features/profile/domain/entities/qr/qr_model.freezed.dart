// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QRModel {
  String get loginUrl;
  String get username;

  /// Create a copy of QRModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QRModelCopyWith<QRModel> get copyWith =>
      _$QRModelCopyWithImpl<QRModel>(this as QRModel, _$identity);

  /// Serializes this QRModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QRModel &&
            (identical(other.loginUrl, loginUrl) ||
                other.loginUrl == loginUrl) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, loginUrl, username);

  @override
  String toString() {
    return 'QRModel(loginUrl: $loginUrl, username: $username)';
  }
}

/// @nodoc
abstract mixin class $QRModelCopyWith<$Res> {
  factory $QRModelCopyWith(QRModel value, $Res Function(QRModel) _then) =
      _$QRModelCopyWithImpl;
  @useResult
  $Res call({String loginUrl, String username});
}

/// @nodoc
class _$QRModelCopyWithImpl<$Res> implements $QRModelCopyWith<$Res> {
  _$QRModelCopyWithImpl(this._self, this._then);

  final QRModel _self;
  final $Res Function(QRModel) _then;

  /// Create a copy of QRModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginUrl = null,
    Object? username = null,
  }) {
    return _then(_self.copyWith(
      loginUrl: null == loginUrl
          ? _self.loginUrl
          : loginUrl // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [QRModel].
extension QRModelPatterns on QRModel {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QRModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _QRModel() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_QRModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QRModel():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_QRModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QRModel() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String loginUrl, String username)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _QRModel() when $default != null:
        return $default(_that.loginUrl, _that.username);
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
  TResult when<TResult extends Object?>(
    TResult Function(String loginUrl, String username) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QRModel():
        return $default(_that.loginUrl, _that.username);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String loginUrl, String username)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QRModel() when $default != null:
        return $default(_that.loginUrl, _that.username);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _QRModel implements QRModel {
  const _QRModel({this.loginUrl = "", this.username = ""});
  factory _QRModel.fromJson(Map<String, dynamic> json) =>
      _$QRModelFromJson(json);

  @override
  @JsonKey()
  final String loginUrl;
  @override
  @JsonKey()
  final String username;

  /// Create a copy of QRModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QRModelCopyWith<_QRModel> get copyWith =>
      __$QRModelCopyWithImpl<_QRModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$QRModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QRModel &&
            (identical(other.loginUrl, loginUrl) ||
                other.loginUrl == loginUrl) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, loginUrl, username);

  @override
  String toString() {
    return 'QRModel(loginUrl: $loginUrl, username: $username)';
  }
}

/// @nodoc
abstract mixin class _$QRModelCopyWith<$Res> implements $QRModelCopyWith<$Res> {
  factory _$QRModelCopyWith(_QRModel value, $Res Function(_QRModel) _then) =
      __$QRModelCopyWithImpl;
  @override
  @useResult
  $Res call({String loginUrl, String username});
}

/// @nodoc
class __$QRModelCopyWithImpl<$Res> implements _$QRModelCopyWith<$Res> {
  __$QRModelCopyWithImpl(this._self, this._then);

  final _QRModel _self;
  final $Res Function(_QRModel) _then;

  /// Create a copy of QRModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? loginUrl = null,
    Object? username = null,
  }) {
    return _then(_QRModel(
      loginUrl: null == loginUrl
          ? _self.loginUrl
          : loginUrl // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
