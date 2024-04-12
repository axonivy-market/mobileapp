// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseDocument _$ResponseDocumentFromJson(Map<String, dynamic> json) {
  return _ResponseDocument.fromJson(json);
}

/// @nodoc
mixin _$ResponseDocument {
  String get message => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;
  Document get document => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDocumentCopyWith<ResponseDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDocumentCopyWith<$Res> {
  factory $ResponseDocumentCopyWith(
          ResponseDocument value, $Res Function(ResponseDocument) then) =
      _$ResponseDocumentCopyWithImpl<$Res, ResponseDocument>;
  @useResult
  $Res call({String message, int statusCode, Document document});

  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class _$ResponseDocumentCopyWithImpl<$Res, $Val extends ResponseDocument>
    implements $ResponseDocumentCopyWith<$Res> {
  _$ResponseDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
    Object? document = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<$Res> get document {
    return $DocumentCopyWith<$Res>(_value.document, (value) {
      return _then(_value.copyWith(document: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseDocumentImplCopyWith<$Res>
    implements $ResponseDocumentCopyWith<$Res> {
  factory _$$ResponseDocumentImplCopyWith(_$ResponseDocumentImpl value,
          $Res Function(_$ResponseDocumentImpl) then) =
      __$$ResponseDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int statusCode, Document document});

  @override
  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class __$$ResponseDocumentImplCopyWithImpl<$Res>
    extends _$ResponseDocumentCopyWithImpl<$Res, _$ResponseDocumentImpl>
    implements _$$ResponseDocumentImplCopyWith<$Res> {
  __$$ResponseDocumentImplCopyWithImpl(_$ResponseDocumentImpl _value,
      $Res Function(_$ResponseDocumentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
    Object? document = null,
  }) {
    return _then(_$ResponseDocumentImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDocumentImpl implements _ResponseDocument {
  const _$ResponseDocumentImpl(
      {this.message = '',
      this.statusCode = 0,
      this.document = const Document(id: 0)});

  factory _$ResponseDocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDocumentImplFromJson(json);

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final int statusCode;
  @override
  @JsonKey()
  final Document document;

  @override
  String toString() {
    return 'ResponseDocument(message: $message, statusCode: $statusCode, document: $document)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDocumentImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.document, document) ||
                other.document == document));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode, document);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseDocumentImplCopyWith<_$ResponseDocumentImpl> get copyWith =>
      __$$ResponseDocumentImplCopyWithImpl<_$ResponseDocumentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDocumentImplToJson(
      this,
    );
  }
}

abstract class _ResponseDocument implements ResponseDocument {
  const factory _ResponseDocument(
      {final String message,
      final int statusCode,
      final Document document}) = _$ResponseDocumentImpl;

  factory _ResponseDocument.fromJson(Map<String, dynamic> json) =
      _$ResponseDocumentImpl.fromJson;

  @override
  String get message;
  @override
  int get statusCode;
  @override
  Document get document;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDocumentImplCopyWith<_$ResponseDocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
