// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseDocument {
  String get message;
  int get statusCode;
  Document get document;

  /// Create a copy of ResponseDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseDocumentCopyWith<ResponseDocument> get copyWith =>
      _$ResponseDocumentCopyWithImpl<ResponseDocument>(
          this as ResponseDocument, _$identity);

  /// Serializes this ResponseDocument to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseDocument &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.document, document) ||
                other.document == document));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode, document);

  @override
  String toString() {
    return 'ResponseDocument(message: $message, statusCode: $statusCode, document: $document)';
  }
}

/// @nodoc
abstract mixin class $ResponseDocumentCopyWith<$Res> {
  factory $ResponseDocumentCopyWith(
          ResponseDocument value, $Res Function(ResponseDocument) _then) =
      _$ResponseDocumentCopyWithImpl;
  @useResult
  $Res call({String message, int statusCode, Document document});

  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class _$ResponseDocumentCopyWithImpl<$Res>
    implements $ResponseDocumentCopyWith<$Res> {
  _$ResponseDocumentCopyWithImpl(this._self, this._then);

  final ResponseDocument _self;
  final $Res Function(ResponseDocument) _then;

  /// Create a copy of ResponseDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
    Object? document = null,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _self.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      document: null == document
          ? _self.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
    ));
  }

  /// Create a copy of ResponseDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<$Res> get document {
    return $DocumentCopyWith<$Res>(_self.document, (value) {
      return _then(_self.copyWith(document: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ResponseDocument].
extension ResponseDocumentPatterns on ResponseDocument {
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
    TResult Function(_ResponseDocument value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseDocument() when $default != null:
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
    TResult Function(_ResponseDocument value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseDocument():
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
    TResult? Function(_ResponseDocument value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseDocument() when $default != null:
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
    TResult Function(String message, int statusCode, Document document)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseDocument() when $default != null:
        return $default(_that.message, _that.statusCode, _that.document);
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
    TResult Function(String message, int statusCode, Document document)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseDocument():
        return $default(_that.message, _that.statusCode, _that.document);
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
    TResult? Function(String message, int statusCode, Document document)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseDocument() when $default != null:
        return $default(_that.message, _that.statusCode, _that.document);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ResponseDocument implements ResponseDocument {
  const _ResponseDocument(
      {this.message = '',
      this.statusCode = 0,
      this.document = const Document(id: 0)});
  factory _ResponseDocument.fromJson(Map<String, dynamic> json) =>
      _$ResponseDocumentFromJson(json);

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final int statusCode;
  @override
  @JsonKey()
  final Document document;

  /// Create a copy of ResponseDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResponseDocumentCopyWith<_ResponseDocument> get copyWith =>
      __$ResponseDocumentCopyWithImpl<_ResponseDocument>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResponseDocumentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseDocument &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.document, document) ||
                other.document == document));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode, document);

  @override
  String toString() {
    return 'ResponseDocument(message: $message, statusCode: $statusCode, document: $document)';
  }
}

/// @nodoc
abstract mixin class _$ResponseDocumentCopyWith<$Res>
    implements $ResponseDocumentCopyWith<$Res> {
  factory _$ResponseDocumentCopyWith(
          _ResponseDocument value, $Res Function(_ResponseDocument) _then) =
      __$ResponseDocumentCopyWithImpl;
  @override
  @useResult
  $Res call({String message, int statusCode, Document document});

  @override
  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class __$ResponseDocumentCopyWithImpl<$Res>
    implements _$ResponseDocumentCopyWith<$Res> {
  __$ResponseDocumentCopyWithImpl(this._self, this._then);

  final _ResponseDocument _self;
  final $Res Function(_ResponseDocument) _then;

  /// Create a copy of ResponseDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? statusCode = null,
    Object? document = null,
  }) {
    return _then(_ResponseDocument(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _self.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      document: null == document
          ? _self.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
    ));
  }

  /// Create a copy of ResponseDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<$Res> get document {
    return $DocumentCopyWith<$Res>(_self.document, (value) {
      return _then(_self.copyWith(document: value));
    });
  }
}

// dart format on
