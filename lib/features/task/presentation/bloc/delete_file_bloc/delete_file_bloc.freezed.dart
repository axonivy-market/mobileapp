// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_file_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteFileEvent implements DiagnosticableTreeMixin {
  int get caseId;
  Document get document;
  int get taskId;
  bool get offline;

  /// Create a copy of DeleteFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeleteFileEventCopyWith<DeleteFileEvent> get copyWith =>
      _$DeleteFileEventCopyWithImpl<DeleteFileEvent>(
          this as DeleteFileEvent, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'DeleteFileEvent'))
      ..add(DiagnosticsProperty('caseId', caseId))
      ..add(DiagnosticsProperty('document', document))
      ..add(DiagnosticsProperty('taskId', taskId))
      ..add(DiagnosticsProperty('offline', offline));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteFileEvent &&
            (identical(other.caseId, caseId) || other.caseId == caseId) &&
            (identical(other.document, document) ||
                other.document == document) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.offline, offline) || other.offline == offline));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, caseId, document, taskId, offline);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeleteFileEvent(caseId: $caseId, document: $document, taskId: $taskId, offline: $offline)';
  }
}

/// @nodoc
abstract mixin class $DeleteFileEventCopyWith<$Res> {
  factory $DeleteFileEventCopyWith(
          DeleteFileEvent value, $Res Function(DeleteFileEvent) _then) =
      _$DeleteFileEventCopyWithImpl;
  @useResult
  $Res call({int caseId, Document document, int taskId, bool offline});

  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class _$DeleteFileEventCopyWithImpl<$Res>
    implements $DeleteFileEventCopyWith<$Res> {
  _$DeleteFileEventCopyWithImpl(this._self, this._then);

  final DeleteFileEvent _self;
  final $Res Function(DeleteFileEvent) _then;

  /// Create a copy of DeleteFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caseId = null,
    Object? document = null,
    Object? taskId = null,
    Object? offline = null,
  }) {
    return _then(_self.copyWith(
      caseId: null == caseId
          ? _self.caseId
          : caseId // ignore: cast_nullable_to_non_nullable
              as int,
      document: null == document
          ? _self.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
      taskId: null == taskId
          ? _self.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
      offline: null == offline
          ? _self.offline
          : offline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of DeleteFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<$Res> get document {
    return $DocumentCopyWith<$Res>(_self.document, (value) {
      return _then(_self.copyWith(document: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DeleteFileEvent].
extension DeleteFileEventPatterns on DeleteFileEvent {
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
    TResult Function(_DeleteFile value)? deleteFile,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DeleteFile() when deleteFile != null:
        return deleteFile(_that);
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
    required TResult Function(_DeleteFile value) deleteFile,
  }) {
    final _that = this;
    switch (_that) {
      case _DeleteFile():
        return deleteFile(_that);
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
    TResult? Function(_DeleteFile value)? deleteFile,
  }) {
    final _that = this;
    switch (_that) {
      case _DeleteFile() when deleteFile != null:
        return deleteFile(_that);
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
    TResult Function(int caseId, Document document, int taskId, bool offline)?
        deleteFile,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DeleteFile() when deleteFile != null:
        return deleteFile(
            _that.caseId, _that.document, _that.taskId, _that.offline);
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
    required TResult Function(
            int caseId, Document document, int taskId, bool offline)
        deleteFile,
  }) {
    final _that = this;
    switch (_that) {
      case _DeleteFile():
        return deleteFile(
            _that.caseId, _that.document, _that.taskId, _that.offline);
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
    TResult? Function(int caseId, Document document, int taskId, bool offline)?
        deleteFile,
  }) {
    final _that = this;
    switch (_that) {
      case _DeleteFile() when deleteFile != null:
        return deleteFile(
            _that.caseId, _that.document, _that.taskId, _that.offline);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DeleteFile with DiagnosticableTreeMixin implements DeleteFileEvent {
  const _DeleteFile(this.caseId, this.document, this.taskId, this.offline);

  @override
  final int caseId;
  @override
  final Document document;
  @override
  final int taskId;
  @override
  final bool offline;

  /// Create a copy of DeleteFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeleteFileCopyWith<_DeleteFile> get copyWith =>
      __$DeleteFileCopyWithImpl<_DeleteFile>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'DeleteFileEvent.deleteFile'))
      ..add(DiagnosticsProperty('caseId', caseId))
      ..add(DiagnosticsProperty('document', document))
      ..add(DiagnosticsProperty('taskId', taskId))
      ..add(DiagnosticsProperty('offline', offline));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteFile &&
            (identical(other.caseId, caseId) || other.caseId == caseId) &&
            (identical(other.document, document) ||
                other.document == document) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.offline, offline) || other.offline == offline));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, caseId, document, taskId, offline);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeleteFileEvent.deleteFile(caseId: $caseId, document: $document, taskId: $taskId, offline: $offline)';
  }
}

/// @nodoc
abstract mixin class _$DeleteFileCopyWith<$Res>
    implements $DeleteFileEventCopyWith<$Res> {
  factory _$DeleteFileCopyWith(
          _DeleteFile value, $Res Function(_DeleteFile) _then) =
      __$DeleteFileCopyWithImpl;
  @override
  @useResult
  $Res call({int caseId, Document document, int taskId, bool offline});

  @override
  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class __$DeleteFileCopyWithImpl<$Res> implements _$DeleteFileCopyWith<$Res> {
  __$DeleteFileCopyWithImpl(this._self, this._then);

  final _DeleteFile _self;
  final $Res Function(_DeleteFile) _then;

  /// Create a copy of DeleteFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? caseId = null,
    Object? document = null,
    Object? taskId = null,
    Object? offline = null,
  }) {
    return _then(_DeleteFile(
      null == caseId
          ? _self.caseId
          : caseId // ignore: cast_nullable_to_non_nullable
              as int,
      null == document
          ? _self.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
      null == taskId
          ? _self.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
      null == offline
          ? _self.offline
          : offline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of DeleteFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<$Res> get document {
    return $DocumentCopyWith<$Res>(_self.document, (value) {
      return _then(_self.copyWith(document: value));
    });
  }
}

/// @nodoc
mixin _$DeleteFileState implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'DeleteFileState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteFileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeleteFileState()';
  }
}

/// @nodoc
class $DeleteFileStateCopyWith<$Res> {
  $DeleteFileStateCopyWith(
      DeleteFileState _, $Res Function(DeleteFileState) __);
}

/// Adds pattern-matching-related methods to [DeleteFileState].
extension DeleteFileStatePatterns on DeleteFileState {
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
    TResult Function(DeleteLoadingState value)? loading,
    TResult Function(DeleteErrorState value)? error,
    TResult Function(DeleteSuccessState value)? success,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case DeleteLoadingState() when loading != null:
        return loading(_that);
      case DeleteErrorState() when error != null:
        return error(_that);
      case DeleteSuccessState() when success != null:
        return success(_that);
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
    required TResult Function(DeleteLoadingState value) loading,
    required TResult Function(DeleteErrorState value) error,
    required TResult Function(DeleteSuccessState value) success,
  }) {
    final _that = this;
    switch (_that) {
      case DeleteLoadingState():
        return loading(_that);
      case DeleteErrorState():
        return error(_that);
      case DeleteSuccessState():
        return success(_that);
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
    TResult? Function(DeleteLoadingState value)? loading,
    TResult? Function(DeleteErrorState value)? error,
    TResult? Function(DeleteSuccessState value)? success,
  }) {
    final _that = this;
    switch (_that) {
      case DeleteLoadingState() when loading != null:
        return loading(_that);
      case DeleteErrorState() when error != null:
        return error(_that);
      case DeleteSuccessState() when success != null:
        return success(_that);
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
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case DeleteLoadingState() when loading != null:
        return loading();
      case DeleteErrorState() when error != null:
        return error(_that.error);
      case DeleteSuccessState() when success != null:
        return success(_that.message);
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
    required TResult Function(String message) success,
  }) {
    final _that = this;
    switch (_that) {
      case DeleteLoadingState():
        return loading();
      case DeleteErrorState():
        return error(_that.error);
      case DeleteSuccessState():
        return success(_that.message);
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
    TResult? Function(String message)? success,
  }) {
    final _that = this;
    switch (_that) {
      case DeleteLoadingState() when loading != null:
        return loading();
      case DeleteErrorState() when error != null:
        return error(_that.error);
      case DeleteSuccessState() when success != null:
        return success(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class DeleteLoadingState
    with DiagnosticableTreeMixin
    implements DeleteFileState {
  const DeleteLoadingState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'DeleteFileState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeleteFileState.loading()';
  }
}

/// @nodoc

class DeleteErrorState with DiagnosticableTreeMixin implements DeleteFileState {
  const DeleteErrorState(this.error);

  final String error;

  /// Create a copy of DeleteFileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeleteErrorStateCopyWith<DeleteErrorState> get copyWith =>
      _$DeleteErrorStateCopyWithImpl<DeleteErrorState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'DeleteFileState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeleteFileState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $DeleteErrorStateCopyWith<$Res>
    implements $DeleteFileStateCopyWith<$Res> {
  factory $DeleteErrorStateCopyWith(
          DeleteErrorState value, $Res Function(DeleteErrorState) _then) =
      _$DeleteErrorStateCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$DeleteErrorStateCopyWithImpl<$Res>
    implements $DeleteErrorStateCopyWith<$Res> {
  _$DeleteErrorStateCopyWithImpl(this._self, this._then);

  final DeleteErrorState _self;
  final $Res Function(DeleteErrorState) _then;

  /// Create a copy of DeleteFileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(DeleteErrorState(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class DeleteSuccessState
    with DiagnosticableTreeMixin
    implements DeleteFileState {
  const DeleteSuccessState(this.message);

  final String message;

  /// Create a copy of DeleteFileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeleteSuccessStateCopyWith<DeleteSuccessState> get copyWith =>
      _$DeleteSuccessStateCopyWithImpl<DeleteSuccessState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'DeleteFileState.success'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteSuccessState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeleteFileState.success(message: $message)';
  }
}

/// @nodoc
abstract mixin class $DeleteSuccessStateCopyWith<$Res>
    implements $DeleteFileStateCopyWith<$Res> {
  factory $DeleteSuccessStateCopyWith(
          DeleteSuccessState value, $Res Function(DeleteSuccessState) _then) =
      _$DeleteSuccessStateCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$DeleteSuccessStateCopyWithImpl<$Res>
    implements $DeleteSuccessStateCopyWith<$Res> {
  _$DeleteSuccessStateCopyWithImpl(this._self, this._then);

  final DeleteSuccessState _self;
  final $Res Function(DeleteSuccessState) _then;

  /// Create a copy of DeleteFileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(DeleteSuccessState(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
