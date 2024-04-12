// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_file_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UploadFileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskIvy taskIvy, UploadFileType type) uploadFiles,
    required TResult Function(String fileName) changeFileName,
    required TResult Function(File file, String fileName, int fileState)
        cacheFileOfflineEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskIvy taskIvy, UploadFileType type)? uploadFiles,
    TResult? Function(String fileName)? changeFileName,
    TResult? Function(File file, String fileName, int fileState)?
        cacheFileOfflineEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskIvy taskIvy, UploadFileType type)? uploadFiles,
    TResult Function(String fileName)? changeFileName,
    TResult Function(File file, String fileName, int fileState)?
        cacheFileOfflineEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_ChangeFileName value) changeFileName,
    required TResult Function(CacheFileOfflineEvent value)
        cacheFileOfflineEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_ChangeFileName value)? changeFileName,
    TResult? Function(CacheFileOfflineEvent value)? cacheFileOfflineEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_ChangeFileName value)? changeFileName,
    TResult Function(CacheFileOfflineEvent value)? cacheFileOfflineEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileEventCopyWith<$Res> {
  factory $UploadFileEventCopyWith(
          UploadFileEvent value, $Res Function(UploadFileEvent) then) =
      _$UploadFileEventCopyWithImpl<$Res, UploadFileEvent>;
}

/// @nodoc
class _$UploadFileEventCopyWithImpl<$Res, $Val extends UploadFileEvent>
    implements $UploadFileEventCopyWith<$Res> {
  _$UploadFileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UploadFilesImplCopyWith<$Res> {
  factory _$$UploadFilesImplCopyWith(
          _$UploadFilesImpl value, $Res Function(_$UploadFilesImpl) then) =
      __$$UploadFilesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskIvy taskIvy, UploadFileType type});

  $TaskIvyCopyWith<$Res> get taskIvy;
}

/// @nodoc
class __$$UploadFilesImplCopyWithImpl<$Res>
    extends _$UploadFileEventCopyWithImpl<$Res, _$UploadFilesImpl>
    implements _$$UploadFilesImplCopyWith<$Res> {
  __$$UploadFilesImplCopyWithImpl(
      _$UploadFilesImpl _value, $Res Function(_$UploadFilesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskIvy = null,
    Object? type = null,
  }) {
    return _then(_$UploadFilesImpl(
      null == taskIvy
          ? _value.taskIvy
          : taskIvy // ignore: cast_nullable_to_non_nullable
              as TaskIvy,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UploadFileType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskIvyCopyWith<$Res> get taskIvy {
    return $TaskIvyCopyWith<$Res>(_value.taskIvy, (value) {
      return _then(_value.copyWith(taskIvy: value));
    });
  }
}

/// @nodoc

class _$UploadFilesImpl with DiagnosticableTreeMixin implements _UploadFiles {
  const _$UploadFilesImpl(this.taskIvy, this.type);

  @override
  final TaskIvy taskIvy;
  @override
  final UploadFileType type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadFileEvent.uploadFiles(taskIvy: $taskIvy, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UploadFileEvent.uploadFiles'))
      ..add(DiagnosticsProperty('taskIvy', taskIvy))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFilesImpl &&
            (identical(other.taskIvy, taskIvy) || other.taskIvy == taskIvy) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskIvy, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadFilesImplCopyWith<_$UploadFilesImpl> get copyWith =>
      __$$UploadFilesImplCopyWithImpl<_$UploadFilesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskIvy taskIvy, UploadFileType type) uploadFiles,
    required TResult Function(String fileName) changeFileName,
    required TResult Function(File file, String fileName, int fileState)
        cacheFileOfflineEvent,
  }) {
    return uploadFiles(taskIvy, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskIvy taskIvy, UploadFileType type)? uploadFiles,
    TResult? Function(String fileName)? changeFileName,
    TResult? Function(File file, String fileName, int fileState)?
        cacheFileOfflineEvent,
  }) {
    return uploadFiles?.call(taskIvy, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskIvy taskIvy, UploadFileType type)? uploadFiles,
    TResult Function(String fileName)? changeFileName,
    TResult Function(File file, String fileName, int fileState)?
        cacheFileOfflineEvent,
    required TResult orElse(),
  }) {
    if (uploadFiles != null) {
      return uploadFiles(taskIvy, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_ChangeFileName value) changeFileName,
    required TResult Function(CacheFileOfflineEvent value)
        cacheFileOfflineEvent,
  }) {
    return uploadFiles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_ChangeFileName value)? changeFileName,
    TResult? Function(CacheFileOfflineEvent value)? cacheFileOfflineEvent,
  }) {
    return uploadFiles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_ChangeFileName value)? changeFileName,
    TResult Function(CacheFileOfflineEvent value)? cacheFileOfflineEvent,
    required TResult orElse(),
  }) {
    if (uploadFiles != null) {
      return uploadFiles(this);
    }
    return orElse();
  }
}

abstract class _UploadFiles implements UploadFileEvent {
  const factory _UploadFiles(final TaskIvy taskIvy, final UploadFileType type) =
      _$UploadFilesImpl;

  TaskIvy get taskIvy;
  UploadFileType get type;
  @JsonKey(ignore: true)
  _$$UploadFilesImplCopyWith<_$UploadFilesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeFileNameImplCopyWith<$Res> {
  factory _$$ChangeFileNameImplCopyWith(_$ChangeFileNameImpl value,
          $Res Function(_$ChangeFileNameImpl) then) =
      __$$ChangeFileNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fileName});
}

/// @nodoc
class __$$ChangeFileNameImplCopyWithImpl<$Res>
    extends _$UploadFileEventCopyWithImpl<$Res, _$ChangeFileNameImpl>
    implements _$$ChangeFileNameImplCopyWith<$Res> {
  __$$ChangeFileNameImplCopyWithImpl(
      _$ChangeFileNameImpl _value, $Res Function(_$ChangeFileNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
  }) {
    return _then(_$ChangeFileNameImpl(
      null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeFileNameImpl
    with DiagnosticableTreeMixin
    implements _ChangeFileName {
  const _$ChangeFileNameImpl(this.fileName);

  @override
  final String fileName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadFileEvent.changeFileName(fileName: $fileName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UploadFileEvent.changeFileName'))
      ..add(DiagnosticsProperty('fileName', fileName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeFileNameImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeFileNameImplCopyWith<_$ChangeFileNameImpl> get copyWith =>
      __$$ChangeFileNameImplCopyWithImpl<_$ChangeFileNameImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskIvy taskIvy, UploadFileType type) uploadFiles,
    required TResult Function(String fileName) changeFileName,
    required TResult Function(File file, String fileName, int fileState)
        cacheFileOfflineEvent,
  }) {
    return changeFileName(fileName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskIvy taskIvy, UploadFileType type)? uploadFiles,
    TResult? Function(String fileName)? changeFileName,
    TResult? Function(File file, String fileName, int fileState)?
        cacheFileOfflineEvent,
  }) {
    return changeFileName?.call(fileName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskIvy taskIvy, UploadFileType type)? uploadFiles,
    TResult Function(String fileName)? changeFileName,
    TResult Function(File file, String fileName, int fileState)?
        cacheFileOfflineEvent,
    required TResult orElse(),
  }) {
    if (changeFileName != null) {
      return changeFileName(fileName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_ChangeFileName value) changeFileName,
    required TResult Function(CacheFileOfflineEvent value)
        cacheFileOfflineEvent,
  }) {
    return changeFileName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_ChangeFileName value)? changeFileName,
    TResult? Function(CacheFileOfflineEvent value)? cacheFileOfflineEvent,
  }) {
    return changeFileName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_ChangeFileName value)? changeFileName,
    TResult Function(CacheFileOfflineEvent value)? cacheFileOfflineEvent,
    required TResult orElse(),
  }) {
    if (changeFileName != null) {
      return changeFileName(this);
    }
    return orElse();
  }
}

abstract class _ChangeFileName implements UploadFileEvent {
  const factory _ChangeFileName(final String fileName) = _$ChangeFileNameImpl;

  String get fileName;
  @JsonKey(ignore: true)
  _$$ChangeFileNameImplCopyWith<_$ChangeFileNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheFileOfflineEventImplCopyWith<$Res> {
  factory _$$CacheFileOfflineEventImplCopyWith(
          _$CacheFileOfflineEventImpl value,
          $Res Function(_$CacheFileOfflineEventImpl) then) =
      __$$CacheFileOfflineEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File file, String fileName, int fileState});
}

/// @nodoc
class __$$CacheFileOfflineEventImplCopyWithImpl<$Res>
    extends _$UploadFileEventCopyWithImpl<$Res, _$CacheFileOfflineEventImpl>
    implements _$$CacheFileOfflineEventImplCopyWith<$Res> {
  __$$CacheFileOfflineEventImplCopyWithImpl(_$CacheFileOfflineEventImpl _value,
      $Res Function(_$CacheFileOfflineEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? fileName = null,
    Object? fileState = null,
  }) {
    return _then(_$CacheFileOfflineEventImpl(
      null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      null == fileState
          ? _value.fileState
          : fileState // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CacheFileOfflineEventImpl
    with DiagnosticableTreeMixin
    implements CacheFileOfflineEvent {
  const _$CacheFileOfflineEventImpl(this.file, this.fileName, this.fileState);

  @override
  final File file;
  @override
  final String fileName;
  @override
  final int fileState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadFileEvent.cacheFileOfflineEvent(file: $file, fileName: $fileName, fileState: $fileState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'UploadFileEvent.cacheFileOfflineEvent'))
      ..add(DiagnosticsProperty('file', file))
      ..add(DiagnosticsProperty('fileName', fileName))
      ..add(DiagnosticsProperty('fileState', fileState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheFileOfflineEventImpl &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileState, fileState) ||
                other.fileState == fileState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file, fileName, fileState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheFileOfflineEventImplCopyWith<_$CacheFileOfflineEventImpl>
      get copyWith => __$$CacheFileOfflineEventImplCopyWithImpl<
          _$CacheFileOfflineEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskIvy taskIvy, UploadFileType type) uploadFiles,
    required TResult Function(String fileName) changeFileName,
    required TResult Function(File file, String fileName, int fileState)
        cacheFileOfflineEvent,
  }) {
    return cacheFileOfflineEvent(file, fileName, fileState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskIvy taskIvy, UploadFileType type)? uploadFiles,
    TResult? Function(String fileName)? changeFileName,
    TResult? Function(File file, String fileName, int fileState)?
        cacheFileOfflineEvent,
  }) {
    return cacheFileOfflineEvent?.call(file, fileName, fileState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskIvy taskIvy, UploadFileType type)? uploadFiles,
    TResult Function(String fileName)? changeFileName,
    TResult Function(File file, String fileName, int fileState)?
        cacheFileOfflineEvent,
    required TResult orElse(),
  }) {
    if (cacheFileOfflineEvent != null) {
      return cacheFileOfflineEvent(file, fileName, fileState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_ChangeFileName value) changeFileName,
    required TResult Function(CacheFileOfflineEvent value)
        cacheFileOfflineEvent,
  }) {
    return cacheFileOfflineEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_ChangeFileName value)? changeFileName,
    TResult? Function(CacheFileOfflineEvent value)? cacheFileOfflineEvent,
  }) {
    return cacheFileOfflineEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_ChangeFileName value)? changeFileName,
    TResult Function(CacheFileOfflineEvent value)? cacheFileOfflineEvent,
    required TResult orElse(),
  }) {
    if (cacheFileOfflineEvent != null) {
      return cacheFileOfflineEvent(this);
    }
    return orElse();
  }
}

abstract class CacheFileOfflineEvent implements UploadFileEvent {
  const factory CacheFileOfflineEvent(
          final File file, final String fileName, final int fileState) =
      _$CacheFileOfflineEventImpl;

  File get file;
  String get fileName;
  int get fileState;
  @JsonKey(ignore: true)
  _$$CacheFileOfflineEventImplCopyWith<_$CacheFileOfflineEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UploadFileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String message, String fileNames) success,
    required TResult Function(String fileName) changeFileName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(String message, String fileNames)? success,
    TResult? Function(String fileName)? changeFileName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String message, String fileNames)? success,
    TResult Function(String fileName)? changeFileName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadLoadingState value) loading,
    required TResult Function(UploadErrorState value) error,
    required TResult Function(UploadSuccessState value) success,
    required TResult Function(UploadChangeFileNameState value) changeFileName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadLoadingState value)? loading,
    TResult? Function(UploadErrorState value)? error,
    TResult? Function(UploadSuccessState value)? success,
    TResult? Function(UploadChangeFileNameState value)? changeFileName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadLoadingState value)? loading,
    TResult Function(UploadErrorState value)? error,
    TResult Function(UploadSuccessState value)? success,
    TResult Function(UploadChangeFileNameState value)? changeFileName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileStateCopyWith<$Res> {
  factory $UploadFileStateCopyWith(
          UploadFileState value, $Res Function(UploadFileState) then) =
      _$UploadFileStateCopyWithImpl<$Res, UploadFileState>;
}

/// @nodoc
class _$UploadFileStateCopyWithImpl<$Res, $Val extends UploadFileState>
    implements $UploadFileStateCopyWith<$Res> {
  _$UploadFileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UploadLoadingStateImplCopyWith<$Res> {
  factory _$$UploadLoadingStateImplCopyWith(_$UploadLoadingStateImpl value,
          $Res Function(_$UploadLoadingStateImpl) then) =
      __$$UploadLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadLoadingStateImplCopyWithImpl<$Res>
    extends _$UploadFileStateCopyWithImpl<$Res, _$UploadLoadingStateImpl>
    implements _$$UploadLoadingStateImplCopyWith<$Res> {
  __$$UploadLoadingStateImplCopyWithImpl(_$UploadLoadingStateImpl _value,
      $Res Function(_$UploadLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UploadLoadingStateImpl
    with DiagnosticableTreeMixin
    implements UploadLoadingState {
  const _$UploadLoadingStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadFileState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UploadFileState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UploadLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String message, String fileNames) success,
    required TResult Function(String fileName) changeFileName,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(String message, String fileNames)? success,
    TResult? Function(String fileName)? changeFileName,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String message, String fileNames)? success,
    TResult Function(String fileName)? changeFileName,
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
    required TResult Function(UploadLoadingState value) loading,
    required TResult Function(UploadErrorState value) error,
    required TResult Function(UploadSuccessState value) success,
    required TResult Function(UploadChangeFileNameState value) changeFileName,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadLoadingState value)? loading,
    TResult? Function(UploadErrorState value)? error,
    TResult? Function(UploadSuccessState value)? success,
    TResult? Function(UploadChangeFileNameState value)? changeFileName,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadLoadingState value)? loading,
    TResult Function(UploadErrorState value)? error,
    TResult Function(UploadSuccessState value)? success,
    TResult Function(UploadChangeFileNameState value)? changeFileName,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UploadLoadingState implements UploadFileState {
  const factory UploadLoadingState() = _$UploadLoadingStateImpl;
}

/// @nodoc
abstract class _$$UploadErrorStateImplCopyWith<$Res> {
  factory _$$UploadErrorStateImplCopyWith(_$UploadErrorStateImpl value,
          $Res Function(_$UploadErrorStateImpl) then) =
      __$$UploadErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$UploadErrorStateImplCopyWithImpl<$Res>
    extends _$UploadFileStateCopyWithImpl<$Res, _$UploadErrorStateImpl>
    implements _$$UploadErrorStateImplCopyWith<$Res> {
  __$$UploadErrorStateImplCopyWithImpl(_$UploadErrorStateImpl _value,
      $Res Function(_$UploadErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UploadErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadErrorStateImpl
    with DiagnosticableTreeMixin
    implements UploadErrorState {
  const _$UploadErrorStateImpl(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadFileState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UploadFileState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadErrorStateImplCopyWith<_$UploadErrorStateImpl> get copyWith =>
      __$$UploadErrorStateImplCopyWithImpl<_$UploadErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String message, String fileNames) success,
    required TResult Function(String fileName) changeFileName,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(String message, String fileNames)? success,
    TResult? Function(String fileName)? changeFileName,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String message, String fileNames)? success,
    TResult Function(String fileName)? changeFileName,
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
    required TResult Function(UploadLoadingState value) loading,
    required TResult Function(UploadErrorState value) error,
    required TResult Function(UploadSuccessState value) success,
    required TResult Function(UploadChangeFileNameState value) changeFileName,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadLoadingState value)? loading,
    TResult? Function(UploadErrorState value)? error,
    TResult? Function(UploadSuccessState value)? success,
    TResult? Function(UploadChangeFileNameState value)? changeFileName,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadLoadingState value)? loading,
    TResult Function(UploadErrorState value)? error,
    TResult Function(UploadSuccessState value)? success,
    TResult Function(UploadChangeFileNameState value)? changeFileName,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UploadErrorState implements UploadFileState {
  const factory UploadErrorState(final String error) = _$UploadErrorStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$UploadErrorStateImplCopyWith<_$UploadErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadSuccessStateImplCopyWith<$Res> {
  factory _$$UploadSuccessStateImplCopyWith(_$UploadSuccessStateImpl value,
          $Res Function(_$UploadSuccessStateImpl) then) =
      __$$UploadSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String fileNames});
}

/// @nodoc
class __$$UploadSuccessStateImplCopyWithImpl<$Res>
    extends _$UploadFileStateCopyWithImpl<$Res, _$UploadSuccessStateImpl>
    implements _$$UploadSuccessStateImplCopyWith<$Res> {
  __$$UploadSuccessStateImplCopyWithImpl(_$UploadSuccessStateImpl _value,
      $Res Function(_$UploadSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? fileNames = null,
  }) {
    return _then(_$UploadSuccessStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == fileNames
          ? _value.fileNames
          : fileNames // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadSuccessStateImpl
    with DiagnosticableTreeMixin
    implements UploadSuccessState {
  const _$UploadSuccessStateImpl(this.message, this.fileNames);

  @override
  final String message;
  @override
  final String fileNames;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadFileState.success(message: $message, fileNames: $fileNames)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UploadFileState.success'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('fileNames', fileNames));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadSuccessStateImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.fileNames, fileNames) ||
                other.fileNames == fileNames));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, fileNames);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadSuccessStateImplCopyWith<_$UploadSuccessStateImpl> get copyWith =>
      __$$UploadSuccessStateImplCopyWithImpl<_$UploadSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String message, String fileNames) success,
    required TResult Function(String fileName) changeFileName,
  }) {
    return success(message, fileNames);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(String message, String fileNames)? success,
    TResult? Function(String fileName)? changeFileName,
  }) {
    return success?.call(message, fileNames);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String message, String fileNames)? success,
    TResult Function(String fileName)? changeFileName,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message, fileNames);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadLoadingState value) loading,
    required TResult Function(UploadErrorState value) error,
    required TResult Function(UploadSuccessState value) success,
    required TResult Function(UploadChangeFileNameState value) changeFileName,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadLoadingState value)? loading,
    TResult? Function(UploadErrorState value)? error,
    TResult? Function(UploadSuccessState value)? success,
    TResult? Function(UploadChangeFileNameState value)? changeFileName,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadLoadingState value)? loading,
    TResult Function(UploadErrorState value)? error,
    TResult Function(UploadSuccessState value)? success,
    TResult Function(UploadChangeFileNameState value)? changeFileName,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UploadSuccessState implements UploadFileState {
  const factory UploadSuccessState(
      final String message, final String fileNames) = _$UploadSuccessStateImpl;

  String get message;
  String get fileNames;
  @JsonKey(ignore: true)
  _$$UploadSuccessStateImplCopyWith<_$UploadSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadChangeFileNameStateImplCopyWith<$Res> {
  factory _$$UploadChangeFileNameStateImplCopyWith(
          _$UploadChangeFileNameStateImpl value,
          $Res Function(_$UploadChangeFileNameStateImpl) then) =
      __$$UploadChangeFileNameStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fileName});
}

/// @nodoc
class __$$UploadChangeFileNameStateImplCopyWithImpl<$Res>
    extends _$UploadFileStateCopyWithImpl<$Res, _$UploadChangeFileNameStateImpl>
    implements _$$UploadChangeFileNameStateImplCopyWith<$Res> {
  __$$UploadChangeFileNameStateImplCopyWithImpl(
      _$UploadChangeFileNameStateImpl _value,
      $Res Function(_$UploadChangeFileNameStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
  }) {
    return _then(_$UploadChangeFileNameStateImpl(
      null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadChangeFileNameStateImpl
    with DiagnosticableTreeMixin
    implements UploadChangeFileNameState {
  const _$UploadChangeFileNameStateImpl(this.fileName);

  @override
  final String fileName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadFileState.changeFileName(fileName: $fileName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UploadFileState.changeFileName'))
      ..add(DiagnosticsProperty('fileName', fileName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadChangeFileNameStateImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadChangeFileNameStateImplCopyWith<_$UploadChangeFileNameStateImpl>
      get copyWith => __$$UploadChangeFileNameStateImplCopyWithImpl<
          _$UploadChangeFileNameStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String message, String fileNames) success,
    required TResult Function(String fileName) changeFileName,
  }) {
    return changeFileName(fileName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(String message, String fileNames)? success,
    TResult? Function(String fileName)? changeFileName,
  }) {
    return changeFileName?.call(fileName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String message, String fileNames)? success,
    TResult Function(String fileName)? changeFileName,
    required TResult orElse(),
  }) {
    if (changeFileName != null) {
      return changeFileName(fileName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadLoadingState value) loading,
    required TResult Function(UploadErrorState value) error,
    required TResult Function(UploadSuccessState value) success,
    required TResult Function(UploadChangeFileNameState value) changeFileName,
  }) {
    return changeFileName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadLoadingState value)? loading,
    TResult? Function(UploadErrorState value)? error,
    TResult? Function(UploadSuccessState value)? success,
    TResult? Function(UploadChangeFileNameState value)? changeFileName,
  }) {
    return changeFileName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadLoadingState value)? loading,
    TResult Function(UploadErrorState value)? error,
    TResult Function(UploadSuccessState value)? success,
    TResult Function(UploadChangeFileNameState value)? changeFileName,
    required TResult orElse(),
  }) {
    if (changeFileName != null) {
      return changeFileName(this);
    }
    return orElse();
  }
}

abstract class UploadChangeFileNameState implements UploadFileState {
  const factory UploadChangeFileNameState(final String fileName) =
      _$UploadChangeFileNameStateImpl;

  String get fileName;
  @JsonKey(ignore: true)
  _$$UploadChangeFileNameStateImplCopyWith<_$UploadChangeFileNameStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
