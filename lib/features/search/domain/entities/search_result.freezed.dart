// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
SearchResult _$SearchResultFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'sectionHeader':
      return SectionHeader.fromJson(json);
    case 'task':
      return TaskItem.fromJson(json);
    case 'process':
      return ProcessItem.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SearchResult',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SearchResult {
  /// Serializes this SearchResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SearchResult);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SearchResult()';
  }
}

/// @nodoc
class $SearchResultCopyWith<$Res> {
  $SearchResultCopyWith(SearchResult _, $Res Function(SearchResult) __);
}

/// Adds pattern-matching-related methods to [SearchResult].
extension SearchResultPatterns on SearchResult {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SectionHeader value)? sectionHeader,
    TResult Function(TaskItem value)? task,
    TResult Function(ProcessItem value)? process,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case SectionHeader() when sectionHeader != null:
        return sectionHeader(_that);
      case TaskItem() when task != null:
        return task(_that);
      case ProcessItem() when process != null:
        return process(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(SectionHeader value) sectionHeader,
    required TResult Function(TaskItem value) task,
    required TResult Function(ProcessItem value) process,
  }) {
    final _that = this;
    switch (_that) {
      case SectionHeader():
        return sectionHeader(_that);
      case TaskItem():
        return task(_that);
      case ProcessItem():
        return process(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SectionHeader value)? sectionHeader,
    TResult? Function(TaskItem value)? task,
    TResult? Function(ProcessItem value)? process,
  }) {
    final _that = this;
    switch (_that) {
      case SectionHeader() when sectionHeader != null:
        return sectionHeader(_that);
      case TaskItem() when task != null:
        return task(_that);
      case ProcessItem() when process != null:
        return process(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? sectionHeader,
    TResult Function(TaskIvy task)? task,
    TResult Function(Process process)? process,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case SectionHeader() when sectionHeader != null:
        return sectionHeader(_that.title);
      case TaskItem() when task != null:
        return task(_that.task);
      case ProcessItem() when process != null:
        return process(_that.process);
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
  TResult when<TResult extends Object?>({
    required TResult Function(String title) sectionHeader,
    required TResult Function(TaskIvy task) task,
    required TResult Function(Process process) process,
  }) {
    final _that = this;
    switch (_that) {
      case SectionHeader():
        return sectionHeader(_that.title);
      case TaskItem():
        return task(_that.task);
      case ProcessItem():
        return process(_that.process);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? sectionHeader,
    TResult? Function(TaskIvy task)? task,
    TResult? Function(Process process)? process,
  }) {
    final _that = this;
    switch (_that) {
      case SectionHeader() when sectionHeader != null:
        return sectionHeader(_that.title);
      case TaskItem() when task != null:
        return task(_that.task);
      case ProcessItem() when process != null:
        return process(_that.process);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class SectionHeader implements SearchResult {
  const SectionHeader(this.title, {final String? $type})
      : $type = $type ?? 'sectionHeader';
  factory SectionHeader.fromJson(Map<String, dynamic> json) =>
      _$SectionHeaderFromJson(json);

  final String title;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SectionHeaderCopyWith<SectionHeader> get copyWith =>
      _$SectionHeaderCopyWithImpl<SectionHeader>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SectionHeaderToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SectionHeader &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title);

  @override
  String toString() {
    return 'SearchResult.sectionHeader(title: $title)';
  }
}

/// @nodoc
abstract mixin class $SectionHeaderCopyWith<$Res>
    implements $SearchResultCopyWith<$Res> {
  factory $SectionHeaderCopyWith(
          SectionHeader value, $Res Function(SectionHeader) _then) =
      _$SectionHeaderCopyWithImpl;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$SectionHeaderCopyWithImpl<$Res>
    implements $SectionHeaderCopyWith<$Res> {
  _$SectionHeaderCopyWithImpl(this._self, this._then);

  final SectionHeader _self;
  final $Res Function(SectionHeader) _then;

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
  }) {
    return _then(SectionHeader(
      null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class TaskItem implements SearchResult {
  const TaskItem(this.task, {final String? $type}) : $type = $type ?? 'task';
  factory TaskItem.fromJson(Map<String, dynamic> json) =>
      _$TaskItemFromJson(json);

  final TaskIvy task;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TaskItemCopyWith<TaskItem> get copyWith =>
      _$TaskItemCopyWithImpl<TaskItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TaskItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TaskItem &&
            (identical(other.task, task) || other.task == task));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, task);

  @override
  String toString() {
    return 'SearchResult.task(task: $task)';
  }
}

/// @nodoc
abstract mixin class $TaskItemCopyWith<$Res>
    implements $SearchResultCopyWith<$Res> {
  factory $TaskItemCopyWith(TaskItem value, $Res Function(TaskItem) _then) =
      _$TaskItemCopyWithImpl;
  @useResult
  $Res call({TaskIvy task});

  $TaskIvyCopyWith<$Res> get task;
}

/// @nodoc
class _$TaskItemCopyWithImpl<$Res> implements $TaskItemCopyWith<$Res> {
  _$TaskItemCopyWithImpl(this._self, this._then);

  final TaskItem _self;
  final $Res Function(TaskItem) _then;

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? task = null,
  }) {
    return _then(TaskItem(
      null == task
          ? _self.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskIvy,
    ));
  }

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskIvyCopyWith<$Res> get task {
    return $TaskIvyCopyWith<$Res>(_self.task, (value) {
      return _then(_self.copyWith(task: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class ProcessItem implements SearchResult {
  ProcessItem(this.process, {final String? $type}) : $type = $type ?? 'process';
  factory ProcessItem.fromJson(Map<String, dynamic> json) =>
      _$ProcessItemFromJson(json);

  final Process process;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProcessItemCopyWith<ProcessItem> get copyWith =>
      _$ProcessItemCopyWithImpl<ProcessItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProcessItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProcessItem &&
            (identical(other.process, process) || other.process == process));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, process);

  @override
  String toString() {
    return 'SearchResult.process(process: $process)';
  }
}

/// @nodoc
abstract mixin class $ProcessItemCopyWith<$Res>
    implements $SearchResultCopyWith<$Res> {
  factory $ProcessItemCopyWith(
          ProcessItem value, $Res Function(ProcessItem) _then) =
      _$ProcessItemCopyWithImpl;
  @useResult
  $Res call({Process process});

  $ProcessCopyWith<$Res> get process;
}

/// @nodoc
class _$ProcessItemCopyWithImpl<$Res> implements $ProcessItemCopyWith<$Res> {
  _$ProcessItemCopyWithImpl(this._self, this._then);

  final ProcessItem _self;
  final $Res Function(ProcessItem) _then;

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? process = null,
  }) {
    return _then(ProcessItem(
      null == process
          ? _self.process
          : process // ignore: cast_nullable_to_non_nullable
              as Process,
    ));
  }

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProcessCopyWith<$Res> get process {
    return $ProcessCopyWith<$Res>(_self.process, (value) {
      return _then(_self.copyWith(process: value));
    });
  }
}

// dart format on
