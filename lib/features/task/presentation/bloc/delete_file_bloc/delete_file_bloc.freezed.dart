// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_file_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeleteFileEvent {
  int get caseId => throw _privateConstructorUsedError;
  int get documentId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int caseId, int documentId) deleteFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int caseId, int documentId)? deleteFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int caseId, int documentId)? deleteFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteFile value) deleteFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteFile value)? deleteFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteFile value)? deleteFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteFileEventCopyWith<DeleteFileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteFileEventCopyWith<$Res> {
  factory $DeleteFileEventCopyWith(
          DeleteFileEvent value, $Res Function(DeleteFileEvent) then) =
      _$DeleteFileEventCopyWithImpl<$Res, DeleteFileEvent>;
  @useResult
  $Res call({int caseId, int documentId});
}

/// @nodoc
class _$DeleteFileEventCopyWithImpl<$Res, $Val extends DeleteFileEvent>
    implements $DeleteFileEventCopyWith<$Res> {
  _$DeleteFileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caseId = null,
    Object? documentId = null,
  }) {
    return _then(_value.copyWith(
      caseId: null == caseId
          ? _value.caseId
          : caseId // ignore: cast_nullable_to_non_nullable
              as int,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteFileImplCopyWith<$Res>
    implements $DeleteFileEventCopyWith<$Res> {
  factory _$$DeleteFileImplCopyWith(
          _$DeleteFileImpl value, $Res Function(_$DeleteFileImpl) then) =
      __$$DeleteFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int caseId, int documentId});
}

/// @nodoc
class __$$DeleteFileImplCopyWithImpl<$Res>
    extends _$DeleteFileEventCopyWithImpl<$Res, _$DeleteFileImpl>
    implements _$$DeleteFileImplCopyWith<$Res> {
  __$$DeleteFileImplCopyWithImpl(
      _$DeleteFileImpl _value, $Res Function(_$DeleteFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caseId = null,
    Object? documentId = null,
  }) {
    return _then(_$DeleteFileImpl(
      null == caseId
          ? _value.caseId
          : caseId // ignore: cast_nullable_to_non_nullable
              as int,
      null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteFileImpl with DiagnosticableTreeMixin implements _DeleteFile {
  const _$DeleteFileImpl(this.caseId, this.documentId);

  @override
  final int caseId;
  @override
  final int documentId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeleteFileEvent.deleteFile(caseId: $caseId, documentId: $documentId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeleteFileEvent.deleteFile'))
      ..add(DiagnosticsProperty('caseId', caseId))
      ..add(DiagnosticsProperty('documentId', documentId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFileImpl &&
            (identical(other.caseId, caseId) || other.caseId == caseId) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, caseId, documentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFileImplCopyWith<_$DeleteFileImpl> get copyWith =>
      __$$DeleteFileImplCopyWithImpl<_$DeleteFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int caseId, int documentId) deleteFile,
  }) {
    return deleteFile(caseId, documentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int caseId, int documentId)? deleteFile,
  }) {
    return deleteFile?.call(caseId, documentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int caseId, int documentId)? deleteFile,
    required TResult orElse(),
  }) {
    if (deleteFile != null) {
      return deleteFile(caseId, documentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteFile value) deleteFile,
  }) {
    return deleteFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteFile value)? deleteFile,
  }) {
    return deleteFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteFile value)? deleteFile,
    required TResult orElse(),
  }) {
    if (deleteFile != null) {
      return deleteFile(this);
    }
    return orElse();
  }
}

abstract class _DeleteFile implements DeleteFileEvent {
  const factory _DeleteFile(final int caseId, final int documentId) =
      _$DeleteFileImpl;

  @override
  int get caseId;
  @override
  int get documentId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteFileImplCopyWith<_$DeleteFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeleteFileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String message) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(String message)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeleteLoadingState value) loading,
    required TResult Function(DeleteErrorState value) error,
    required TResult Function(DeleteSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteLoadingState value)? loading,
    TResult? Function(DeleteErrorState value)? error,
    TResult? Function(DeleteSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteLoadingState value)? loading,
    TResult Function(DeleteErrorState value)? error,
    TResult Function(DeleteSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteFileStateCopyWith<$Res> {
  factory $DeleteFileStateCopyWith(
          DeleteFileState value, $Res Function(DeleteFileState) then) =
      _$DeleteFileStateCopyWithImpl<$Res, DeleteFileState>;
}

/// @nodoc
class _$DeleteFileStateCopyWithImpl<$Res, $Val extends DeleteFileState>
    implements $DeleteFileStateCopyWith<$Res> {
  _$DeleteFileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeleteLoadingStateImplCopyWith<$Res> {
  factory _$$DeleteLoadingStateImplCopyWith(_$DeleteLoadingStateImpl value,
          $Res Function(_$DeleteLoadingStateImpl) then) =
      __$$DeleteLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteLoadingStateImplCopyWithImpl<$Res>
    extends _$DeleteFileStateCopyWithImpl<$Res, _$DeleteLoadingStateImpl>
    implements _$$DeleteLoadingStateImplCopyWith<$Res> {
  __$$DeleteLoadingStateImplCopyWithImpl(_$DeleteLoadingStateImpl _value,
      $Res Function(_$DeleteLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteLoadingStateImpl
    with DiagnosticableTreeMixin
    implements DeleteLoadingState {
  const _$DeleteLoadingStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeleteFileState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'DeleteFileState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String message) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(String message)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeleteLoadingState value) loading,
    required TResult Function(DeleteErrorState value) error,
    required TResult Function(DeleteSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteLoadingState value)? loading,
    TResult? Function(DeleteErrorState value)? error,
    TResult? Function(DeleteSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteLoadingState value)? loading,
    TResult Function(DeleteErrorState value)? error,
    TResult Function(DeleteSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DeleteLoadingState implements DeleteFileState {
  const factory DeleteLoadingState() = _$DeleteLoadingStateImpl;
}

/// @nodoc
abstract class _$$DeleteErrorStateImplCopyWith<$Res> {
  factory _$$DeleteErrorStateImplCopyWith(_$DeleteErrorStateImpl value,
          $Res Function(_$DeleteErrorStateImpl) then) =
      __$$DeleteErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$DeleteErrorStateImplCopyWithImpl<$Res>
    extends _$DeleteFileStateCopyWithImpl<$Res, _$DeleteErrorStateImpl>
    implements _$$DeleteErrorStateImplCopyWith<$Res> {
  __$$DeleteErrorStateImplCopyWithImpl(_$DeleteErrorStateImpl _value,
      $Res Function(_$DeleteErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DeleteErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteErrorStateImpl
    with DiagnosticableTreeMixin
    implements DeleteErrorState {
  const _$DeleteErrorStateImpl(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeleteFileState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeleteFileState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteErrorStateImplCopyWith<_$DeleteErrorStateImpl> get copyWith =>
      __$$DeleteErrorStateImplCopyWithImpl<_$DeleteErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String message) success,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(String message)? success,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeleteLoadingState value) loading,
    required TResult Function(DeleteErrorState value) error,
    required TResult Function(DeleteSuccessState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteLoadingState value)? loading,
    TResult? Function(DeleteErrorState value)? error,
    TResult? Function(DeleteSuccessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteLoadingState value)? loading,
    TResult Function(DeleteErrorState value)? error,
    TResult Function(DeleteSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DeleteErrorState implements DeleteFileState {
  const factory DeleteErrorState(final String error) = _$DeleteErrorStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$DeleteErrorStateImplCopyWith<_$DeleteErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteSuccessStateImplCopyWith<$Res> {
  factory _$$DeleteSuccessStateImplCopyWith(_$DeleteSuccessStateImpl value,
          $Res Function(_$DeleteSuccessStateImpl) then) =
      __$$DeleteSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DeleteSuccessStateImplCopyWithImpl<$Res>
    extends _$DeleteFileStateCopyWithImpl<$Res, _$DeleteSuccessStateImpl>
    implements _$$DeleteSuccessStateImplCopyWith<$Res> {
  __$$DeleteSuccessStateImplCopyWithImpl(_$DeleteSuccessStateImpl _value,
      $Res Function(_$DeleteSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DeleteSuccessStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteSuccessStateImpl
    with DiagnosticableTreeMixin
    implements DeleteSuccessState {
  const _$DeleteSuccessStateImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeleteFileState.success(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeleteFileState.success'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSuccessStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSuccessStateImplCopyWith<_$DeleteSuccessStateImpl> get copyWith =>
      __$$DeleteSuccessStateImplCopyWithImpl<_$DeleteSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String message) success,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(String message)? success,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeleteLoadingState value) loading,
    required TResult Function(DeleteErrorState value) error,
    required TResult Function(DeleteSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteLoadingState value)? loading,
    TResult? Function(DeleteErrorState value)? error,
    TResult? Function(DeleteSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteLoadingState value)? loading,
    TResult Function(DeleteErrorState value)? error,
    TResult Function(DeleteSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class DeleteSuccessState implements DeleteFileState {
  const factory DeleteSuccessState(final String message) =
      _$DeleteSuccessStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$DeleteSuccessStateImplCopyWith<_$DeleteSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
