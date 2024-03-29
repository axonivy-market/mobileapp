// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_file_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadFileEvent {
  String get fileName => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fileName, String url) downloadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fileName, String url)? downloadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fileName, String url)? downloadFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadFile value) downloadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DownloadFile value)? downloadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadFile value)? downloadFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadFileEventCopyWith<DownloadFileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadFileEventCopyWith<$Res> {
  factory $DownloadFileEventCopyWith(
          DownloadFileEvent value, $Res Function(DownloadFileEvent) then) =
      _$DownloadFileEventCopyWithImpl<$Res, DownloadFileEvent>;
  @useResult
  $Res call({String fileName, String url});
}

/// @nodoc
class _$DownloadFileEventCopyWithImpl<$Res, $Val extends DownloadFileEvent>
    implements $DownloadFileEventCopyWith<$Res> {
  _$DownloadFileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadFileImplCopyWith<$Res>
    implements $DownloadFileEventCopyWith<$Res> {
  factory _$$DownloadFileImplCopyWith(
          _$DownloadFileImpl value, $Res Function(_$DownloadFileImpl) then) =
      __$$DownloadFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fileName, String url});
}

/// @nodoc
class __$$DownloadFileImplCopyWithImpl<$Res>
    extends _$DownloadFileEventCopyWithImpl<$Res, _$DownloadFileImpl>
    implements _$$DownloadFileImplCopyWith<$Res> {
  __$$DownloadFileImplCopyWithImpl(
      _$DownloadFileImpl _value, $Res Function(_$DownloadFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? url = null,
  }) {
    return _then(_$DownloadFileImpl(
      null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DownloadFileImpl with DiagnosticableTreeMixin implements _DownloadFile {
  const _$DownloadFileImpl(this.fileName, this.url);

  @override
  final String fileName;
  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadFileEvent.downloadFile(fileName: $fileName, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DownloadFileEvent.downloadFile'))
      ..add(DiagnosticsProperty('fileName', fileName))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadFileImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileName, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadFileImplCopyWith<_$DownloadFileImpl> get copyWith =>
      __$$DownloadFileImplCopyWithImpl<_$DownloadFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fileName, String url) downloadFile,
  }) {
    return downloadFile(fileName, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fileName, String url)? downloadFile,
  }) {
    return downloadFile?.call(fileName, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fileName, String url)? downloadFile,
    required TResult orElse(),
  }) {
    if (downloadFile != null) {
      return downloadFile(fileName, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadFile value) downloadFile,
  }) {
    return downloadFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DownloadFile value)? downloadFile,
  }) {
    return downloadFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadFile value)? downloadFile,
    required TResult orElse(),
  }) {
    if (downloadFile != null) {
      return downloadFile(this);
    }
    return orElse();
  }
}

abstract class _DownloadFile implements DownloadFileEvent {
  const factory _DownloadFile(final String fileName, final String url) =
      _$DownloadFileImpl;

  @override
  String get fileName;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$DownloadFileImplCopyWith<_$DownloadFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DownloadFileState {
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
    required TResult Function(DownloadLoadingState value) loading,
    required TResult Function(DownloadErrorState value) error,
    required TResult Function(DownloadSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadLoadingState value)? loading,
    TResult? Function(DownloadErrorState value)? error,
    TResult? Function(DownloadSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadLoadingState value)? loading,
    TResult Function(DownloadErrorState value)? error,
    TResult Function(DownloadSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadFileStateCopyWith<$Res> {
  factory $DownloadFileStateCopyWith(
          DownloadFileState value, $Res Function(DownloadFileState) then) =
      _$DownloadFileStateCopyWithImpl<$Res, DownloadFileState>;
}

/// @nodoc
class _$DownloadFileStateCopyWithImpl<$Res, $Val extends DownloadFileState>
    implements $DownloadFileStateCopyWith<$Res> {
  _$DownloadFileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DownloadLoadingStateImplCopyWith<$Res> {
  factory _$$DownloadLoadingStateImplCopyWith(_$DownloadLoadingStateImpl value,
          $Res Function(_$DownloadLoadingStateImpl) then) =
      __$$DownloadLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DownloadLoadingStateImplCopyWithImpl<$Res>
    extends _$DownloadFileStateCopyWithImpl<$Res, _$DownloadLoadingStateImpl>
    implements _$$DownloadLoadingStateImplCopyWith<$Res> {
  __$$DownloadLoadingStateImplCopyWithImpl(_$DownloadLoadingStateImpl _value,
      $Res Function(_$DownloadLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DownloadLoadingStateImpl
    with DiagnosticableTreeMixin
    implements DownloadLoadingState {
  const _$DownloadLoadingStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadFileState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'DownloadFileState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadLoadingStateImpl);
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
    required TResult Function(DownloadLoadingState value) loading,
    required TResult Function(DownloadErrorState value) error,
    required TResult Function(DownloadSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadLoadingState value)? loading,
    TResult? Function(DownloadErrorState value)? error,
    TResult? Function(DownloadSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadLoadingState value)? loading,
    TResult Function(DownloadErrorState value)? error,
    TResult Function(DownloadSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DownloadLoadingState implements DownloadFileState {
  const factory DownloadLoadingState() = _$DownloadLoadingStateImpl;
}

/// @nodoc
abstract class _$$DownloadErrorStateImplCopyWith<$Res> {
  factory _$$DownloadErrorStateImplCopyWith(_$DownloadErrorStateImpl value,
          $Res Function(_$DownloadErrorStateImpl) then) =
      __$$DownloadErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$DownloadErrorStateImplCopyWithImpl<$Res>
    extends _$DownloadFileStateCopyWithImpl<$Res, _$DownloadErrorStateImpl>
    implements _$$DownloadErrorStateImplCopyWith<$Res> {
  __$$DownloadErrorStateImplCopyWithImpl(_$DownloadErrorStateImpl _value,
      $Res Function(_$DownloadErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DownloadErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DownloadErrorStateImpl
    with DiagnosticableTreeMixin
    implements DownloadErrorState {
  const _$DownloadErrorStateImpl(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadFileState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DownloadFileState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadErrorStateImplCopyWith<_$DownloadErrorStateImpl> get copyWith =>
      __$$DownloadErrorStateImplCopyWithImpl<_$DownloadErrorStateImpl>(
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
    required TResult Function(DownloadLoadingState value) loading,
    required TResult Function(DownloadErrorState value) error,
    required TResult Function(DownloadSuccessState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadLoadingState value)? loading,
    TResult? Function(DownloadErrorState value)? error,
    TResult? Function(DownloadSuccessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadLoadingState value)? loading,
    TResult Function(DownloadErrorState value)? error,
    TResult Function(DownloadSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DownloadErrorState implements DownloadFileState {
  const factory DownloadErrorState(final String error) =
      _$DownloadErrorStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$DownloadErrorStateImplCopyWith<_$DownloadErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DownloadSuccessStateImplCopyWith<$Res> {
  factory _$$DownloadSuccessStateImplCopyWith(_$DownloadSuccessStateImpl value,
          $Res Function(_$DownloadSuccessStateImpl) then) =
      __$$DownloadSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DownloadSuccessStateImplCopyWithImpl<$Res>
    extends _$DownloadFileStateCopyWithImpl<$Res, _$DownloadSuccessStateImpl>
    implements _$$DownloadSuccessStateImplCopyWith<$Res> {
  __$$DownloadSuccessStateImplCopyWithImpl(_$DownloadSuccessStateImpl _value,
      $Res Function(_$DownloadSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DownloadSuccessStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DownloadSuccessStateImpl
    with DiagnosticableTreeMixin
    implements DownloadSuccessState {
  const _$DownloadSuccessStateImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadFileState.success(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DownloadFileState.success'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadSuccessStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadSuccessStateImplCopyWith<_$DownloadSuccessStateImpl>
      get copyWith =>
          __$$DownloadSuccessStateImplCopyWithImpl<_$DownloadSuccessStateImpl>(
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
    required TResult Function(DownloadLoadingState value) loading,
    required TResult Function(DownloadErrorState value) error,
    required TResult Function(DownloadSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadLoadingState value)? loading,
    TResult? Function(DownloadErrorState value)? error,
    TResult? Function(DownloadSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadLoadingState value)? loading,
    TResult Function(DownloadErrorState value)? error,
    TResult Function(DownloadSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class DownloadSuccessState implements DownloadFileState {
  const factory DownloadSuccessState(final String message) =
      _$DownloadSuccessStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$DownloadSuccessStateImplCopyWith<_$DownloadSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
