// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'engine_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EngineInfo _$EngineInfoFromJson(Map<String, dynamic> json) {
  return _EngineInfo.fromJson(json);
}

/// @nodoc
mixin _$EngineInfo {
  String get version => throw _privateConstructorUsedError;
  String get engineName => throw _privateConstructorUsedError;
  String get minimumSupportedMobileAppVersion =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EngineInfoCopyWith<EngineInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EngineInfoCopyWith<$Res> {
  factory $EngineInfoCopyWith(
          EngineInfo value, $Res Function(EngineInfo) then) =
      _$EngineInfoCopyWithImpl<$Res, EngineInfo>;
  @useResult
  $Res call(
      {String version,
      String engineName,
      String minimumSupportedMobileAppVersion});
}

/// @nodoc
class _$EngineInfoCopyWithImpl<$Res, $Val extends EngineInfo>
    implements $EngineInfoCopyWith<$Res> {
  _$EngineInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? engineName = null,
    Object? minimumSupportedMobileAppVersion = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      engineName: null == engineName
          ? _value.engineName
          : engineName // ignore: cast_nullable_to_non_nullable
              as String,
      minimumSupportedMobileAppVersion: null == minimumSupportedMobileAppVersion
          ? _value.minimumSupportedMobileAppVersion
          : minimumSupportedMobileAppVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EngineInfoImplCopyWith<$Res>
    implements $EngineInfoCopyWith<$Res> {
  factory _$$EngineInfoImplCopyWith(
          _$EngineInfoImpl value, $Res Function(_$EngineInfoImpl) then) =
      __$$EngineInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String version,
      String engineName,
      String minimumSupportedMobileAppVersion});
}

/// @nodoc
class __$$EngineInfoImplCopyWithImpl<$Res>
    extends _$EngineInfoCopyWithImpl<$Res, _$EngineInfoImpl>
    implements _$$EngineInfoImplCopyWith<$Res> {
  __$$EngineInfoImplCopyWithImpl(
      _$EngineInfoImpl _value, $Res Function(_$EngineInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? engineName = null,
    Object? minimumSupportedMobileAppVersion = null,
  }) {
    return _then(_$EngineInfoImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      engineName: null == engineName
          ? _value.engineName
          : engineName // ignore: cast_nullable_to_non_nullable
              as String,
      minimumSupportedMobileAppVersion: null == minimumSupportedMobileAppVersion
          ? _value.minimumSupportedMobileAppVersion
          : minimumSupportedMobileAppVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EngineInfoImpl implements _EngineInfo {
  const _$EngineInfoImpl(
      {this.version = '',
      this.engineName = '',
      this.minimumSupportedMobileAppVersion = ''});

  factory _$EngineInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EngineInfoImplFromJson(json);

  @override
  @JsonKey()
  final String version;
  @override
  @JsonKey()
  final String engineName;
  @override
  @JsonKey()
  final String minimumSupportedMobileAppVersion;

  @override
  String toString() {
    return 'EngineInfo(version: $version, engineName: $engineName, minimumSupportedMobileAppVersion: $minimumSupportedMobileAppVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EngineInfoImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.engineName, engineName) ||
                other.engineName == engineName) &&
            (identical(other.minimumSupportedMobileAppVersion,
                    minimumSupportedMobileAppVersion) ||
                other.minimumSupportedMobileAppVersion ==
                    minimumSupportedMobileAppVersion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, version, engineName, minimumSupportedMobileAppVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EngineInfoImplCopyWith<_$EngineInfoImpl> get copyWith =>
      __$$EngineInfoImplCopyWithImpl<_$EngineInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EngineInfoImplToJson(
      this,
    );
  }
}

abstract class _EngineInfo implements EngineInfo {
  const factory _EngineInfo(
      {final String version,
      final String engineName,
      final String minimumSupportedMobileAppVersion}) = _$EngineInfoImpl;

  factory _EngineInfo.fromJson(Map<String, dynamic> json) =
      _$EngineInfoImpl.fromJson;

  @override
  String get version;
  @override
  String get engineName;
  @override
  String get minimumSupportedMobileAppVersion;
  @override
  @JsonKey(ignore: true)
  _$$EngineInfoImplCopyWith<_$EngineInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
