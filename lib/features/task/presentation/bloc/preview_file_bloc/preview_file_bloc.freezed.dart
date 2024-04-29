// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preview_file_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PreviewFileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isOffline, Document document) previewFile,
    required TResult Function() deletePreviewFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isOffline, Document document)? previewFile,
    TResult? Function()? deletePreviewFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isOffline, Document document)? previewFile,
    TResult Function()? deletePreviewFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PreviewFile value) previewFile,
    required TResult Function(_DeletePreviewFile value) deletePreviewFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PreviewFile value)? previewFile,
    TResult? Function(_DeletePreviewFile value)? deletePreviewFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PreviewFile value)? previewFile,
    TResult Function(_DeletePreviewFile value)? deletePreviewFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewFileEventCopyWith<$Res> {
  factory $PreviewFileEventCopyWith(
          PreviewFileEvent value, $Res Function(PreviewFileEvent) then) =
      _$PreviewFileEventCopyWithImpl<$Res, PreviewFileEvent>;
}

/// @nodoc
class _$PreviewFileEventCopyWithImpl<$Res, $Val extends PreviewFileEvent>
    implements $PreviewFileEventCopyWith<$Res> {
  _$PreviewFileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PreviewFileImplCopyWith<$Res> {
  factory _$$PreviewFileImplCopyWith(
          _$PreviewFileImpl value, $Res Function(_$PreviewFileImpl) then) =
      __$$PreviewFileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isOffline, Document document});

  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class __$$PreviewFileImplCopyWithImpl<$Res>
    extends _$PreviewFileEventCopyWithImpl<$Res, _$PreviewFileImpl>
    implements _$$PreviewFileImplCopyWith<$Res> {
  __$$PreviewFileImplCopyWithImpl(
      _$PreviewFileImpl _value, $Res Function(_$PreviewFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOffline = null,
    Object? document = null,
  }) {
    return _then(_$PreviewFileImpl(
      null == isOffline
          ? _value.isOffline
          : isOffline // ignore: cast_nullable_to_non_nullable
              as bool,
      null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<$Res> get document {
    return $DocumentCopyWith<$Res>(_value.document, (value) {
      return _then(_value.copyWith(document: value));
    });
  }
}

/// @nodoc

class _$PreviewFileImpl with DiagnosticableTreeMixin implements _PreviewFile {
  const _$PreviewFileImpl(this.isOffline, this.document);

  @override
  final bool isOffline;
  @override
  final Document document;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreviewFileEvent.previewFile(isOffline: $isOffline, document: $document)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PreviewFileEvent.previewFile'))
      ..add(DiagnosticsProperty('isOffline', isOffline))
      ..add(DiagnosticsProperty('document', document));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviewFileImpl &&
            (identical(other.isOffline, isOffline) ||
                other.isOffline == isOffline) &&
            (identical(other.document, document) ||
                other.document == document));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isOffline, document);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviewFileImplCopyWith<_$PreviewFileImpl> get copyWith =>
      __$$PreviewFileImplCopyWithImpl<_$PreviewFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isOffline, Document document) previewFile,
    required TResult Function() deletePreviewFile,
  }) {
    return previewFile(isOffline, document);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isOffline, Document document)? previewFile,
    TResult? Function()? deletePreviewFile,
  }) {
    return previewFile?.call(isOffline, document);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isOffline, Document document)? previewFile,
    TResult Function()? deletePreviewFile,
    required TResult orElse(),
  }) {
    if (previewFile != null) {
      return previewFile(isOffline, document);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PreviewFile value) previewFile,
    required TResult Function(_DeletePreviewFile value) deletePreviewFile,
  }) {
    return previewFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PreviewFile value)? previewFile,
    TResult? Function(_DeletePreviewFile value)? deletePreviewFile,
  }) {
    return previewFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PreviewFile value)? previewFile,
    TResult Function(_DeletePreviewFile value)? deletePreviewFile,
    required TResult orElse(),
  }) {
    if (previewFile != null) {
      return previewFile(this);
    }
    return orElse();
  }
}

abstract class _PreviewFile implements PreviewFileEvent {
  const factory _PreviewFile(final bool isOffline, final Document document) =
      _$PreviewFileImpl;

  bool get isOffline;
  Document get document;
  @JsonKey(ignore: true)
  _$$PreviewFileImplCopyWith<_$PreviewFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePreviewFileImplCopyWith<$Res> {
  factory _$$DeletePreviewFileImplCopyWith(_$DeletePreviewFileImpl value,
          $Res Function(_$DeletePreviewFileImpl) then) =
      __$$DeletePreviewFileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletePreviewFileImplCopyWithImpl<$Res>
    extends _$PreviewFileEventCopyWithImpl<$Res, _$DeletePreviewFileImpl>
    implements _$$DeletePreviewFileImplCopyWith<$Res> {
  __$$DeletePreviewFileImplCopyWithImpl(_$DeletePreviewFileImpl _value,
      $Res Function(_$DeletePreviewFileImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeletePreviewFileImpl
    with DiagnosticableTreeMixin
    implements _DeletePreviewFile {
  const _$DeletePreviewFileImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreviewFileEvent.deletePreviewFile()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'PreviewFileEvent.deletePreviewFile'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeletePreviewFileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isOffline, Document document) previewFile,
    required TResult Function() deletePreviewFile,
  }) {
    return deletePreviewFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isOffline, Document document)? previewFile,
    TResult? Function()? deletePreviewFile,
  }) {
    return deletePreviewFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isOffline, Document document)? previewFile,
    TResult Function()? deletePreviewFile,
    required TResult orElse(),
  }) {
    if (deletePreviewFile != null) {
      return deletePreviewFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PreviewFile value) previewFile,
    required TResult Function(_DeletePreviewFile value) deletePreviewFile,
  }) {
    return deletePreviewFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PreviewFile value)? previewFile,
    TResult? Function(_DeletePreviewFile value)? deletePreviewFile,
  }) {
    return deletePreviewFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PreviewFile value)? previewFile,
    TResult Function(_DeletePreviewFile value)? deletePreviewFile,
    required TResult orElse(),
  }) {
    if (deletePreviewFile != null) {
      return deletePreviewFile(this);
    }
    return orElse();
  }
}

abstract class _DeletePreviewFile implements PreviewFileEvent {
  const factory _DeletePreviewFile() = _$DeletePreviewFileImpl;
}

/// @nodoc
mixin _$PreviewFileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String filePath) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(String filePath)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String filePath)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreviewLoadingState value) loading,
    required TResult Function(PreviewErrorState value) error,
    required TResult Function(PreviewSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreviewLoadingState value)? loading,
    TResult? Function(PreviewErrorState value)? error,
    TResult? Function(PreviewSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreviewLoadingState value)? loading,
    TResult Function(PreviewErrorState value)? error,
    TResult Function(PreviewSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewFileStateCopyWith<$Res> {
  factory $PreviewFileStateCopyWith(
          PreviewFileState value, $Res Function(PreviewFileState) then) =
      _$PreviewFileStateCopyWithImpl<$Res, PreviewFileState>;
}

/// @nodoc
class _$PreviewFileStateCopyWithImpl<$Res, $Val extends PreviewFileState>
    implements $PreviewFileStateCopyWith<$Res> {
  _$PreviewFileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PreviewLoadingStateImplCopyWith<$Res> {
  factory _$$PreviewLoadingStateImplCopyWith(_$PreviewLoadingStateImpl value,
          $Res Function(_$PreviewLoadingStateImpl) then) =
      __$$PreviewLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreviewLoadingStateImplCopyWithImpl<$Res>
    extends _$PreviewFileStateCopyWithImpl<$Res, _$PreviewLoadingStateImpl>
    implements _$$PreviewLoadingStateImplCopyWith<$Res> {
  __$$PreviewLoadingStateImplCopyWithImpl(_$PreviewLoadingStateImpl _value,
      $Res Function(_$PreviewLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PreviewLoadingStateImpl
    with DiagnosticableTreeMixin
    implements PreviewLoadingState {
  const _$PreviewLoadingStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreviewFileState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PreviewFileState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviewLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String filePath) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(String filePath)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String filePath)? success,
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
    required TResult Function(PreviewLoadingState value) loading,
    required TResult Function(PreviewErrorState value) error,
    required TResult Function(PreviewSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreviewLoadingState value)? loading,
    TResult? Function(PreviewErrorState value)? error,
    TResult? Function(PreviewSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreviewLoadingState value)? loading,
    TResult Function(PreviewErrorState value)? error,
    TResult Function(PreviewSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PreviewLoadingState implements PreviewFileState {
  const factory PreviewLoadingState() = _$PreviewLoadingStateImpl;
}

/// @nodoc
abstract class _$$PreviewErrorStateImplCopyWith<$Res> {
  factory _$$PreviewErrorStateImplCopyWith(_$PreviewErrorStateImpl value,
          $Res Function(_$PreviewErrorStateImpl) then) =
      __$$PreviewErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$PreviewErrorStateImplCopyWithImpl<$Res>
    extends _$PreviewFileStateCopyWithImpl<$Res, _$PreviewErrorStateImpl>
    implements _$$PreviewErrorStateImplCopyWith<$Res> {
  __$$PreviewErrorStateImplCopyWithImpl(_$PreviewErrorStateImpl _value,
      $Res Function(_$PreviewErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PreviewErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PreviewErrorStateImpl
    with DiagnosticableTreeMixin
    implements PreviewErrorState {
  const _$PreviewErrorStateImpl(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreviewFileState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PreviewFileState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviewErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviewErrorStateImplCopyWith<_$PreviewErrorStateImpl> get copyWith =>
      __$$PreviewErrorStateImplCopyWithImpl<_$PreviewErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String filePath) success,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(String filePath)? success,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String filePath)? success,
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
    required TResult Function(PreviewLoadingState value) loading,
    required TResult Function(PreviewErrorState value) error,
    required TResult Function(PreviewSuccessState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreviewLoadingState value)? loading,
    TResult? Function(PreviewErrorState value)? error,
    TResult? Function(PreviewSuccessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreviewLoadingState value)? loading,
    TResult Function(PreviewErrorState value)? error,
    TResult Function(PreviewSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PreviewErrorState implements PreviewFileState {
  const factory PreviewErrorState(final String error) = _$PreviewErrorStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$PreviewErrorStateImplCopyWith<_$PreviewErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreviewSuccessStateImplCopyWith<$Res> {
  factory _$$PreviewSuccessStateImplCopyWith(_$PreviewSuccessStateImpl value,
          $Res Function(_$PreviewSuccessStateImpl) then) =
      __$$PreviewSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String filePath});
}

/// @nodoc
class __$$PreviewSuccessStateImplCopyWithImpl<$Res>
    extends _$PreviewFileStateCopyWithImpl<$Res, _$PreviewSuccessStateImpl>
    implements _$$PreviewSuccessStateImplCopyWith<$Res> {
  __$$PreviewSuccessStateImplCopyWithImpl(_$PreviewSuccessStateImpl _value,
      $Res Function(_$PreviewSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
  }) {
    return _then(_$PreviewSuccessStateImpl(
      null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PreviewSuccessStateImpl
    with DiagnosticableTreeMixin
    implements PreviewSuccessState {
  const _$PreviewSuccessStateImpl(this.filePath);

  @override
  final String filePath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreviewFileState.success(filePath: $filePath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PreviewFileState.success'))
      ..add(DiagnosticsProperty('filePath', filePath));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviewSuccessStateImpl &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviewSuccessStateImplCopyWith<_$PreviewSuccessStateImpl> get copyWith =>
      __$$PreviewSuccessStateImplCopyWithImpl<_$PreviewSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(String filePath) success,
  }) {
    return success(filePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(String filePath)? success,
  }) {
    return success?.call(filePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(String filePath)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(filePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreviewLoadingState value) loading,
    required TResult Function(PreviewErrorState value) error,
    required TResult Function(PreviewSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreviewLoadingState value)? loading,
    TResult? Function(PreviewErrorState value)? error,
    TResult? Function(PreviewSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreviewLoadingState value)? loading,
    TResult Function(PreviewErrorState value)? error,
    TResult Function(PreviewSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PreviewSuccessState implements PreviewFileState {
  const factory PreviewSuccessState(final String filePath) =
      _$PreviewSuccessStateImpl;

  String get filePath;
  @JsonKey(ignore: true)
  _$$PreviewSuccessStateImplCopyWith<_$PreviewSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
