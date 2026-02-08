// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'process.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Process {
  String get id;
  String get name;
  String get description;
  String get activatorName;
  String get fullRequestPath;
  List<CustomField> get customFields;

  /// Create a copy of Process
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProcessCopyWith<Process> get copyWith =>
      _$ProcessCopyWithImpl<Process>(this as Process, _$identity);

  /// Serializes this Process to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Process &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.activatorName, activatorName) ||
                other.activatorName == activatorName) &&
            (identical(other.fullRequestPath, fullRequestPath) ||
                other.fullRequestPath == fullRequestPath) &&
            const DeepCollectionEquality()
                .equals(other.customFields, customFields));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      activatorName,
      fullRequestPath,
      const DeepCollectionEquality().hash(customFields));

  @override
  String toString() {
    return 'Process(id: $id, name: $name, description: $description, activatorName: $activatorName, fullRequestPath: $fullRequestPath, customFields: $customFields)';
  }
}

/// @nodoc
abstract mixin class $ProcessCopyWith<$Res> {
  factory $ProcessCopyWith(Process value, $Res Function(Process) _then) =
      _$ProcessCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String activatorName,
      String fullRequestPath,
      List<CustomField> customFields});
}

/// @nodoc
class _$ProcessCopyWithImpl<$Res> implements $ProcessCopyWith<$Res> {
  _$ProcessCopyWithImpl(this._self, this._then);

  final Process _self;
  final $Res Function(Process) _then;

  /// Create a copy of Process
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? activatorName = null,
    Object? fullRequestPath = null,
    Object? customFields = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      activatorName: null == activatorName
          ? _self.activatorName
          : activatorName // ignore: cast_nullable_to_non_nullable
              as String,
      fullRequestPath: null == fullRequestPath
          ? _self.fullRequestPath
          : fullRequestPath // ignore: cast_nullable_to_non_nullable
              as String,
      customFields: null == customFields
          ? _self.customFields
          : customFields // ignore: cast_nullable_to_non_nullable
              as List<CustomField>,
    ));
  }
}

/// Adds pattern-matching-related methods to [Process].
extension ProcessPatterns on Process {
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
    TResult Function(_Process value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Process() when $default != null:
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
    TResult Function(_Process value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Process():
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
    TResult? Function(_Process value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Process() when $default != null:
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
            String id,
            String name,
            String description,
            String activatorName,
            String fullRequestPath,
            List<CustomField> customFields)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Process() when $default != null:
        return $default(_that.id, _that.name, _that.description,
            _that.activatorName, _that.fullRequestPath, _that.customFields);
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
            String id,
            String name,
            String description,
            String activatorName,
            String fullRequestPath,
            List<CustomField> customFields)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Process():
        return $default(_that.id, _that.name, _that.description,
            _that.activatorName, _that.fullRequestPath, _that.customFields);
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
            String id,
            String name,
            String description,
            String activatorName,
            String fullRequestPath,
            List<CustomField> customFields)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Process() when $default != null:
        return $default(_that.id, _that.name, _that.description,
            _that.activatorName, _that.fullRequestPath, _that.customFields);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Process implements Process {
  const _Process(
      {this.id = '',
      this.name = "",
      this.description = "",
      this.activatorName = "",
      this.fullRequestPath = "",
      final List<CustomField> customFields = const []})
      : _customFields = customFields;
  factory _Process.fromJson(Map<String, dynamic> json) =>
      _$ProcessFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String activatorName;
  @override
  @JsonKey()
  final String fullRequestPath;
  final List<CustomField> _customFields;
  @override
  @JsonKey()
  List<CustomField> get customFields {
    if (_customFields is EqualUnmodifiableListView) return _customFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customFields);
  }

  /// Create a copy of Process
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProcessCopyWith<_Process> get copyWith =>
      __$ProcessCopyWithImpl<_Process>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProcessToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Process &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.activatorName, activatorName) ||
                other.activatorName == activatorName) &&
            (identical(other.fullRequestPath, fullRequestPath) ||
                other.fullRequestPath == fullRequestPath) &&
            const DeepCollectionEquality()
                .equals(other._customFields, _customFields));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      activatorName,
      fullRequestPath,
      const DeepCollectionEquality().hash(_customFields));

  @override
  String toString() {
    return 'Process(id: $id, name: $name, description: $description, activatorName: $activatorName, fullRequestPath: $fullRequestPath, customFields: $customFields)';
  }
}

/// @nodoc
abstract mixin class _$ProcessCopyWith<$Res> implements $ProcessCopyWith<$Res> {
  factory _$ProcessCopyWith(_Process value, $Res Function(_Process) _then) =
      __$ProcessCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String activatorName,
      String fullRequestPath,
      List<CustomField> customFields});
}

/// @nodoc
class __$ProcessCopyWithImpl<$Res> implements _$ProcessCopyWith<$Res> {
  __$ProcessCopyWithImpl(this._self, this._then);

  final _Process _self;
  final $Res Function(_Process) _then;

  /// Create a copy of Process
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? activatorName = null,
    Object? fullRequestPath = null,
    Object? customFields = null,
  }) {
    return _then(_Process(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      activatorName: null == activatorName
          ? _self.activatorName
          : activatorName // ignore: cast_nullable_to_non_nullable
              as String,
      fullRequestPath: null == fullRequestPath
          ? _self.fullRequestPath
          : fullRequestPath // ignore: cast_nullable_to_non_nullable
              as String,
      customFields: null == customFields
          ? _self._customFields
          : customFields // ignore: cast_nullable_to_non_nullable
              as List<CustomField>,
    ));
  }
}

// dart format on
