// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'engine_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EngineInfo {
  String get version;
  String get engineName;
  String get minimumSupportedMobileAppVersion;

  /// Create a copy of EngineInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EngineInfoCopyWith<EngineInfo> get copyWith =>
      _$EngineInfoCopyWithImpl<EngineInfo>(this as EngineInfo, _$identity);

  /// Serializes this EngineInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EngineInfo &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.engineName, engineName) ||
                other.engineName == engineName) &&
            (identical(other.minimumSupportedMobileAppVersion,
                    minimumSupportedMobileAppVersion) ||
                other.minimumSupportedMobileAppVersion ==
                    minimumSupportedMobileAppVersion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, version, engineName, minimumSupportedMobileAppVersion);

  @override
  String toString() {
    return 'EngineInfo(version: $version, engineName: $engineName, minimumSupportedMobileAppVersion: $minimumSupportedMobileAppVersion)';
  }
}

/// @nodoc
abstract mixin class $EngineInfoCopyWith<$Res> {
  factory $EngineInfoCopyWith(
          EngineInfo value, $Res Function(EngineInfo) _then) =
      _$EngineInfoCopyWithImpl;
  @useResult
  $Res call(
      {String version,
      String engineName,
      String minimumSupportedMobileAppVersion});
}

/// @nodoc
class _$EngineInfoCopyWithImpl<$Res> implements $EngineInfoCopyWith<$Res> {
  _$EngineInfoCopyWithImpl(this._self, this._then);

  final EngineInfo _self;
  final $Res Function(EngineInfo) _then;

  /// Create a copy of EngineInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? engineName = null,
    Object? minimumSupportedMobileAppVersion = null,
  }) {
    return _then(_self.copyWith(
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      engineName: null == engineName
          ? _self.engineName
          : engineName // ignore: cast_nullable_to_non_nullable
              as String,
      minimumSupportedMobileAppVersion: null == minimumSupportedMobileAppVersion
          ? _self.minimumSupportedMobileAppVersion
          : minimumSupportedMobileAppVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [EngineInfo].
extension EngineInfoPatterns on EngineInfo {
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
    TResult Function(_EngineInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EngineInfo() when $default != null:
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
    TResult Function(_EngineInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EngineInfo():
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
    TResult? Function(_EngineInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EngineInfo() when $default != null:
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
    TResult Function(String version, String engineName,
            String minimumSupportedMobileAppVersion)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EngineInfo() when $default != null:
        return $default(_that.version, _that.engineName,
            _that.minimumSupportedMobileAppVersion);
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
    TResult Function(String version, String engineName,
            String minimumSupportedMobileAppVersion)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EngineInfo():
        return $default(_that.version, _that.engineName,
            _that.minimumSupportedMobileAppVersion);
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
    TResult? Function(String version, String engineName,
            String minimumSupportedMobileAppVersion)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EngineInfo() when $default != null:
        return $default(_that.version, _that.engineName,
            _that.minimumSupportedMobileAppVersion);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _EngineInfo implements EngineInfo {
  const _EngineInfo(
      {this.version = '',
      this.engineName = '',
      this.minimumSupportedMobileAppVersion = ''});
  factory _EngineInfo.fromJson(Map<String, dynamic> json) =>
      _$EngineInfoFromJson(json);

  @override
  @JsonKey()
  final String version;
  @override
  @JsonKey()
  final String engineName;
  @override
  @JsonKey()
  final String minimumSupportedMobileAppVersion;

  /// Create a copy of EngineInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EngineInfoCopyWith<_EngineInfo> get copyWith =>
      __$EngineInfoCopyWithImpl<_EngineInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EngineInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EngineInfo &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.engineName, engineName) ||
                other.engineName == engineName) &&
            (identical(other.minimumSupportedMobileAppVersion,
                    minimumSupportedMobileAppVersion) ||
                other.minimumSupportedMobileAppVersion ==
                    minimumSupportedMobileAppVersion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, version, engineName, minimumSupportedMobileAppVersion);

  @override
  String toString() {
    return 'EngineInfo(version: $version, engineName: $engineName, minimumSupportedMobileAppVersion: $minimumSupportedMobileAppVersion)';
  }
}

/// @nodoc
abstract mixin class _$EngineInfoCopyWith<$Res>
    implements $EngineInfoCopyWith<$Res> {
  factory _$EngineInfoCopyWith(
          _EngineInfo value, $Res Function(_EngineInfo) _then) =
      __$EngineInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String version,
      String engineName,
      String minimumSupportedMobileAppVersion});
}

/// @nodoc
class __$EngineInfoCopyWithImpl<$Res> implements _$EngineInfoCopyWith<$Res> {
  __$EngineInfoCopyWithImpl(this._self, this._then);

  final _EngineInfo _self;
  final $Res Function(_EngineInfo) _then;

  /// Create a copy of EngineInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? version = null,
    Object? engineName = null,
    Object? minimumSupportedMobileAppVersion = null,
  }) {
    return _then(_EngineInfo(
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      engineName: null == engineName
          ? _self.engineName
          : engineName // ignore: cast_nullable_to_non_nullable
              as String,
      minimumSupportedMobileAppVersion: null == minimumSupportedMobileAppVersion
          ? _self.minimumSupportedMobileAppVersion
          : minimumSupportedMobileAppVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
