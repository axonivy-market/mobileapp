// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QRModel _$QRModelFromJson(Map<String, dynamic> json) {
  return _QRModel.fromJson(json);
}

/// @nodoc
mixin _$QRModel {
  String get loginUrl => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QRModelCopyWith<QRModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QRModelCopyWith<$Res> {
  factory $QRModelCopyWith(QRModel value, $Res Function(QRModel) then) =
      _$QRModelCopyWithImpl<$Res, QRModel>;
  @useResult
  $Res call({String loginUrl, String username});
}

/// @nodoc
class _$QRModelCopyWithImpl<$Res, $Val extends QRModel>
    implements $QRModelCopyWith<$Res> {
  _$QRModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginUrl = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      loginUrl: null == loginUrl
          ? _value.loginUrl
          : loginUrl // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QRModelImplCopyWith<$Res> implements $QRModelCopyWith<$Res> {
  factory _$$QRModelImplCopyWith(
          _$QRModelImpl value, $Res Function(_$QRModelImpl) then) =
      __$$QRModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String loginUrl, String username});
}

/// @nodoc
class __$$QRModelImplCopyWithImpl<$Res>
    extends _$QRModelCopyWithImpl<$Res, _$QRModelImpl>
    implements _$$QRModelImplCopyWith<$Res> {
  __$$QRModelImplCopyWithImpl(
      _$QRModelImpl _value, $Res Function(_$QRModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginUrl = null,
    Object? username = null,
  }) {
    return _then(_$QRModelImpl(
      loginUrl: null == loginUrl
          ? _value.loginUrl
          : loginUrl // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QRModelImpl implements _QRModel {
  const _$QRModelImpl({this.loginUrl = "", this.username = ""});

  factory _$QRModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QRModelImplFromJson(json);

  @override
  @JsonKey()
  final String loginUrl;
  @override
  @JsonKey()
  final String username;

  @override
  String toString() {
    return 'QRModel(loginUrl: $loginUrl, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QRModelImpl &&
            (identical(other.loginUrl, loginUrl) ||
                other.loginUrl == loginUrl) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, loginUrl, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QRModelImplCopyWith<_$QRModelImpl> get copyWith =>
      __$$QRModelImplCopyWithImpl<_$QRModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QRModelImplToJson(
      this,
    );
  }
}

abstract class _QRModel implements QRModel {
  const factory _QRModel({final String loginUrl, final String username}) =
      _$QRModelImpl;

  factory _QRModel.fromJson(Map<String, dynamic> json) = _$QRModelImpl.fromJson;

  @override
  String get loginUrl;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$QRModelImplCopyWith<_$QRModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
