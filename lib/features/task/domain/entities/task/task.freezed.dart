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
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get description => throw _privateConstructorUsedError;
  @HiveField(3)
  String get fullRequestPath => throw _privateConstructorUsedError;
  @HiveField(4)
  bool get offline => throw _privateConstructorUsedError;
  @HiveField(5)
  DateTime get startTimeStamp => throw _privateConstructorUsedError;
  @HiveField(6)
  DateTime? get expiryTimeStamp => throw _privateConstructorUsedError;
  @HiveField(7)
  int get priority => throw _privateConstructorUsedError;
  @HiveField(8)
  int get state => throw _privateConstructorUsedError;
  @HiveField(9)
  String get activatorName => throw _privateConstructorUsedError;
  @HiveField(10)
  String get category => throw _privateConstructorUsedError;
  @HiveField(11)
  CaseTask? get caseTask => throw _privateConstructorUsedError;
  @HiveField(12)
  Map<String, dynamic>? get doneTaskFormDataSerializedOffline =>
      throw _privateConstructorUsedError;
  @HiveField(13)
  String? get submitUrlOffline => throw _privateConstructorUsedError;
  @HiveField(14)
  String? get formHTMLPageOffline => throw _privateConstructorUsedError;

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
    Object? doneTaskFormDataSerializedOffline = freezed,
    Object? submitUrlOffline = freezed,
    Object? formHTMLPageOffline = freezed,
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
      doneTaskFormDataSerializedOffline: freezed ==
              doneTaskFormDataSerializedOffline
          ? _value.doneTaskFormDataSerializedOffline
          : doneTaskFormDataSerializedOffline // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      submitUrlOffline: freezed == submitUrlOffline
          ? _value.submitUrlOffline
          : submitUrlOffline // ignore: cast_nullable_to_non_nullable
              as String?,
      formHTMLPageOffline: freezed == formHTMLPageOffline
          ? _value.formHTMLPageOffline
          : formHTMLPageOffline // ignore: cast_nullable_to_non_nullable
              as String?,
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
    Object? doneTaskFormDataSerializedOffline = freezed,
    Object? submitUrlOffline = freezed,
    Object? formHTMLPageOffline = freezed,
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
      doneTaskFormDataSerializedOffline: freezed ==
              doneTaskFormDataSerializedOffline
          ? _value._doneTaskFormDataSerializedOffline
          : doneTaskFormDataSerializedOffline // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      submitUrlOffline: freezed == submitUrlOffline
          ? _value.submitUrlOffline
          : submitUrlOffline // ignore: cast_nullable_to_non_nullable
              as String?,
      formHTMLPageOffline: freezed == formHTMLPageOffline
          ? _value.formHTMLPageOffline
          : formHTMLPageOffline // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskIvyImpl implements _TaskIvy {
  const _$TaskIvyImpl(
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
      : _doneTaskFormDataSerializedOffline = doneTaskFormDataSerializedOffline;

  factory _$TaskIvyImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskIvyImplFromJson(json);

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

  @override
  String toString() {
    return 'TaskIvy(id: $id, name: $name, description: $description, fullRequestPath: $fullRequestPath, offline: $offline, startTimeStamp: $startTimeStamp, expiryTimeStamp: $expiryTimeStamp, priority: $priority, state: $state, activatorName: $activatorName, category: $category, caseTask: $caseTask, doneTaskFormDataSerializedOffline: $doneTaskFormDataSerializedOffline, submitUrlOffline: $submitUrlOffline, formHTMLPageOffline: $formHTMLPageOffline)';
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
                other.caseTask == caseTask) &&
            const DeepCollectionEquality().equals(
                other._doneTaskFormDataSerializedOffline,
                _doneTaskFormDataSerializedOffline) &&
            (identical(other.submitUrlOffline, submitUrlOffline) ||
                other.submitUrlOffline == submitUrlOffline) &&
            (identical(other.formHTMLPageOffline, formHTMLPageOffline) ||
                other.formHTMLPageOffline == formHTMLPageOffline));
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
      caseTask,
      const DeepCollectionEquality().hash(_doneTaskFormDataSerializedOffline),
      submitUrlOffline,
      formHTMLPageOffline);

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
      {@HiveField(0) required final int id,
      @HiveField(1) required final String name,
      @HiveField(2) required final String description,
      @HiveField(3) required final String fullRequestPath,
      @HiveField(4) required final bool offline,
      @HiveField(5) required final DateTime startTimeStamp,
      @HiveField(6) final DateTime? expiryTimeStamp,
      @HiveField(7) required final int priority,
      @HiveField(8) required final int state,
      @HiveField(9) required final String activatorName,
      @HiveField(10) required final String category,
      @HiveField(11) final CaseTask? caseTask,
      @HiveField(12)
      final Map<String, dynamic>? doneTaskFormDataSerializedOffline,
      @HiveField(13) final String? submitUrlOffline,
      @HiveField(14) final String? formHTMLPageOffline}) = _$TaskIvyImpl;

  factory _TaskIvy.fromJson(Map<String, dynamic> json) = _$TaskIvyImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get description;
  @override
  @HiveField(3)
  String get fullRequestPath;
  @override
  @HiveField(4)
  bool get offline;
  @override
  @HiveField(5)
  DateTime get startTimeStamp;
  @override
  @HiveField(6)
  DateTime? get expiryTimeStamp;
  @override
  @HiveField(7)
  int get priority;
  @override
  @HiveField(8)
  int get state;
  @override
  @HiveField(9)
  String get activatorName;
  @override
  @HiveField(10)
  String get category;
  @override
  @HiveField(11)
  CaseTask? get caseTask;
  @override
  @HiveField(12)
  Map<String, dynamic>? get doneTaskFormDataSerializedOffline;
  @override
  @HiveField(13)
  String? get submitUrlOffline;
  @override
  @HiveField(14)
  String? get formHTMLPageOffline;
  @override
  @JsonKey(ignore: true)
  _$$TaskIvyImplCopyWith<_$TaskIvyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
