// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Profile {
  String get uuid;
  String get name;
  String get fullName;
  String get emailAddress;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<Profile> get copyWith =>
      _$ProfileCopyWithImpl<Profile>(this as Profile, _$identity);

  /// Serializes this Profile to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Profile &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uuid, name, fullName, emailAddress);

  @override
  String toString() {
    return 'Profile(uuid: $uuid, name: $name, fullName: $fullName, emailAddress: $emailAddress)';
  }
}

/// @nodoc
abstract mixin class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) _then) =
      _$ProfileCopyWithImpl;
  @useResult
  $Res call({String uuid, String name, String fullName, String emailAddress});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._self, this._then);

  final Profile _self;
  final $Res Function(Profile) _then;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? fullName = null,
    Object? emailAddress = null,
  }) {
    return _then(_self.copyWith(
      uuid: null == uuid
          ? _self.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _self.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Profile].
extension ProfilePatterns on Profile {
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
    TResult Function(_Profile value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Profile() when $default != null:
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
    TResult Function(_Profile value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Profile():
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
    TResult? Function(_Profile value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Profile() when $default != null:
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
    TResult Function(
            String uuid, String name, String fullName, String emailAddress)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Profile() when $default != null:
        return $default(
            _that.uuid, _that.name, _that.fullName, _that.emailAddress);
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
    TResult Function(
            String uuid, String name, String fullName, String emailAddress)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Profile():
        return $default(
            _that.uuid, _that.name, _that.fullName, _that.emailAddress);
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
    TResult? Function(
            String uuid, String name, String fullName, String emailAddress)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Profile() when $default != null:
        return $default(
            _that.uuid, _that.name, _that.fullName, _that.emailAddress);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Profile implements Profile {
  const _Profile(
      {this.uuid = "",
      this.name = "",
      this.fullName = "",
      this.emailAddress = ""});
  factory _Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  @override
  @JsonKey()
  final String uuid;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String fullName;
  @override
  @JsonKey()
  final String emailAddress;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileCopyWith<_Profile> get copyWith =>
      __$ProfileCopyWithImpl<_Profile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProfileToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Profile &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uuid, name, fullName, emailAddress);

  @override
  String toString() {
    return 'Profile(uuid: $uuid, name: $name, fullName: $fullName, emailAddress: $emailAddress)';
  }
}

/// @nodoc
abstract mixin class _$ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$ProfileCopyWith(_Profile value, $Res Function(_Profile) _then) =
      __$ProfileCopyWithImpl;
  @override
  @useResult
  $Res call({String uuid, String name, String fullName, String emailAddress});
}

/// @nodoc
class __$ProfileCopyWithImpl<$Res> implements _$ProfileCopyWith<$Res> {
  __$ProfileCopyWithImpl(this._self, this._then);

  final _Profile _self;
  final $Res Function(_Profile) _then;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? fullName = null,
    Object? emailAddress = null,
  }) {
    return _then(_Profile(
      uuid: null == uuid
          ? _self.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _self.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
