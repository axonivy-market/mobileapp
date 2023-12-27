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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? sectionHeader,
    TResult? Function(TaskIvy task)? task,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? sectionHeader,
    TResult Function(TaskIvy task)? task,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SectionHeader value) sectionHeader,
    required TResult Function(TaskItem value) task,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SectionHeader value)? sectionHeader,
    TResult? Function(TaskItem value)? task,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SectionHeader value)? sectionHeader,
    TResult Function(TaskItem value)? task,
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
  bool operator ==(dynamic other) {
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
  }) {
    return sectionHeader(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? sectionHeader,
    TResult? Function(TaskIvy task)? task,
  }) {
    return sectionHeader?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? sectionHeader,
    TResult Function(TaskIvy task)? task,
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
  }) {
    return sectionHeader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SectionHeader value)? sectionHeader,
    TResult? Function(TaskItem value)? task,
  }) {
    return sectionHeader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SectionHeader value)? sectionHeader,
    TResult Function(TaskItem value)? task,
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
  bool operator ==(dynamic other) {
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
  }) {
    return task(this.task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? sectionHeader,
    TResult? Function(TaskIvy task)? task,
  }) {
    return task?.call(this.task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? sectionHeader,
    TResult Function(TaskIvy task)? task,
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
  }) {
    return task(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SectionHeader value)? sectionHeader,
    TResult? Function(TaskItem value)? task,
  }) {
    return task?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SectionHeader value)? sectionHeader,
    TResult Function(TaskItem value)? task,
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
