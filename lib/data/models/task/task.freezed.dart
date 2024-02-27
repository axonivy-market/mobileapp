// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskIvy _$TaskIvyFromJson(Map<String, dynamic> json) {
  return _TaskIvy.fromJson(json);
}

/// @nodoc
mixin _$TaskIvy {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get fullRequestPath => throw _privateConstructorUsedError;
  bool get offline => throw _privateConstructorUsedError;
  DateTime get startTimeStamp => throw _privateConstructorUsedError;
  DateTime? get expiryTimeStamp => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  int get state => throw _privateConstructorUsedError;
  String get activatorName => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'case', defaultValue: null)
  CaseTask? get caseTask => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskIvyCopyWith<TaskIvy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskIvyCopyWith<$Res> {
  factory $TaskIvyCopyWith(TaskIvy value, $Res Function(TaskIvy) then) =
      _$TaskIvyCopyWithImpl<$Res, TaskIvy>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      String fullRequestPath,
      bool offline,
      DateTime startTimeStamp,
      DateTime? expiryTimeStamp,
      int priority,
      int state,
      String activatorName,
      String category,
      @JsonKey(name: 'case', defaultValue: null) CaseTask? caseTask});

  $CaseTaskCopyWith<$Res>? get caseTask;
}

/// @nodoc
class _$TaskIvyCopyWithImpl<$Res, $Val extends TaskIvy>
    implements $TaskIvyCopyWith<$Res> {
  _$TaskIvyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      fullRequestPath: null == fullRequestPath
          ? _value.fullRequestPath
          : fullRequestPath // ignore: cast_nullable_to_non_nullable
              as String,
      offline: null == offline
          ? _value.offline
          : offline // ignore: cast_nullable_to_non_nullable
              as bool,
      startTimeStamp: null == startTimeStamp
          ? _value.startTimeStamp
          : startTimeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiryTimeStamp: freezed == expiryTimeStamp
          ? _value.expiryTimeStamp
          : expiryTimeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int,
      activatorName: null == activatorName
          ? _value.activatorName
          : activatorName // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      caseTask: freezed == caseTask
          ? _value.caseTask
          : caseTask // ignore: cast_nullable_to_non_nullable
              as CaseTask?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CaseTaskCopyWith<$Res>? get caseTask {
    if (_value.caseTask == null) {
      return null;
    }

    return $CaseTaskCopyWith<$Res>(_value.caseTask!, (value) {
      return _then(_value.copyWith(caseTask: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskIvyImplCopyWith<$Res> implements $TaskIvyCopyWith<$Res> {
  factory _$$TaskIvyImplCopyWith(
          _$TaskIvyImpl value, $Res Function(_$TaskIvyImpl) then) =
      __$$TaskIvyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      String fullRequestPath,
      bool offline,
      DateTime startTimeStamp,
      DateTime? expiryTimeStamp,
      int priority,
      int state,
      String activatorName,
      String category,
      @JsonKey(name: 'case', defaultValue: null) CaseTask? caseTask});

  @override
  $CaseTaskCopyWith<$Res>? get caseTask;
}

/// @nodoc
class __$$TaskIvyImplCopyWithImpl<$Res>
    extends _$TaskIvyCopyWithImpl<$Res, _$TaskIvyImpl>
    implements _$$TaskIvyImplCopyWith<$Res> {
  __$$TaskIvyImplCopyWithImpl(
      _$TaskIvyImpl _value, $Res Function(_$TaskIvyImpl) _then)
      : super(_value, _then);

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
  }) {
    return _then(_$TaskIvyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      fullRequestPath: null == fullRequestPath
          ? _value.fullRequestPath
          : fullRequestPath // ignore: cast_nullable_to_non_nullable
              as String,
      offline: null == offline
          ? _value.offline
          : offline // ignore: cast_nullable_to_non_nullable
              as bool,
      startTimeStamp: null == startTimeStamp
          ? _value.startTimeStamp
          : startTimeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiryTimeStamp: freezed == expiryTimeStamp
          ? _value.expiryTimeStamp
          : expiryTimeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int,
      activatorName: null == activatorName
          ? _value.activatorName
          : activatorName // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      caseTask: freezed == caseTask
          ? _value.caseTask
          : caseTask // ignore: cast_nullable_to_non_nullable
              as CaseTask?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskIvyImpl implements _TaskIvy {
  const _$TaskIvyImpl(
      {required this.id,
      this.name = '',
      this.description = '',
      this.fullRequestPath = '',
      this.offline = false,
      required this.startTimeStamp,
      this.expiryTimeStamp = null,
      this.priority = 0,
      this.state = 0,
      this.activatorName = '',
      this.category = '',
      @JsonKey(name: 'case', defaultValue: null) this.caseTask = null});

  factory _$TaskIvyImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskIvyImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String fullRequestPath;
  @override
  @JsonKey()
  final bool offline;
  @override
  final DateTime startTimeStamp;
  @override
  @JsonKey()
  final DateTime? expiryTimeStamp;
  @override
  @JsonKey()
  final int priority;
  @override
  @JsonKey()
  final int state;
  @override
  @JsonKey()
  final String activatorName;
  @override
  @JsonKey()
  final String category;
  @override
  @JsonKey(name: 'case', defaultValue: null)
  final CaseTask? caseTask;

  @override
  String toString() {
    return 'TaskIvy(id: $id, name: $name, description: $description, fullRequestPath: $fullRequestPath, offline: $offline, startTimeStamp: $startTimeStamp, expiryTimeStamp: $expiryTimeStamp, priority: $priority, state: $state, activatorName: $activatorName, category: $category, caseTask: $caseTask)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskIvyImpl &&
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
                other.caseTask == caseTask));
  }

  @JsonKey(ignore: true)
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
      caseTask);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskIvyImplCopyWith<_$TaskIvyImpl> get copyWith =>
      __$$TaskIvyImplCopyWithImpl<_$TaskIvyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskIvyImplToJson(
      this,
    );
  }
}

abstract class _TaskIvy implements TaskIvy {
  const factory _TaskIvy(
      {required final int id,
      final String name,
      final String description,
      final String fullRequestPath,
      final bool offline,
      required final DateTime startTimeStamp,
      final DateTime? expiryTimeStamp,
      final int priority,
      final int state,
      final String activatorName,
      final String category,
      @JsonKey(name: 'case', defaultValue: null)
      final CaseTask? caseTask}) = _$TaskIvyImpl;

  factory _TaskIvy.fromJson(Map<String, dynamic> json) = _$TaskIvyImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get fullRequestPath;
  @override
  bool get offline;
  @override
  DateTime get startTimeStamp;
  @override
  DateTime? get expiryTimeStamp;
  @override
  int get priority;
  @override
  int get state;
  @override
  String get activatorName;
  @override
  String get category;
  @override
  @JsonKey(name: 'case', defaultValue: null)
  CaseTask? get caseTask;
  @override
  @JsonKey(ignore: true)
  _$$TaskIvyImplCopyWith<_$TaskIvyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
