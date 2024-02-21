// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DocumentResponse _$DocumentResponseFromJson(Map<String, dynamic> json) {
  return _DocumentResponse.fromJson(json);
}

/// @nodoc
mixin _$DocumentResponse {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  Document? get document => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentResponseCopyWith<DocumentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentResponseCopyWith<$Res> {
  factory $DocumentResponseCopyWith(
          DocumentResponse value, $Res Function(DocumentResponse) then) =
      _$DocumentResponseCopyWithImpl<$Res, DocumentResponse>;
  @useResult
  $Res call({int statusCode, String message, Document? document});

  $DocumentCopyWith<$Res>? get document;
}

/// @nodoc
class _$DocumentResponseCopyWithImpl<$Res, $Val extends DocumentResponse>
    implements $DocumentResponseCopyWith<$Res> {
  _$DocumentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? document = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      document: freezed == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<$Res>? get document {
    if (_value.document == null) {
      return null;
    }

    return $DocumentCopyWith<$Res>(_value.document!, (value) {
      return _then(_value.copyWith(document: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DocumentResponseImplCopyWith<$Res>
    implements $DocumentResponseCopyWith<$Res> {
  factory _$$DocumentResponseImplCopyWith(_$DocumentResponseImpl value,
          $Res Function(_$DocumentResponseImpl) then) =
      __$$DocumentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int statusCode, String message, Document? document});

  @override
  $DocumentCopyWith<$Res>? get document;
}

/// @nodoc
class __$$DocumentResponseImplCopyWithImpl<$Res>
    extends _$DocumentResponseCopyWithImpl<$Res, _$DocumentResponseImpl>
    implements _$$DocumentResponseImplCopyWith<$Res> {
  __$$DocumentResponseImplCopyWithImpl(_$DocumentResponseImpl _value,
      $Res Function(_$DocumentResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? document = freezed,
  }) {
    return _then(_$DocumentResponseImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      document: freezed == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentResponseImpl implements _DocumentResponse {
  const _$DocumentResponseImpl(
      {this.statusCode = 400, this.message = "", this.document = null});

  factory _$DocumentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentResponseImplFromJson(json);

  @override
  @JsonKey()
  final int statusCode;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final Document? document;

  @override
  String toString() {
    return 'DocumentResponse(statusCode: $statusCode, message: $message, document: $document)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentResponseImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.document, document) ||
                other.document == document));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message, document);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentResponseImplCopyWith<_$DocumentResponseImpl> get copyWith =>
      __$$DocumentResponseImplCopyWithImpl<_$DocumentResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentResponseImplToJson(
      this,
    );
  }
}

abstract class _DocumentResponse implements DocumentResponse {
  const factory _DocumentResponse(
      {final int statusCode,
      final String message,
      final Document? document}) = _$DocumentResponseImpl;

  factory _DocumentResponse.fromJson(Map<String, dynamic> json) =
      _$DocumentResponseImpl.fromJson;

  @override
  int get statusCode;
  @override
  String get message;
  @override
  Document? get document;
  @override
  @JsonKey(ignore: true)
  _$$DocumentResponseImplCopyWith<_$DocumentResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
