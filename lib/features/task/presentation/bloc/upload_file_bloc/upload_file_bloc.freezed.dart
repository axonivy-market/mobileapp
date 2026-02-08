// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_file_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UploadFileEvent implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'UploadFileEvent'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UploadFileEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadFileEvent()';
  }
}

/// @nodoc
class $UploadFileEventCopyWith<$Res> {
  $UploadFileEventCopyWith(
      UploadFileEvent _, $Res Function(UploadFileEvent) __);
}

/// Adds pattern-matching-related methods to [UploadFileEvent].
extension UploadFileEventPatterns on UploadFileEvent {
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
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_ChangeFileName value)? changeFileName,
    TResult Function(CacheFileOfflineEvent value)? cacheFileOfflineEvent,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UploadFiles() when uploadFiles != null:
        return uploadFiles(_that);
      case _ChangeFileName() when changeFileName != null:
        return changeFileName(_that);
      case CacheFileOfflineEvent() when cacheFileOfflineEvent != null:
        return cacheFileOfflineEvent(_that);
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
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_ChangeFileName value) changeFileName,
    required TResult Function(CacheFileOfflineEvent value)
        cacheFileOfflineEvent,
  }) {
    final _that = this;
    switch (_that) {
      case _UploadFiles():
        return uploadFiles(_that);
      case _ChangeFileName():
        return changeFileName(_that);
      case CacheFileOfflineEvent():
        return cacheFileOfflineEvent(_that);
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
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_ChangeFileName value)? changeFileName,
    TResult? Function(CacheFileOfflineEvent value)? cacheFileOfflineEvent,
  }) {
    final _that = this;
    switch (_that) {
      case _UploadFiles() when uploadFiles != null:
        return uploadFiles(_that);
      case _ChangeFileName() when changeFileName != null:
        return changeFileName(_that);
      case CacheFileOfflineEvent() when cacheFileOfflineEvent != null:
        return cacheFileOfflineEvent(_that);
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
    TResult Function(TaskIvy taskIvy, UploadFileType type)? uploadFiles,
    TResult Function(String fileName)? changeFileName,
    TResult Function(Uint8List bytes, String fileName, int fileState)?
        cacheFileOfflineEvent,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UploadFiles() when uploadFiles != null:
        return uploadFiles(_that.taskIvy, _that.type);
      case _ChangeFileName() when changeFileName != null:
        return changeFileName(_that.fileName);
      case CacheFileOfflineEvent() when cacheFileOfflineEvent != null:
        return cacheFileOfflineEvent(
            _that.bytes, _that.fileName, _that.fileState);
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
    required TResult Function(TaskIvy taskIvy, UploadFileType type) uploadFiles,
    required TResult Function(String fileName) changeFileName,
    required TResult Function(Uint8List bytes, String fileName, int fileState)
        cacheFileOfflineEvent,
  }) {
    final _that = this;
    switch (_that) {
      case _UploadFiles():
        return uploadFiles(_that.taskIvy, _that.type);
      case _ChangeFileName():
        return changeFileName(_that.fileName);
      case CacheFileOfflineEvent():
        return cacheFileOfflineEvent(
            _that.bytes, _that.fileName, _that.fileState);
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
    TResult? Function(TaskIvy taskIvy, UploadFileType type)? uploadFiles,
    TResult? Function(String fileName)? changeFileName,
    TResult? Function(Uint8List bytes, String fileName, int fileState)?
        cacheFileOfflineEvent,
  }) {
    final _that = this;
    switch (_that) {
      case _UploadFiles() when uploadFiles != null:
        return uploadFiles(_that.taskIvy, _that.type);
      case _ChangeFileName() when changeFileName != null:
        return changeFileName(_that.fileName);
      case CacheFileOfflineEvent() when cacheFileOfflineEvent != null:
        return cacheFileOfflineEvent(
            _that.bytes, _that.fileName, _that.fileState);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _UploadFiles with DiagnosticableTreeMixin implements UploadFileEvent {
  const _UploadFiles(this.taskIvy, this.type);

  final TaskIvy taskIvy;
  final UploadFileType type;

  /// Create a copy of UploadFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UploadFilesCopyWith<_UploadFiles> get copyWith =>
      __$UploadFilesCopyWithImpl<_UploadFiles>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'UploadFileEvent.uploadFiles'))
      ..add(DiagnosticsProperty('taskIvy', taskIvy))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UploadFiles &&
            (identical(other.taskIvy, taskIvy) || other.taskIvy == taskIvy) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskIvy, type);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadFileEvent.uploadFiles(taskIvy: $taskIvy, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$UploadFilesCopyWith<$Res>
    implements $UploadFileEventCopyWith<$Res> {
  factory _$UploadFilesCopyWith(
          _UploadFiles value, $Res Function(_UploadFiles) _then) =
      __$UploadFilesCopyWithImpl;
  @useResult
  $Res call({TaskIvy taskIvy, UploadFileType type});

  $TaskIvyCopyWith<$Res> get taskIvy;
}

/// @nodoc
class __$UploadFilesCopyWithImpl<$Res> implements _$UploadFilesCopyWith<$Res> {
  __$UploadFilesCopyWithImpl(this._self, this._then);

  final _UploadFiles _self;
  final $Res Function(_UploadFiles) _then;

  /// Create a copy of UploadFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? taskIvy = null,
    Object? type = null,
  }) {
    return _then(_UploadFiles(
      null == taskIvy
          ? _self.taskIvy
          : taskIvy // ignore: cast_nullable_to_non_nullable
              as TaskIvy,
      null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as UploadFileType,
    ));
  }

  /// Create a copy of UploadFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskIvyCopyWith<$Res> get taskIvy {
    return $TaskIvyCopyWith<$Res>(_self.taskIvy, (value) {
      return _then(_self.copyWith(taskIvy: value));
    });
  }
}

/// @nodoc

class _ChangeFileName with DiagnosticableTreeMixin implements UploadFileEvent {
  const _ChangeFileName(this.fileName);

  final String fileName;

  /// Create a copy of UploadFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChangeFileNameCopyWith<_ChangeFileName> get copyWith =>
      __$ChangeFileNameCopyWithImpl<_ChangeFileName>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'UploadFileEvent.changeFileName'))
      ..add(DiagnosticsProperty('fileName', fileName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeFileName &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileName);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadFileEvent.changeFileName(fileName: $fileName)';
  }
}

/// @nodoc
abstract mixin class _$ChangeFileNameCopyWith<$Res>
    implements $UploadFileEventCopyWith<$Res> {
  factory _$ChangeFileNameCopyWith(
          _ChangeFileName value, $Res Function(_ChangeFileName) _then) =
      __$ChangeFileNameCopyWithImpl;
  @useResult
  $Res call({String fileName});
}

/// @nodoc
class __$ChangeFileNameCopyWithImpl<$Res>
    implements _$ChangeFileNameCopyWith<$Res> {
  __$ChangeFileNameCopyWithImpl(this._self, this._then);

  final _ChangeFileName _self;
  final $Res Function(_ChangeFileName) _then;

  /// Create a copy of UploadFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fileName = null,
  }) {
    return _then(_ChangeFileName(
      null == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class CacheFileOfflineEvent
    with DiagnosticableTreeMixin
    implements UploadFileEvent {
  const CacheFileOfflineEvent(this.bytes, this.fileName, this.fileState);

  final Uint8List bytes;
  final String fileName;
  final int fileState;

  /// Create a copy of UploadFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CacheFileOfflineEventCopyWith<CacheFileOfflineEvent> get copyWith =>
      _$CacheFileOfflineEventCopyWithImpl<CacheFileOfflineEvent>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(
          DiagnosticsProperty('type', 'UploadFileEvent.cacheFileOfflineEvent'))
      ..add(DiagnosticsProperty('bytes', bytes))
      ..add(DiagnosticsProperty('fileName', fileName))
      ..add(DiagnosticsProperty('fileState', fileState));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CacheFileOfflineEvent &&
            const DeepCollectionEquality().equals(other.bytes, bytes) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileState, fileState) ||
                other.fileState == fileState));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(bytes), fileName, fileState);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadFileEvent.cacheFileOfflineEvent(bytes: $bytes, fileName: $fileName, fileState: $fileState)';
  }
}

/// @nodoc
abstract mixin class $CacheFileOfflineEventCopyWith<$Res>
    implements $UploadFileEventCopyWith<$Res> {
  factory $CacheFileOfflineEventCopyWith(CacheFileOfflineEvent value,
          $Res Function(CacheFileOfflineEvent) _then) =
      _$CacheFileOfflineEventCopyWithImpl;
  @useResult
  $Res call({Uint8List bytes, String fileName, int fileState});
}

/// @nodoc
class _$CacheFileOfflineEventCopyWithImpl<$Res>
    implements $CacheFileOfflineEventCopyWith<$Res> {
  _$CacheFileOfflineEventCopyWithImpl(this._self, this._then);

  final CacheFileOfflineEvent _self;
  final $Res Function(CacheFileOfflineEvent) _then;

  /// Create a copy of UploadFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bytes = null,
    Object? fileName = null,
    Object? fileState = null,
  }) {
    return _then(CacheFileOfflineEvent(
      null == bytes
          ? _self.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      null == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      null == fileState
          ? _self.fileState
          : fileState // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$UploadFileState implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'UploadFileState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UploadFileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadFileState()';
  }
}

/// @nodoc
class $UploadFileStateCopyWith<$Res> {
  $UploadFileStateCopyWith(
      UploadFileState _, $Res Function(UploadFileState) __);
}

/// Adds pattern-matching-related methods to [UploadFileState].
extension UploadFileStatePatterns on UploadFileState {
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
    TResult Function(UploadLoadingState value)? loading,
    TResult Function(UploadErrorState value)? error,
    TResult Function(UploadSuccessState value)? success,
    TResult Function(UploadChangeFileNameState value)? changeFileName,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case UploadLoadingState() when loading != null:
        return loading(_that);
      case UploadErrorState() when error != null:
        return error(_that);
      case UploadSuccessState() when success != null:
        return success(_that);
      case UploadChangeFileNameState() when changeFileName != null:
        return changeFileName(_that);
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
    required TResult Function(UploadLoadingState value) loading,
    required TResult Function(UploadErrorState value) error,
    required TResult Function(UploadSuccessState value) success,
    required TResult Function(UploadChangeFileNameState value) changeFileName,
  }) {
    final _that = this;
    switch (_that) {
      case UploadLoadingState():
        return loading(_that);
      case UploadErrorState():
        return error(_that);
      case UploadSuccessState():
        return success(_that);
      case UploadChangeFileNameState():
        return changeFileName(_that);
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
    TResult? Function(UploadLoadingState value)? loading,
    TResult? Function(UploadErrorState value)? error,
    TResult? Function(UploadSuccessState value)? success,
    TResult? Function(UploadChangeFileNameState value)? changeFileName,
  }) {
    final _that = this;
    switch (_that) {
      case UploadLoadingState() when loading != null:
        return loading(_that);
      case UploadErrorState() when error != null:
        return error(_that);
      case UploadSuccessState() when success != null:
        return success(_that);
      case UploadChangeFileNameState() when changeFileName != null:
        return changeFileName(_that);
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
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String message, String fileNames)? success,
    TResult Function(String fileName)? changeFileName,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case UploadLoadingState() when loading != null:
        return loading();
      case UploadErrorState() when error != null:
        return error(_that.error);
      case UploadSuccessState() when success != null:
        return success(_that.message, _that.fileNames);
      case UploadChangeFileNameState() when changeFileName != null:
        return changeFileName(_that.fileName);
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
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String message, String fileNames) success,
    required TResult Function(String fileName) changeFileName,
  }) {
    final _that = this;
    switch (_that) {
      case UploadLoadingState():
        return loading();
      case UploadErrorState():
        return error(_that.error);
      case UploadSuccessState():
        return success(_that.message, _that.fileNames);
      case UploadChangeFileNameState():
        return changeFileName(_that.fileName);
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
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(String message, String fileNames)? success,
    TResult? Function(String fileName)? changeFileName,
  }) {
    final _that = this;
    switch (_that) {
      case UploadLoadingState() when loading != null:
        return loading();
      case UploadErrorState() when error != null:
        return error(_that.error);
      case UploadSuccessState() when success != null:
        return success(_that.message, _that.fileNames);
      case UploadChangeFileNameState() when changeFileName != null:
        return changeFileName(_that.fileName);
      case _:
        return null;
    }
  }
}

/// @nodoc

class UploadLoadingState
    with DiagnosticableTreeMixin
    implements UploadFileState {
  const UploadLoadingState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'UploadFileState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UploadLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadFileState.loading()';
  }
}

/// @nodoc

class UploadErrorState with DiagnosticableTreeMixin implements UploadFileState {
  const UploadErrorState(this.error);

  final String error;

  /// Create a copy of UploadFileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UploadErrorStateCopyWith<UploadErrorState> get copyWith =>
      _$UploadErrorStateCopyWithImpl<UploadErrorState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'UploadFileState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadFileState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $UploadErrorStateCopyWith<$Res>
    implements $UploadFileStateCopyWith<$Res> {
  factory $UploadErrorStateCopyWith(
          UploadErrorState value, $Res Function(UploadErrorState) _then) =
      _$UploadErrorStateCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$UploadErrorStateCopyWithImpl<$Res>
    implements $UploadErrorStateCopyWith<$Res> {
  _$UploadErrorStateCopyWithImpl(this._self, this._then);

  final UploadErrorState _self;
  final $Res Function(UploadErrorState) _then;

  /// Create a copy of UploadFileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(UploadErrorState(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UploadSuccessState
    with DiagnosticableTreeMixin
    implements UploadFileState {
  const UploadSuccessState(this.message, this.fileNames);

  final String message;
  final String fileNames;

  /// Create a copy of UploadFileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UploadSuccessStateCopyWith<UploadSuccessState> get copyWith =>
      _$UploadSuccessStateCopyWithImpl<UploadSuccessState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'UploadFileState.success'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('fileNames', fileNames));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadSuccessState &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.fileNames, fileNames) ||
                other.fileNames == fileNames));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, fileNames);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadFileState.success(message: $message, fileNames: $fileNames)';
  }
}

/// @nodoc
abstract mixin class $UploadSuccessStateCopyWith<$Res>
    implements $UploadFileStateCopyWith<$Res> {
  factory $UploadSuccessStateCopyWith(
          UploadSuccessState value, $Res Function(UploadSuccessState) _then) =
      _$UploadSuccessStateCopyWithImpl;
  @useResult
  $Res call({String message, String fileNames});
}

/// @nodoc
class _$UploadSuccessStateCopyWithImpl<$Res>
    implements $UploadSuccessStateCopyWith<$Res> {
  _$UploadSuccessStateCopyWithImpl(this._self, this._then);

  final UploadSuccessState _self;
  final $Res Function(UploadSuccessState) _then;

  /// Create a copy of UploadFileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? fileNames = null,
  }) {
    return _then(UploadSuccessState(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == fileNames
          ? _self.fileNames
          : fileNames // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UploadChangeFileNameState
    with DiagnosticableTreeMixin
    implements UploadFileState {
  const UploadChangeFileNameState(this.fileName);

  final String fileName;

  /// Create a copy of UploadFileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UploadChangeFileNameStateCopyWith<UploadChangeFileNameState> get copyWith =>
      _$UploadChangeFileNameStateCopyWithImpl<UploadChangeFileNameState>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'UploadFileState.changeFileName'))
      ..add(DiagnosticsProperty('fileName', fileName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadChangeFileNameState &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileName);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadFileState.changeFileName(fileName: $fileName)';
  }
}

/// @nodoc
abstract mixin class $UploadChangeFileNameStateCopyWith<$Res>
    implements $UploadFileStateCopyWith<$Res> {
  factory $UploadChangeFileNameStateCopyWith(UploadChangeFileNameState value,
          $Res Function(UploadChangeFileNameState) _then) =
      _$UploadChangeFileNameStateCopyWithImpl;
  @useResult
  $Res call({String fileName});
}

/// @nodoc
class _$UploadChangeFileNameStateCopyWithImpl<$Res>
    implements $UploadChangeFileNameStateCopyWith<$Res> {
  _$UploadChangeFileNameStateCopyWithImpl(this._self, this._then);

  final UploadChangeFileNameState _self;
  final $Res Function(UploadChangeFileNameState) _then;

  /// Create a copy of UploadFileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fileName = null,
  }) {
    return _then(UploadChangeFileNameState(
      null == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
