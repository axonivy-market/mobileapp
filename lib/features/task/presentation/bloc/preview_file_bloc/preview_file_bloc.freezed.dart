// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preview_file_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PreviewFileEvent implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'PreviewFileEvent'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PreviewFileEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreviewFileEvent()';
  }
}

/// @nodoc
class $PreviewFileEventCopyWith<$Res> {
  $PreviewFileEventCopyWith(
      PreviewFileEvent _, $Res Function(PreviewFileEvent) __);
}

/// Adds pattern-matching-related methods to [PreviewFileEvent].
extension PreviewFileEventPatterns on PreviewFileEvent {
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
    TResult Function(_PreviewFile value)? previewFile,
    TResult Function(_DeletePreviewFile value)? deletePreviewFile,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PreviewFile() when previewFile != null:
        return previewFile(_that);
      case _DeletePreviewFile() when deletePreviewFile != null:
        return deletePreviewFile(_that);
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
    required TResult Function(_PreviewFile value) previewFile,
    required TResult Function(_DeletePreviewFile value) deletePreviewFile,
  }) {
    final _that = this;
    switch (_that) {
      case _PreviewFile():
        return previewFile(_that);
      case _DeletePreviewFile():
        return deletePreviewFile(_that);
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
    TResult? Function(_PreviewFile value)? previewFile,
    TResult? Function(_DeletePreviewFile value)? deletePreviewFile,
  }) {
    final _that = this;
    switch (_that) {
      case _PreviewFile() when previewFile != null:
        return previewFile(_that);
      case _DeletePreviewFile() when deletePreviewFile != null:
        return deletePreviewFile(_that);
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
    TResult Function(bool isOffline, Document document)? previewFile,
    TResult Function()? deletePreviewFile,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PreviewFile() when previewFile != null:
        return previewFile(_that.isOffline, _that.document);
      case _DeletePreviewFile() when deletePreviewFile != null:
        return deletePreviewFile();
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
    required TResult Function(bool isOffline, Document document) previewFile,
    required TResult Function() deletePreviewFile,
  }) {
    final _that = this;
    switch (_that) {
      case _PreviewFile():
        return previewFile(_that.isOffline, _that.document);
      case _DeletePreviewFile():
        return deletePreviewFile();
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
    TResult? Function(bool isOffline, Document document)? previewFile,
    TResult? Function()? deletePreviewFile,
  }) {
    final _that = this;
    switch (_that) {
      case _PreviewFile() when previewFile != null:
        return previewFile(_that.isOffline, _that.document);
      case _DeletePreviewFile() when deletePreviewFile != null:
        return deletePreviewFile();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PreviewFile with DiagnosticableTreeMixin implements PreviewFileEvent {
  const _PreviewFile(this.isOffline, this.document);

  final bool isOffline;
  final Document document;

  /// Create a copy of PreviewFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PreviewFileCopyWith<_PreviewFile> get copyWith =>
      __$PreviewFileCopyWithImpl<_PreviewFile>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'PreviewFileEvent.previewFile'))
      ..add(DiagnosticsProperty('isOffline', isOffline))
      ..add(DiagnosticsProperty('document', document));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PreviewFile &&
            (identical(other.isOffline, isOffline) ||
                other.isOffline == isOffline) &&
            (identical(other.document, document) ||
                other.document == document));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isOffline, document);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreviewFileEvent.previewFile(isOffline: $isOffline, document: $document)';
  }
}

/// @nodoc
abstract mixin class _$PreviewFileCopyWith<$Res>
    implements $PreviewFileEventCopyWith<$Res> {
  factory _$PreviewFileCopyWith(
          _PreviewFile value, $Res Function(_PreviewFile) _then) =
      __$PreviewFileCopyWithImpl;
  @useResult
  $Res call({bool isOffline, Document document});

  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class __$PreviewFileCopyWithImpl<$Res> implements _$PreviewFileCopyWith<$Res> {
  __$PreviewFileCopyWithImpl(this._self, this._then);

  final _PreviewFile _self;
  final $Res Function(_PreviewFile) _then;

  /// Create a copy of PreviewFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isOffline = null,
    Object? document = null,
  }) {
    return _then(_PreviewFile(
      null == isOffline
          ? _self.isOffline
          : isOffline // ignore: cast_nullable_to_non_nullable
              as bool,
      null == document
          ? _self.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
    ));
  }

  /// Create a copy of PreviewFileEvent
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

class _DeletePreviewFile
    with DiagnosticableTreeMixin
    implements PreviewFileEvent {
  const _DeletePreviewFile();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'PreviewFileEvent.deletePreviewFile'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DeletePreviewFile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreviewFileEvent.deletePreviewFile()';
  }
}

/// @nodoc
mixin _$PreviewFileState implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'PreviewFileState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PreviewFileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreviewFileState()';
  }
}

/// @nodoc
class $PreviewFileStateCopyWith<$Res> {
  $PreviewFileStateCopyWith(
      PreviewFileState _, $Res Function(PreviewFileState) __);
}

/// Adds pattern-matching-related methods to [PreviewFileState].
extension PreviewFileStatePatterns on PreviewFileState {
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
    TResult Function(PreviewLoadingState value)? loading,
    TResult Function(PreviewErrorState value)? error,
    TResult Function(PreviewSuccessState value)? success,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case PreviewLoadingState() when loading != null:
        return loading(_that);
      case PreviewErrorState() when error != null:
        return error(_that);
      case PreviewSuccessState() when success != null:
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
    required TResult Function(PreviewLoadingState value) loading,
    required TResult Function(PreviewErrorState value) error,
    required TResult Function(PreviewSuccessState value) success,
  }) {
    final _that = this;
    switch (_that) {
      case PreviewLoadingState():
        return loading(_that);
      case PreviewErrorState():
        return error(_that);
      case PreviewSuccessState():
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
    TResult? Function(PreviewLoadingState value)? loading,
    TResult? Function(PreviewErrorState value)? error,
    TResult? Function(PreviewSuccessState value)? success,
  }) {
    final _that = this;
    switch (_that) {
      case PreviewLoadingState() when loading != null:
        return loading(_that);
      case PreviewErrorState() when error != null:
        return error(_that);
      case PreviewSuccessState() when success != null:
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
    TResult Function(String filePath, String fileName)? success,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case PreviewLoadingState() when loading != null:
        return loading();
      case PreviewErrorState() when error != null:
        return error(_that.error);
      case PreviewSuccessState() when success != null:
        return success(_that.filePath, _that.fileName);
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
    required TResult Function(String filePath, String fileName) success,
  }) {
    final _that = this;
    switch (_that) {
      case PreviewLoadingState():
        return loading();
      case PreviewErrorState():
        return error(_that.error);
      case PreviewSuccessState():
        return success(_that.filePath, _that.fileName);
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
    TResult? Function(String filePath, String fileName)? success,
  }) {
    final _that = this;
    switch (_that) {
      case PreviewLoadingState() when loading != null:
        return loading();
      case PreviewErrorState() when error != null:
        return error(_that.error);
      case PreviewSuccessState() when success != null:
        return success(_that.filePath, _that.fileName);
      case _:
        return null;
    }
  }
}

/// @nodoc

class PreviewLoadingState
    with DiagnosticableTreeMixin
    implements PreviewFileState {
  const PreviewLoadingState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'PreviewFileState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PreviewLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreviewFileState.loading()';
  }
}

/// @nodoc

class PreviewErrorState
    with DiagnosticableTreeMixin
    implements PreviewFileState {
  const PreviewErrorState(this.error);

  final String error;

  /// Create a copy of PreviewFileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PreviewErrorStateCopyWith<PreviewErrorState> get copyWith =>
      _$PreviewErrorStateCopyWithImpl<PreviewErrorState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'PreviewFileState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PreviewErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreviewFileState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $PreviewErrorStateCopyWith<$Res>
    implements $PreviewFileStateCopyWith<$Res> {
  factory $PreviewErrorStateCopyWith(
          PreviewErrorState value, $Res Function(PreviewErrorState) _then) =
      _$PreviewErrorStateCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$PreviewErrorStateCopyWithImpl<$Res>
    implements $PreviewErrorStateCopyWith<$Res> {
  _$PreviewErrorStateCopyWithImpl(this._self, this._then);

  final PreviewErrorState _self;
  final $Res Function(PreviewErrorState) _then;

  /// Create a copy of PreviewFileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(PreviewErrorState(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class PreviewSuccessState
    with DiagnosticableTreeMixin
    implements PreviewFileState {
  const PreviewSuccessState(this.filePath, this.fileName);

  final String filePath;
  final String fileName;

  /// Create a copy of PreviewFileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PreviewSuccessStateCopyWith<PreviewSuccessState> get copyWith =>
      _$PreviewSuccessStateCopyWithImpl<PreviewSuccessState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'PreviewFileState.success'))
      ..add(DiagnosticsProperty('filePath', filePath))
      ..add(DiagnosticsProperty('fileName', fileName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PreviewSuccessState &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filePath, fileName);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreviewFileState.success(filePath: $filePath, fileName: $fileName)';
  }
}

/// @nodoc
abstract mixin class $PreviewSuccessStateCopyWith<$Res>
    implements $PreviewFileStateCopyWith<$Res> {
  factory $PreviewSuccessStateCopyWith(
          PreviewSuccessState value, $Res Function(PreviewSuccessState) _then) =
      _$PreviewSuccessStateCopyWithImpl;
  @useResult
  $Res call({String filePath, String fileName});
}

/// @nodoc
class _$PreviewSuccessStateCopyWithImpl<$Res>
    implements $PreviewSuccessStateCopyWith<$Res> {
  _$PreviewSuccessStateCopyWithImpl(this._self, this._then);

  final PreviewSuccessState _self;
  final $Res Function(PreviewSuccessState) _then;

  /// Create a copy of PreviewFileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? filePath = null,
    Object? fileName = null,
  }) {
    return _then(PreviewSuccessState(
      null == filePath
          ? _self.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      null == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
