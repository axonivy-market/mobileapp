// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) sectionHeader,
    required TResult Function(TaskIvy task) task,
    required TResult Function(Process process) process,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? sectionHeader,
    TResult? Function(TaskIvy task)? task,
    TResult? Function(Process process)? process,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? sectionHeader,
    TResult Function(TaskIvy task)? task,
    TResult Function(Process process)? process,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SectionHeader value) sectionHeader,
    required TResult Function(TaskItem value) task,
    required TResult Function(ProcessItem value) process,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SectionHeader value)? sectionHeader,
    TResult? Function(TaskItem value)? task,
    TResult? Function(ProcessItem value)? process,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SectionHeader value)? sectionHeader,
    TResult Function(TaskItem value)? task,
    TResult Function(ProcessItem value)? process,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultCopyWith<$Res> {
  factory $SearchResultCopyWith(
          SearchResult value, $Res Function(SearchResult) then) =
      _$SearchResultCopyWithImpl<$Res, SearchResult>;
}

/// @nodoc
class _$SearchResultCopyWithImpl<$Res, $Val extends SearchResult>
    implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SectionHeaderImplCopyWith<$Res> {
  factory _$$SectionHeaderImplCopyWith(
          _$SectionHeaderImpl value, $Res Function(_$SectionHeaderImpl) then) =
      __$$SectionHeaderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$SectionHeaderImplCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res, _$SectionHeaderImpl>
    implements _$$SectionHeaderImplCopyWith<$Res> {
  __$$SectionHeaderImplCopyWithImpl(
      _$SectionHeaderImpl _value, $Res Function(_$SectionHeaderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$SectionHeaderImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SectionHeaderImpl implements SectionHeader {
  const _$SectionHeaderImpl(this.title, {final String? $type})
      : $type = $type ?? 'sectionHeader';

  factory _$SectionHeaderImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectionHeaderImplFromJson(json);

  @override
  final String title;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SearchResult.sectionHeader(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionHeaderImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionHeaderImplCopyWith<_$SectionHeaderImpl> get copyWith =>
      __$$SectionHeaderImplCopyWithImpl<_$SectionHeaderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) sectionHeader,
    required TResult Function(TaskIvy task) task,
    required TResult Function(Process process) process,
  }) {
    return sectionHeader(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? sectionHeader,
    TResult? Function(TaskIvy task)? task,
    TResult? Function(Process process)? process,
  }) {
    return sectionHeader?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? sectionHeader,
    TResult Function(TaskIvy task)? task,
    TResult Function(Process process)? process,
    required TResult orElse(),
  }) {
    if (sectionHeader != null) {
      return sectionHeader(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SectionHeader value) sectionHeader,
    required TResult Function(TaskItem value) task,
    required TResult Function(ProcessItem value) process,
  }) {
    return sectionHeader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SectionHeader value)? sectionHeader,
    TResult? Function(TaskItem value)? task,
    TResult? Function(ProcessItem value)? process,
  }) {
    return sectionHeader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SectionHeader value)? sectionHeader,
    TResult Function(TaskItem value)? task,
    TResult Function(ProcessItem value)? process,
    required TResult orElse(),
  }) {
    if (sectionHeader != null) {
      return sectionHeader(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SectionHeaderImplToJson(
      this,
    );
  }
}

abstract class SectionHeader implements SearchResult {
  const factory SectionHeader(final String title) = _$SectionHeaderImpl;

  factory SectionHeader.fromJson(Map<String, dynamic> json) =
      _$SectionHeaderImpl.fromJson;

  String get title;
  @JsonKey(ignore: true)
  _$$SectionHeaderImplCopyWith<_$SectionHeaderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskItemImplCopyWith<$Res> {
  factory _$$TaskItemImplCopyWith(
          _$TaskItemImpl value, $Res Function(_$TaskItemImpl) then) =
      __$$TaskItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskIvy task});

  $TaskIvyCopyWith<$Res> get task;
}

/// @nodoc
class __$$TaskItemImplCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res, _$TaskItemImpl>
    implements _$$TaskItemImplCopyWith<$Res> {
  __$$TaskItemImplCopyWithImpl(
      _$TaskItemImpl _value, $Res Function(_$TaskItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$TaskItemImpl(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskIvy,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskIvyCopyWith<$Res> get task {
    return $TaskIvyCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskItemImpl implements TaskItem {
  const _$TaskItemImpl(this.task, {final String? $type})
      : $type = $type ?? 'task';

  factory _$TaskItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskItemImplFromJson(json);

  @override
  final TaskIvy task;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SearchResult.task(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskItemImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskItemImplCopyWith<_$TaskItemImpl> get copyWith =>
      __$$TaskItemImplCopyWithImpl<_$TaskItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) sectionHeader,
    required TResult Function(TaskIvy task) task,
    required TResult Function(Process process) process,
  }) {
    return task(this.task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? sectionHeader,
    TResult? Function(TaskIvy task)? task,
    TResult? Function(Process process)? process,
  }) {
    return task?.call(this.task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? sectionHeader,
    TResult Function(TaskIvy task)? task,
    TResult Function(Process process)? process,
    required TResult orElse(),
  }) {
    if (task != null) {
      return task(this.task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SectionHeader value) sectionHeader,
    required TResult Function(TaskItem value) task,
    required TResult Function(ProcessItem value) process,
  }) {
    return task(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SectionHeader value)? sectionHeader,
    TResult? Function(TaskItem value)? task,
    TResult? Function(ProcessItem value)? process,
  }) {
    return task?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SectionHeader value)? sectionHeader,
    TResult Function(TaskItem value)? task,
    TResult Function(ProcessItem value)? process,
    required TResult orElse(),
  }) {
    if (task != null) {
      return task(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskItemImplToJson(
      this,
    );
  }
}

abstract class TaskItem implements SearchResult {
  const factory TaskItem(final TaskIvy task) = _$TaskItemImpl;

  factory TaskItem.fromJson(Map<String, dynamic> json) =
      _$TaskItemImpl.fromJson;

  TaskIvy get task;
  @JsonKey(ignore: true)
  _$$TaskItemImplCopyWith<_$TaskItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProcessItemImplCopyWith<$Res> {
  factory _$$ProcessItemImplCopyWith(
          _$ProcessItemImpl value, $Res Function(_$ProcessItemImpl) then) =
      __$$ProcessItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Process process});

  $ProcessCopyWith<$Res> get process;
}

/// @nodoc
class __$$ProcessItemImplCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res, _$ProcessItemImpl>
    implements _$$ProcessItemImplCopyWith<$Res> {
  __$$ProcessItemImplCopyWithImpl(
      _$ProcessItemImpl _value, $Res Function(_$ProcessItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? process = null,
  }) {
    return _then(_$ProcessItemImpl(
      null == process
          ? _value.process
          : process // ignore: cast_nullable_to_non_nullable
              as Process,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProcessCopyWith<$Res> get process {
    return $ProcessCopyWith<$Res>(_value.process, (value) {
      return _then(_value.copyWith(process: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ProcessItemImpl implements ProcessItem {
  _$ProcessItemImpl(this.process, {final String? $type})
      : $type = $type ?? 'process';

  factory _$ProcessItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProcessItemImplFromJson(json);

  @override
  final Process process;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SearchResult.process(process: $process)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessItemImpl &&
            (identical(other.process, process) || other.process == process));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, process);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessItemImplCopyWith<_$ProcessItemImpl> get copyWith =>
      __$$ProcessItemImplCopyWithImpl<_$ProcessItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) sectionHeader,
    required TResult Function(TaskIvy task) task,
    required TResult Function(Process process) process,
  }) {
    return process(this.process);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? sectionHeader,
    TResult? Function(TaskIvy task)? task,
    TResult? Function(Process process)? process,
  }) {
    return process?.call(this.process);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? sectionHeader,
    TResult Function(TaskIvy task)? task,
    TResult Function(Process process)? process,
    required TResult orElse(),
  }) {
    if (process != null) {
      return process(this.process);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SectionHeader value) sectionHeader,
    required TResult Function(TaskItem value) task,
    required TResult Function(ProcessItem value) process,
  }) {
    return process(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SectionHeader value)? sectionHeader,
    TResult? Function(TaskItem value)? task,
    TResult? Function(ProcessItem value)? process,
  }) {
    return process?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SectionHeader value)? sectionHeader,
    TResult Function(TaskItem value)? task,
    TResult Function(ProcessItem value)? process,
    required TResult orElse(),
  }) {
    if (process != null) {
      return process(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ProcessItemImplToJson(
      this,
    );
  }
}

abstract class ProcessItem implements SearchResult {
  factory ProcessItem(final Process process) = _$ProcessItemImpl;

  factory ProcessItem.fromJson(Map<String, dynamic> json) =
      _$ProcessItemImpl.fromJson;

  Process get process;
  @JsonKey(ignore: true)
  _$$ProcessItemImplCopyWith<_$ProcessItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
