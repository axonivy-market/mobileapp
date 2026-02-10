// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Document {
  @HiveField(0)
  int get id;
  @HiveField(1)
  String get name;
  @HiveField(2)
  String get url;
  @HiveField(3)
  String get path;
  @HiveField(4)
  int get fileLocalState;
  @HiveField(5)
  String get fileUploadPath;

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<Document> get copyWith =>
      _$DocumentCopyWithImpl<Document>(this as Document, _$identity);

  /// Serializes this Document to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Document &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.fileLocalState, fileLocalState) ||
                other.fileLocalState == fileLocalState) &&
            (identical(other.fileUploadPath, fileUploadPath) ||
                other.fileUploadPath == fileUploadPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, url, path, fileLocalState, fileUploadPath);

  @override
  String toString() {
    return 'Document(id: $id, name: $name, url: $url, path: $path, fileLocalState: $fileLocalState, fileUploadPath: $fileUploadPath)';
  }
}

/// @nodoc
abstract mixin class $DocumentCopyWith<$Res> {
  factory $DocumentCopyWith(Document value, $Res Function(Document) _then) =
      _$DocumentCopyWithImpl;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(2) String url,
      @HiveField(3) String path,
      @HiveField(4) int fileLocalState,
      @HiveField(5) String fileUploadPath});
}

/// @nodoc
class _$DocumentCopyWithImpl<$Res> implements $DocumentCopyWith<$Res> {
  _$DocumentCopyWithImpl(this._self, this._then);

  final Document _self;
  final $Res Function(Document) _then;

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? path = null,
    Object? fileLocalState = null,
    Object? fileUploadPath = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      fileLocalState: null == fileLocalState
          ? _self.fileLocalState
          : fileLocalState // ignore: cast_nullable_to_non_nullable
              as int,
      fileUploadPath: null == fileUploadPath
          ? _self.fileUploadPath
          : fileUploadPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Document].
extension DocumentPatterns on Document {
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
    TResult Function(_Document value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Document() when $default != null:
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
    TResult Function(_Document value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Document():
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
    TResult? Function(_Document value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Document() when $default != null:
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
            @HiveField(0) int id,
            @HiveField(1) String name,
            @HiveField(2) String url,
            @HiveField(3) String path,
            @HiveField(4) int fileLocalState,
            @HiveField(5) String fileUploadPath)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Document() when $default != null:
        return $default(_that.id, _that.name, _that.url, _that.path,
            _that.fileLocalState, _that.fileUploadPath);
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
            @HiveField(0) int id,
            @HiveField(1) String name,
            @HiveField(2) String url,
            @HiveField(3) String path,
            @HiveField(4) int fileLocalState,
            @HiveField(5) String fileUploadPath)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Document():
        return $default(_that.id, _that.name, _that.url, _that.path,
            _that.fileLocalState, _that.fileUploadPath);
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
            @HiveField(0) int id,
            @HiveField(1) String name,
            @HiveField(2) String url,
            @HiveField(3) String path,
            @HiveField(4) int fileLocalState,
            @HiveField(5) String fileUploadPath)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Document() when $default != null:
        return $default(_that.id, _that.name, _that.url, _that.path,
            _that.fileLocalState, _that.fileUploadPath);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Document implements Document {
  const _Document(
      {@HiveField(0) required this.id,
      @HiveField(1) this.name = "",
      @HiveField(2) this.url = "",
      @HiveField(3) this.path = "",
      @HiveField(4) this.fileLocalState = 0,
      @HiveField(5) this.fileUploadPath = ""});
  factory _Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @JsonKey()
  @HiveField(1)
  final String name;
  @override
  @JsonKey()
  @HiveField(2)
  final String url;
  @override
  @JsonKey()
  @HiveField(3)
  final String path;
  @override
  @JsonKey()
  @HiveField(4)
  final int fileLocalState;
  @override
  @JsonKey()
  @HiveField(5)
  final String fileUploadPath;

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DocumentCopyWith<_Document> get copyWith =>
      __$DocumentCopyWithImpl<_Document>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DocumentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Document &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.fileLocalState, fileLocalState) ||
                other.fileLocalState == fileLocalState) &&
            (identical(other.fileUploadPath, fileUploadPath) ||
                other.fileUploadPath == fileUploadPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, url, path, fileLocalState, fileUploadPath);

  @override
  String toString() {
    return 'Document(id: $id, name: $name, url: $url, path: $path, fileLocalState: $fileLocalState, fileUploadPath: $fileUploadPath)';
  }
}

/// @nodoc
abstract mixin class _$DocumentCopyWith<$Res>
    implements $DocumentCopyWith<$Res> {
  factory _$DocumentCopyWith(_Document value, $Res Function(_Document) _then) =
      __$DocumentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(2) String url,
      @HiveField(3) String path,
      @HiveField(4) int fileLocalState,
      @HiveField(5) String fileUploadPath});
}

/// @nodoc
class __$DocumentCopyWithImpl<$Res> implements _$DocumentCopyWith<$Res> {
  __$DocumentCopyWithImpl(this._self, this._then);

  final _Document _self;
  final $Res Function(_Document) _then;

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? path = null,
    Object? fileLocalState = null,
    Object? fileUploadPath = null,
  }) {
    return _then(_Document(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      fileLocalState: null == fileLocalState
          ? _self.fileLocalState
          : fileLocalState // ignore: cast_nullable_to_non_nullable
              as int,
      fileUploadPath: null == fileUploadPath
          ? _self.fileUploadPath
          : fileUploadPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
