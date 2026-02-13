// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TaskIvy {
  @HiveField(0)
  int get id;
  @HiveField(1)
  String get name;
  @HiveField(2)
  String get description;
  @HiveField(3)
  String get fullRequestPath;
  @HiveField(4)
  bool get offline;
  @HiveField(5)
  DateTime get startTimeStamp;
  @HiveField(6)
  DateTime? get expiryTimeStamp;
  @HiveField(7)
  int get priority;
  @HiveField(8)
  int get state;
  @HiveField(9)
  String get activatorName;
  @HiveField(10)
  String get category;
  @HiveField(11)
  CaseTask? get caseTask;
  @HiveField(12)
  Map<String, dynamic>? get doneTaskFormDataSerializedOffline;
  @HiveField(13)
  String? get submitUrlOffline;
  @HiveField(14)
  String? get formHTMLPageOffline;

  /// Create a copy of TaskIvy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TaskIvyCopyWith<TaskIvy> get copyWith =>
      _$TaskIvyCopyWithImpl<TaskIvy>(this as TaskIvy, _$identity);

  /// Serializes this TaskIvy to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TaskIvy &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.fullRequestPath, fullRequestPath) ||
                other.fullRequestPath == fullRequestPath) &&
            (identical(other.offline, offline) || other.offline == offline) &&
            (identical(other.startTimeStamp, startTimeStamp) ||
                other.startTimeStamp == startTimeStamp) &&
            (identical(other.expiryTimeStamp, expiryTimeStamp) ||
                other.expiryTimeStamp == expiryTimeStamp) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.activatorName, activatorName) ||
                other.activatorName == activatorName) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.caseTask, caseTask) ||
                other.caseTask == caseTask) &&
            const DeepCollectionEquality().equals(
                other.doneTaskFormDataSerializedOffline,
                doneTaskFormDataSerializedOffline) &&
            (identical(other.submitUrlOffline, submitUrlOffline) ||
                other.submitUrlOffline == submitUrlOffline) &&
            (identical(other.formHTMLPageOffline, formHTMLPageOffline) ||
                other.formHTMLPageOffline == formHTMLPageOffline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      fullRequestPath,
      offline,
      startTimeStamp,
      expiryTimeStamp,
      priority,
      state,
      activatorName,
      category,
      caseTask,
      const DeepCollectionEquality().hash(doneTaskFormDataSerializedOffline),
      submitUrlOffline,
      formHTMLPageOffline);

  @override
  String toString() {
    return 'TaskIvy(id: $id, name: $name, description: $description, fullRequestPath: $fullRequestPath, offline: $offline, startTimeStamp: $startTimeStamp, expiryTimeStamp: $expiryTimeStamp, priority: $priority, state: $state, activatorName: $activatorName, category: $category, caseTask: $caseTask, doneTaskFormDataSerializedOffline: $doneTaskFormDataSerializedOffline, submitUrlOffline: $submitUrlOffline, formHTMLPageOffline: $formHTMLPageOffline)';
  }
}

/// @nodoc
abstract mixin class $TaskIvyCopyWith<$Res> {
  factory $TaskIvyCopyWith(TaskIvy value, $Res Function(TaskIvy) _then) =
      _$TaskIvyCopyWithImpl;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(2) String description,
      @HiveField(3) String fullRequestPath,
      @HiveField(4) bool offline,
      @HiveField(5) DateTime startTimeStamp,
      @HiveField(6) DateTime? expiryTimeStamp,
      @HiveField(7) int priority,
      @HiveField(8) int state,
      @HiveField(9) String activatorName,
      @HiveField(10) String category,
      @HiveField(11) CaseTask? caseTask,
      @HiveField(12) Map<String, dynamic>? doneTaskFormDataSerializedOffline,
      @HiveField(13) String? submitUrlOffline,
      @HiveField(14) String? formHTMLPageOffline});

  $CaseTaskCopyWith<$Res>? get caseTask;
}

/// @nodoc
class _$TaskIvyCopyWithImpl<$Res> implements $TaskIvyCopyWith<$Res> {
  _$TaskIvyCopyWithImpl(this._self, this._then);

  final TaskIvy _self;
  final $Res Function(TaskIvy) _then;

  /// Create a copy of TaskIvy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? fullRequestPath = null,
    Object? offline = null,
    Object? startTimeStamp = null,
    Object? expiryTimeStamp = freezed,
    Object? priority = null,
    Object? state = null,
    Object? activatorName = null,
    Object? category = null,
    Object? caseTask = freezed,
    Object? doneTaskFormDataSerializedOffline = freezed,
    Object? submitUrlOffline = freezed,
    Object? formHTMLPageOffline = freezed,
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
      fullRequestPath: null == fullRequestPath
          ? _self.fullRequestPath
          : fullRequestPath // ignore: cast_nullable_to_non_nullable
              as String,
      offline: null == offline
          ? _self.offline
          : offline // ignore: cast_nullable_to_non_nullable
              as bool,
      startTimeStamp: null == startTimeStamp
          ? _self.startTimeStamp
          : startTimeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiryTimeStamp: freezed == expiryTimeStamp
          ? _self.expiryTimeStamp
          : expiryTimeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      priority: null == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as int,
      activatorName: null == activatorName
          ? _self.activatorName
          : activatorName // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      caseTask: freezed == caseTask
          ? _self.caseTask
          : caseTask // ignore: cast_nullable_to_non_nullable
              as CaseTask?,
      doneTaskFormDataSerializedOffline: freezed ==
              doneTaskFormDataSerializedOffline
          ? _self.doneTaskFormDataSerializedOffline
          : doneTaskFormDataSerializedOffline // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      submitUrlOffline: freezed == submitUrlOffline
          ? _self.submitUrlOffline
          : submitUrlOffline // ignore: cast_nullable_to_non_nullable
              as String?,
      formHTMLPageOffline: freezed == formHTMLPageOffline
          ? _self.formHTMLPageOffline
          : formHTMLPageOffline // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of TaskIvy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CaseTaskCopyWith<$Res>? get caseTask {
    if (_self.caseTask == null) {
      return null;
    }

    return $CaseTaskCopyWith<$Res>(_self.caseTask!, (value) {
      return _then(_self.copyWith(caseTask: value));
    });
  }
}

/// Adds pattern-matching-related methods to [TaskIvy].
extension TaskIvyPatterns on TaskIvy {
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
    TResult Function(_TaskIvy value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TaskIvy() when $default != null:
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
    TResult Function(_TaskIvy value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TaskIvy():
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
    TResult? Function(_TaskIvy value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TaskIvy() when $default != null:
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
            @HiveField(3) String fullRequestPath,
            @HiveField(4) bool offline,
            @HiveField(5) DateTime startTimeStamp,
            @HiveField(6) DateTime? expiryTimeStamp,
            @HiveField(7) int priority,
            @HiveField(8) int state,
            @HiveField(9) String activatorName,
            @HiveField(10) String category,
            @HiveField(11) CaseTask? caseTask,
            @HiveField(12)
            Map<String, dynamic>? doneTaskFormDataSerializedOffline,
            @HiveField(13) String? submitUrlOffline,
            @HiveField(14) String? formHTMLPageOffline)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TaskIvy() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.description,
            _that.fullRequestPath,
            _that.offline,
            _that.startTimeStamp,
            _that.expiryTimeStamp,
            _that.priority,
            _that.state,
            _that.activatorName,
            _that.category,
            _that.caseTask,
            _that.doneTaskFormDataSerializedOffline,
            _that.submitUrlOffline,
            _that.formHTMLPageOffline);
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
            @HiveField(3) String fullRequestPath,
            @HiveField(4) bool offline,
            @HiveField(5) DateTime startTimeStamp,
            @HiveField(6) DateTime? expiryTimeStamp,
            @HiveField(7) int priority,
            @HiveField(8) int state,
            @HiveField(9) String activatorName,
            @HiveField(10) String category,
            @HiveField(11) CaseTask? caseTask,
            @HiveField(12)
            Map<String, dynamic>? doneTaskFormDataSerializedOffline,
            @HiveField(13) String? submitUrlOffline,
            @HiveField(14) String? formHTMLPageOffline)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TaskIvy():
        return $default(
            _that.id,
            _that.name,
            _that.description,
            _that.fullRequestPath,
            _that.offline,
            _that.startTimeStamp,
            _that.expiryTimeStamp,
            _that.priority,
            _that.state,
            _that.activatorName,
            _that.category,
            _that.caseTask,
            _that.doneTaskFormDataSerializedOffline,
            _that.submitUrlOffline,
            _that.formHTMLPageOffline);
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
            @HiveField(3) String fullRequestPath,
            @HiveField(4) bool offline,
            @HiveField(5) DateTime startTimeStamp,
            @HiveField(6) DateTime? expiryTimeStamp,
            @HiveField(7) int priority,
            @HiveField(8) int state,
            @HiveField(9) String activatorName,
            @HiveField(10) String category,
            @HiveField(11) CaseTask? caseTask,
            @HiveField(12)
            Map<String, dynamic>? doneTaskFormDataSerializedOffline,
            @HiveField(13) String? submitUrlOffline,
            @HiveField(14) String? formHTMLPageOffline)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TaskIvy() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.description,
            _that.fullRequestPath,
            _that.offline,
            _that.startTimeStamp,
            _that.expiryTimeStamp,
            _that.priority,
            _that.state,
            _that.activatorName,
            _that.category,
            _that.caseTask,
            _that.doneTaskFormDataSerializedOffline,
            _that.submitUrlOffline,
            _that.formHTMLPageOffline);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TaskIvy extends TaskIvy {
  const _TaskIvy(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.description,
      @HiveField(3) required this.fullRequestPath,
      @HiveField(4) required this.offline,
      @HiveField(5) required this.startTimeStamp,
      @HiveField(6) this.expiryTimeStamp,
      @HiveField(7) required this.priority,
      @HiveField(8) required this.state,
      @HiveField(9) required this.activatorName,
      @HiveField(10) required this.category,
      @HiveField(11) this.caseTask,
      @HiveField(12)
      final Map<String, dynamic>? doneTaskFormDataSerializedOffline,
      @HiveField(13) this.submitUrlOffline,
      @HiveField(14) this.formHTMLPageOffline})
      : _doneTaskFormDataSerializedOffline = doneTaskFormDataSerializedOffline,
        super._();
  factory _TaskIvy.fromJson(Map<String, dynamic> json) =>
      _$TaskIvyFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final String description;
  @override
  @HiveField(3)
  final String fullRequestPath;
  @override
  @HiveField(4)
  final bool offline;
  @override
  @HiveField(5)
  final DateTime startTimeStamp;
  @override
  @HiveField(6)
  final DateTime? expiryTimeStamp;
  @override
  @HiveField(7)
  final int priority;
  @override
  @HiveField(8)
  final int state;
  @override
  @HiveField(9)
  final String activatorName;
  @override
  @HiveField(10)
  final String category;
  @override
  @HiveField(11)
  final CaseTask? caseTask;
  final Map<String, dynamic>? _doneTaskFormDataSerializedOffline;
  @override
  @HiveField(12)
  Map<String, dynamic>? get doneTaskFormDataSerializedOffline {
    final value = _doneTaskFormDataSerializedOffline;
    if (value == null) return null;
    if (_doneTaskFormDataSerializedOffline is EqualUnmodifiableMapView)
      return _doneTaskFormDataSerializedOffline;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @HiveField(13)
  final String? submitUrlOffline;
  @override
  @HiveField(14)
  final String? formHTMLPageOffline;

  /// Create a copy of TaskIvy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TaskIvyCopyWith<_TaskIvy> get copyWith =>
      __$TaskIvyCopyWithImpl<_TaskIvy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TaskIvyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskIvy &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.fullRequestPath, fullRequestPath) ||
                other.fullRequestPath == fullRequestPath) &&
            (identical(other.offline, offline) || other.offline == offline) &&
            (identical(other.startTimeStamp, startTimeStamp) ||
                other.startTimeStamp == startTimeStamp) &&
            (identical(other.expiryTimeStamp, expiryTimeStamp) ||
                other.expiryTimeStamp == expiryTimeStamp) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.activatorName, activatorName) ||
                other.activatorName == activatorName) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.caseTask, caseTask) ||
                other.caseTask == caseTask) &&
            const DeepCollectionEquality().equals(
                other._doneTaskFormDataSerializedOffline,
                _doneTaskFormDataSerializedOffline) &&
            (identical(other.submitUrlOffline, submitUrlOffline) ||
                other.submitUrlOffline == submitUrlOffline) &&
            (identical(other.formHTMLPageOffline, formHTMLPageOffline) ||
                other.formHTMLPageOffline == formHTMLPageOffline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      fullRequestPath,
      offline,
      startTimeStamp,
      expiryTimeStamp,
      priority,
      state,
      activatorName,
      category,
      caseTask,
      const DeepCollectionEquality().hash(_doneTaskFormDataSerializedOffline),
      submitUrlOffline,
      formHTMLPageOffline);

  @override
  String toString() {
    return 'TaskIvy(id: $id, name: $name, description: $description, fullRequestPath: $fullRequestPath, offline: $offline, startTimeStamp: $startTimeStamp, expiryTimeStamp: $expiryTimeStamp, priority: $priority, state: $state, activatorName: $activatorName, category: $category, caseTask: $caseTask, doneTaskFormDataSerializedOffline: $doneTaskFormDataSerializedOffline, submitUrlOffline: $submitUrlOffline, formHTMLPageOffline: $formHTMLPageOffline)';
  }
}

/// @nodoc
abstract mixin class _$TaskIvyCopyWith<$Res> implements $TaskIvyCopyWith<$Res> {
  factory _$TaskIvyCopyWith(_TaskIvy value, $Res Function(_TaskIvy) _then) =
      __$TaskIvyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(2) String description,
      @HiveField(3) String fullRequestPath,
      @HiveField(4) bool offline,
      @HiveField(5) DateTime startTimeStamp,
      @HiveField(6) DateTime? expiryTimeStamp,
      @HiveField(7) int priority,
      @HiveField(8) int state,
      @HiveField(9) String activatorName,
      @HiveField(10) String category,
      @HiveField(11) CaseTask? caseTask,
      @HiveField(12) Map<String, dynamic>? doneTaskFormDataSerializedOffline,
      @HiveField(13) String? submitUrlOffline,
      @HiveField(14) String? formHTMLPageOffline});

  @override
  $CaseTaskCopyWith<$Res>? get caseTask;
}

/// @nodoc
class __$TaskIvyCopyWithImpl<$Res> implements _$TaskIvyCopyWith<$Res> {
  __$TaskIvyCopyWithImpl(this._self, this._then);

  final _TaskIvy _self;
  final $Res Function(_TaskIvy) _then;

  /// Create a copy of TaskIvy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? fullRequestPath = null,
    Object? offline = null,
    Object? startTimeStamp = null,
    Object? expiryTimeStamp = freezed,
    Object? priority = null,
    Object? state = null,
    Object? activatorName = null,
    Object? category = null,
    Object? caseTask = freezed,
    Object? doneTaskFormDataSerializedOffline = freezed,
    Object? submitUrlOffline = freezed,
    Object? formHTMLPageOffline = freezed,
  }) {
    return _then(_TaskIvy(
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
      fullRequestPath: null == fullRequestPath
          ? _self.fullRequestPath
          : fullRequestPath // ignore: cast_nullable_to_non_nullable
              as String,
      offline: null == offline
          ? _self.offline
          : offline // ignore: cast_nullable_to_non_nullable
              as bool,
      startTimeStamp: null == startTimeStamp
          ? _self.startTimeStamp
          : startTimeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiryTimeStamp: freezed == expiryTimeStamp
          ? _self.expiryTimeStamp
          : expiryTimeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      priority: null == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as int,
      activatorName: null == activatorName
          ? _self.activatorName
          : activatorName // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      caseTask: freezed == caseTask
          ? _self.caseTask
          : caseTask // ignore: cast_nullable_to_non_nullable
              as CaseTask?,
      doneTaskFormDataSerializedOffline: freezed ==
              doneTaskFormDataSerializedOffline
          ? _self._doneTaskFormDataSerializedOffline
          : doneTaskFormDataSerializedOffline // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      submitUrlOffline: freezed == submitUrlOffline
          ? _self.submitUrlOffline
          : submitUrlOffline // ignore: cast_nullable_to_non_nullable
              as String?,
      formHTMLPageOffline: freezed == formHTMLPageOffline
          ? _self.formHTMLPageOffline
          : formHTMLPageOffline // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of TaskIvy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CaseTaskCopyWith<$Res>? get caseTask {
    if (_self.caseTask == null) {
      return null;
    }

    return $CaseTaskCopyWith<$Res>(_self.caseTask!, (value) {
      return _then(_self.copyWith(caseTask: value));
    });
  }
}

// dart format on
