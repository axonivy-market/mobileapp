// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CaseTask _$CaseTaskFromJson(Map<String, dynamic> json) {
  return _CaseTask.fromJson(json);
}

/// @nodoc
mixin _$CaseTask {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<Document> get documents => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaseTaskCopyWith<CaseTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaseTaskCopyWith<$Res> {
  factory $CaseTaskCopyWith(CaseTask value, $Res Function(CaseTask) then) =
      _$CaseTaskCopyWithImpl<$Res, CaseTask>;
  @useResult
  $Res call(
      {int id, String name, String description, List<Document> documents});
}

/// @nodoc
class _$CaseTaskCopyWithImpl<$Res, $Val extends CaseTask>
    implements $CaseTaskCopyWith<$Res> {
  _$CaseTaskCopyWithImpl(this._value, this._then);

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
    Object? documents = null,
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
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CaseTaskImplCopyWith<$Res>
    implements $CaseTaskCopyWith<$Res> {
  factory _$$CaseTaskImplCopyWith(
          _$CaseTaskImpl value, $Res Function(_$CaseTaskImpl) then) =
      __$$CaseTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, String description, List<Document> documents});
}

/// @nodoc
class __$$CaseTaskImplCopyWithImpl<$Res>
    extends _$CaseTaskCopyWithImpl<$Res, _$CaseTaskImpl>
    implements _$$CaseTaskImplCopyWith<$Res> {
  __$$CaseTaskImplCopyWithImpl(
      _$CaseTaskImpl _value, $Res Function(_$CaseTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? documents = null,
  }) {
    return _then(_$CaseTaskImpl(
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
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CaseTaskImpl implements _CaseTask {
  _$CaseTaskImpl(
      {required this.id,
      this.name = '',
      this.description = '',
      final List<Document> documents = const []})
      : _documents = documents;

  factory _$CaseTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$CaseTaskImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  final List<Document> _documents;
  @override
  @JsonKey()
  List<Document> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  String toString() {
    return 'CaseTask(id: $id, name: $name, description: $description, documents: $documents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaseTaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description,
      const DeepCollectionEquality().hash(_documents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CaseTaskImplCopyWith<_$CaseTaskImpl> get copyWith =>
      __$$CaseTaskImplCopyWithImpl<_$CaseTaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CaseTaskImplToJson(
      this,
    );
  }
}

abstract class _CaseTask implements CaseTask {
  factory _CaseTask(
      {required final int id,
      final String name,
      final String description,
      final List<Document> documents}) = _$CaseTaskImpl;

  factory _CaseTask.fromJson(Map<String, dynamic> json) =
      _$CaseTaskImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  List<Document> get documents;
  @override
  @JsonKey(ignore: true)
  _$$CaseTaskImplCopyWith<_$CaseTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
