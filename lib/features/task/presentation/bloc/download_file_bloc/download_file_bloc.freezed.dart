// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_file_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DownloadFileEvent implements DiagnosticableTreeMixin {
  String get fileName;
  String get url;

  /// Create a copy of DownloadFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DownloadFileEventCopyWith<DownloadFileEvent> get copyWith =>
      _$DownloadFileEventCopyWithImpl<DownloadFileEvent>(
          this as DownloadFileEvent, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'DownloadFileEvent'))
      ..add(DiagnosticsProperty('fileName', fileName))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DownloadFileEvent &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileName, url);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadFileEvent(fileName: $fileName, url: $url)';
  }
}

/// @nodoc
abstract mixin class $DownloadFileEventCopyWith<$Res> {
  factory $DownloadFileEventCopyWith(
          DownloadFileEvent value, $Res Function(DownloadFileEvent) _then) =
      _$DownloadFileEventCopyWithImpl;
  @useResult
  $Res call({String fileName, String url});
}

/// @nodoc
class _$DownloadFileEventCopyWithImpl<$Res>
    implements $DownloadFileEventCopyWith<$Res> {
  _$DownloadFileEventCopyWithImpl(this._self, this._then);

  final DownloadFileEvent _self;
  final $Res Function(DownloadFileEvent) _then;

  /// Create a copy of DownloadFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? url = null,
  }) {
    return _then(_self.copyWith(
      fileName: null == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [DownloadFileEvent].
extension DownloadFileEventPatterns on DownloadFileEvent {
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
    TResult Function(_DownloadFile value)? downloadFile,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DownloadFile() when downloadFile != null:
        return downloadFile(_that);
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
    required TResult Function(_DownloadFile value) downloadFile,
  }) {
    final _that = this;
    switch (_that) {
      case _DownloadFile():
        return downloadFile(_that);
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
    TResult? Function(_DownloadFile value)? downloadFile,
  }) {
    final _that = this;
    switch (_that) {
      case _DownloadFile() when downloadFile != null:
        return downloadFile(_that);
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
    TResult Function(String fileName, String url)? downloadFile,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DownloadFile() when downloadFile != null:
        return downloadFile(_that.fileName, _that.url);
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
    required TResult Function(String fileName, String url) downloadFile,
  }) {
    final _that = this;
    switch (_that) {
      case _DownloadFile():
        return downloadFile(_that.fileName, _that.url);
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
    TResult? Function(String fileName, String url)? downloadFile,
  }) {
    final _that = this;
    switch (_that) {
      case _DownloadFile() when downloadFile != null:
        return downloadFile(_that.fileName, _that.url);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DownloadFile with DiagnosticableTreeMixin implements DownloadFileEvent {
  const _DownloadFile(this.fileName, this.url);

  @override
  final String fileName;
  @override
  final String url;

  /// Create a copy of DownloadFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DownloadFileCopyWith<_DownloadFile> get copyWith =>
      __$DownloadFileCopyWithImpl<_DownloadFile>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'DownloadFileEvent.downloadFile'))
      ..add(DiagnosticsProperty('fileName', fileName))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DownloadFile &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileName, url);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadFileEvent.downloadFile(fileName: $fileName, url: $url)';
  }
}

/// @nodoc
abstract mixin class _$DownloadFileCopyWith<$Res>
    implements $DownloadFileEventCopyWith<$Res> {
  factory _$DownloadFileCopyWith(
          _DownloadFile value, $Res Function(_DownloadFile) _then) =
      __$DownloadFileCopyWithImpl;
  @override
  @useResult
  $Res call({String fileName, String url});
}

/// @nodoc
class __$DownloadFileCopyWithImpl<$Res>
    implements _$DownloadFileCopyWith<$Res> {
  __$DownloadFileCopyWithImpl(this._self, this._then);

  final _DownloadFile _self;
  final $Res Function(_DownloadFile) _then;

  /// Create a copy of DownloadFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fileName = null,
    Object? url = null,
  }) {
    return _then(_DownloadFile(
      null == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$DownloadFileState implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'DownloadFileState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DownloadFileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadFileState()';
  }
}

/// @nodoc
class $DownloadFileStateCopyWith<$Res> {
  $DownloadFileStateCopyWith(
      DownloadFileState _, $Res Function(DownloadFileState) __);
}

/// Adds pattern-matching-related methods to [DownloadFileState].
extension DownloadFileStatePatterns on DownloadFileState {
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
    TResult Function(DownloadLoadingState value)? loading,
    TResult Function(DownloadErrorState value)? error,
    TResult Function(DownloadSuccessState value)? success,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case DownloadLoadingState() when loading != null:
        return loading(_that);
      case DownloadErrorState() when error != null:
        return error(_that);
      case DownloadSuccessState() when success != null:
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
    required TResult Function(DownloadLoadingState value) loading,
    required TResult Function(DownloadErrorState value) error,
    required TResult Function(DownloadSuccessState value) success,
  }) {
    final _that = this;
    switch (_that) {
      case DownloadLoadingState():
        return loading(_that);
      case DownloadErrorState():
        return error(_that);
      case DownloadSuccessState():
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
    TResult? Function(DownloadLoadingState value)? loading,
    TResult? Function(DownloadErrorState value)? error,
    TResult? Function(DownloadSuccessState value)? success,
  }) {
    final _that = this;
    switch (_that) {
      case DownloadLoadingState() when loading != null:
        return loading(_that);
      case DownloadErrorState() when error != null:
        return error(_that);
      case DownloadSuccessState() when success != null:
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
      case DownloadLoadingState() when loading != null:
        return loading();
      case DownloadErrorState() when error != null:
        return error(_that.error);
      case DownloadSuccessState() when success != null:
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
      case DownloadLoadingState():
        return loading();
      case DownloadErrorState():
        return error(_that.error);
      case DownloadSuccessState():
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
      case DownloadLoadingState() when loading != null:
        return loading();
      case DownloadErrorState() when error != null:
        return error(_that.error);
      case DownloadSuccessState() when success != null:
        return success(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class DownloadLoadingState
    with DiagnosticableTreeMixin
    implements DownloadFileState {
  const DownloadLoadingState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'DownloadFileState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DownloadLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadFileState.loading()';
  }
}

/// @nodoc

class DownloadErrorState
    with DiagnosticableTreeMixin
    implements DownloadFileState {
  const DownloadErrorState(this.error);

  final String error;

  /// Create a copy of DownloadFileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DownloadErrorStateCopyWith<DownloadErrorState> get copyWith =>
      _$DownloadErrorStateCopyWithImpl<DownloadErrorState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'DownloadFileState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DownloadErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadFileState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $DownloadErrorStateCopyWith<$Res>
    implements $DownloadFileStateCopyWith<$Res> {
  factory $DownloadErrorStateCopyWith(
          DownloadErrorState value, $Res Function(DownloadErrorState) _then) =
      _$DownloadErrorStateCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$DownloadErrorStateCopyWithImpl<$Res>
    implements $DownloadErrorStateCopyWith<$Res> {
  _$DownloadErrorStateCopyWithImpl(this._self, this._then);

  final DownloadErrorState _self;
  final $Res Function(DownloadErrorState) _then;

  /// Create a copy of DownloadFileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(DownloadErrorState(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class DownloadSuccessState
    with DiagnosticableTreeMixin
    implements DownloadFileState {
  const DownloadSuccessState(this.message);

  final String message;

  /// Create a copy of DownloadFileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DownloadSuccessStateCopyWith<DownloadSuccessState> get copyWith =>
      _$DownloadSuccessStateCopyWithImpl<DownloadSuccessState>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'DownloadFileState.success'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DownloadSuccessState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadFileState.success(message: $message)';
  }
}

/// @nodoc
abstract mixin class $DownloadSuccessStateCopyWith<$Res>
    implements $DownloadFileStateCopyWith<$Res> {
  factory $DownloadSuccessStateCopyWith(DownloadSuccessState value,
          $Res Function(DownloadSuccessState) _then) =
      _$DownloadSuccessStateCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$DownloadSuccessStateCopyWithImpl<$Res>
    implements $DownloadSuccessStateCopyWith<$Res> {
  _$DownloadSuccessStateCopyWithImpl(this._self, this._then);

  final DownloadSuccessState _self;
  final $Res Function(DownloadSuccessState) _then;

  /// Create a copy of DownloadFileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(DownloadSuccessState(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
