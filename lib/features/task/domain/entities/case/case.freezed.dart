// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CaseTask {
  @HiveField(0)
  int get id;
  @HiveField(1)
  String get name;
  @HiveField(2)
  String get description;
  @HiveField(3)
  List<Document> get documents;

  /// Create a copy of CaseTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CaseTaskCopyWith<CaseTask> get copyWith =>
      _$CaseTaskCopyWithImpl<CaseTask>(this as CaseTask, _$identity);

  /// Serializes this CaseTask to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CaseTask &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.documents, documents));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description,
      const DeepCollectionEquality().hash(documents));

  @override
  String toString() {
    return 'CaseTask(id: $id, name: $name, description: $description, documents: $documents)';
  }
}

/// @nodoc
abstract mixin class $CaseTaskCopyWith<$Res> {
  factory $CaseTaskCopyWith(CaseTask value, $Res Function(CaseTask) _then) =
      _$CaseTaskCopyWithImpl;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(2) String description,
      @HiveField(3) List<Document> documents});
}

/// @nodoc
class _$CaseTaskCopyWithImpl<$Res> implements $CaseTaskCopyWith<$Res> {
  _$CaseTaskCopyWithImpl(this._self, this._then);

  final CaseTask _self;
  final $Res Function(CaseTask) _then;

  /// Create a copy of CaseTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? documents = null,
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
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      documents: null == documents
          ? _self.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
    ));
  }
}

/// Adds pattern-matching-related methods to [CaseTask].
extension CaseTaskPatterns on CaseTask {
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
    TResult Function(_CaseTask value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CaseTask() when $default != null:
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
    TResult Function(_CaseTask value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CaseTask():
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
    TResult? Function(_CaseTask value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CaseTask() when $default != null:
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
            @HiveField(2) String description,
            @HiveField(3) List<Document> documents)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CaseTask() when $default != null:
        return $default(
            _that.id, _that.name, _that.description, _that.documents);
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
            @HiveField(2) String description,
            @HiveField(3) List<Document> documents)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CaseTask():
        return $default(
            _that.id, _that.name, _that.description, _that.documents);
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
            @HiveField(2) String description,
            @HiveField(3) List<Document> documents)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CaseTask() when $default != null:
        return $default(
            _that.id, _that.name, _that.description, _that.documents);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CaseTask extends CaseTask {
  _CaseTask(
      {@HiveField(0) required this.id,
      @HiveField(1) this.name = '',
      @HiveField(2) this.description = '',
      @HiveField(3) final List<Document> documents = const []})
      : _documents = documents,
        super._();
  factory _CaseTask.fromJson(Map<String, dynamic> json) =>
      _$CaseTaskFromJson(json);

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
  final String description;
  final List<Document> _documents;
  @override
  @JsonKey()
  @HiveField(3)
  List<Document> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  /// Create a copy of CaseTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CaseTaskCopyWith<_CaseTask> get copyWith =>
      __$CaseTaskCopyWithImpl<_CaseTask>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CaseTaskToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CaseTask &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description,
      const DeepCollectionEquality().hash(_documents));

  @override
  String toString() {
    return 'CaseTask(id: $id, name: $name, description: $description, documents: $documents)';
  }
}

/// @nodoc
abstract mixin class _$CaseTaskCopyWith<$Res>
    implements $CaseTaskCopyWith<$Res> {
  factory _$CaseTaskCopyWith(_CaseTask value, $Res Function(_CaseTask) _then) =
      __$CaseTaskCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(2) String description,
      @HiveField(3) List<Document> documents});
}

/// @nodoc
class __$CaseTaskCopyWithImpl<$Res> implements _$CaseTaskCopyWith<$Res> {
  __$CaseTaskCopyWithImpl(this._self, this._then);

  final _CaseTask _self;
  final $Res Function(_CaseTask) _then;

  /// Create a copy of CaseTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? documents = null,
  }) {
    return _then(_CaseTask(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      documents: null == documents
          ? _self._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
    ));
  }
}

// dart format on
