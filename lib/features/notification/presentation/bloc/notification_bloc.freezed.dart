// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize) getNotifications,
    required TResult Function(String uuid) markReadNotification,
    required TResult Function() markReadAllNotification,
    required TResult Function(bool isConnected) showOfflinePopupEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int pageSize)? getNotifications,
    TResult? Function(String uuid)? markReadNotification,
    TResult? Function()? markReadAllNotification,
    TResult? Function(bool isConnected)? showOfflinePopupEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize)? getNotifications,
    TResult Function(String uuid)? markReadNotification,
    TResult Function()? markReadAllNotification,
    TResult Function(bool isConnected)? showOfflinePopupEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNotification value) getNotifications,
    required TResult Function(_MarkReadNotification value) markReadNotification,
    required TResult Function(_MarkReadAll value) markReadAllNotification,
    required TResult Function(ShowOfflinePopupEvent value)
        showOfflinePopupEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNotification value)? getNotifications,
    TResult? Function(_MarkReadNotification value)? markReadNotification,
    TResult? Function(_MarkReadAll value)? markReadAllNotification,
    TResult? Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNotification value)? getNotifications,
    TResult Function(_MarkReadNotification value)? markReadNotification,
    TResult Function(_MarkReadAll value)? markReadAllNotification,
    TResult Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res, $Val extends NotificationEvent>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetNotificationImplCopyWith<$Res> {
  factory _$$GetNotificationImplCopyWith(_$GetNotificationImpl value,
          $Res Function(_$GetNotificationImpl) then) =
      __$$GetNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, int pageSize});
}

/// @nodoc
class __$$GetNotificationImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$GetNotificationImpl>
    implements _$$GetNotificationImplCopyWith<$Res> {
  __$$GetNotificationImplCopyWithImpl(
      _$GetNotificationImpl _value, $Res Function(_$GetNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
  }) {
    return _then(_$GetNotificationImpl(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetNotificationImpl
    with DiagnosticableTreeMixin
    implements _GetNotification {
  const _$GetNotificationImpl(this.page, this.pageSize);

  @override
  final int page;
  @override
  final int pageSize;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationEvent.getNotifications(page: $page, pageSize: $pageSize)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationEvent.getNotifications'))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('pageSize', pageSize));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotificationImplCopyWith<_$GetNotificationImpl> get copyWith =>
      __$$GetNotificationImplCopyWithImpl<_$GetNotificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize) getNotifications,
    required TResult Function(String uuid) markReadNotification,
    required TResult Function() markReadAllNotification,
    required TResult Function(bool isConnected) showOfflinePopupEvent,
  }) {
    return getNotifications(page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int pageSize)? getNotifications,
    TResult? Function(String uuid)? markReadNotification,
    TResult? Function()? markReadAllNotification,
    TResult? Function(bool isConnected)? showOfflinePopupEvent,
  }) {
    return getNotifications?.call(page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize)? getNotifications,
    TResult Function(String uuid)? markReadNotification,
    TResult Function()? markReadAllNotification,
    TResult Function(bool isConnected)? showOfflinePopupEvent,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications(page, pageSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNotification value) getNotifications,
    required TResult Function(_MarkReadNotification value) markReadNotification,
    required TResult Function(_MarkReadAll value) markReadAllNotification,
    required TResult Function(ShowOfflinePopupEvent value)
        showOfflinePopupEvent,
  }) {
    return getNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNotification value)? getNotifications,
    TResult? Function(_MarkReadNotification value)? markReadNotification,
    TResult? Function(_MarkReadAll value)? markReadAllNotification,
    TResult? Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
  }) {
    return getNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNotification value)? getNotifications,
    TResult Function(_MarkReadNotification value)? markReadNotification,
    TResult Function(_MarkReadAll value)? markReadAllNotification,
    TResult Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications(this);
    }
    return orElse();
  }
}

abstract class _GetNotification implements NotificationEvent {
  const factory _GetNotification(final int page, final int pageSize) =
      _$GetNotificationImpl;

  int get page;
  int get pageSize;
  @JsonKey(ignore: true)
  _$$GetNotificationImplCopyWith<_$GetNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkReadNotificationImplCopyWith<$Res> {
  factory _$$MarkReadNotificationImplCopyWith(_$MarkReadNotificationImpl value,
          $Res Function(_$MarkReadNotificationImpl) then) =
      __$$MarkReadNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uuid});
}

/// @nodoc
class __$$MarkReadNotificationImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$MarkReadNotificationImpl>
    implements _$$MarkReadNotificationImplCopyWith<$Res> {
  __$$MarkReadNotificationImplCopyWithImpl(_$MarkReadNotificationImpl _value,
      $Res Function(_$MarkReadNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
  }) {
    return _then(_$MarkReadNotificationImpl(
      null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarkReadNotificationImpl
    with DiagnosticableTreeMixin
    implements _MarkReadNotification {
  const _$MarkReadNotificationImpl(this.uuid);

  @override
  final String uuid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationEvent.markReadNotification(uuid: $uuid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'NotificationEvent.markReadNotification'))
      ..add(DiagnosticsProperty('uuid', uuid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkReadNotificationImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkReadNotificationImplCopyWith<_$MarkReadNotificationImpl>
      get copyWith =>
          __$$MarkReadNotificationImplCopyWithImpl<_$MarkReadNotificationImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize) getNotifications,
    required TResult Function(String uuid) markReadNotification,
    required TResult Function() markReadAllNotification,
    required TResult Function(bool isConnected) showOfflinePopupEvent,
  }) {
    return markReadNotification(uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int pageSize)? getNotifications,
    TResult? Function(String uuid)? markReadNotification,
    TResult? Function()? markReadAllNotification,
    TResult? Function(bool isConnected)? showOfflinePopupEvent,
  }) {
    return markReadNotification?.call(uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize)? getNotifications,
    TResult Function(String uuid)? markReadNotification,
    TResult Function()? markReadAllNotification,
    TResult Function(bool isConnected)? showOfflinePopupEvent,
    required TResult orElse(),
  }) {
    if (markReadNotification != null) {
      return markReadNotification(uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNotification value) getNotifications,
    required TResult Function(_MarkReadNotification value) markReadNotification,
    required TResult Function(_MarkReadAll value) markReadAllNotification,
    required TResult Function(ShowOfflinePopupEvent value)
        showOfflinePopupEvent,
  }) {
    return markReadNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNotification value)? getNotifications,
    TResult? Function(_MarkReadNotification value)? markReadNotification,
    TResult? Function(_MarkReadAll value)? markReadAllNotification,
    TResult? Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
  }) {
    return markReadNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNotification value)? getNotifications,
    TResult Function(_MarkReadNotification value)? markReadNotification,
    TResult Function(_MarkReadAll value)? markReadAllNotification,
    TResult Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    required TResult orElse(),
  }) {
    if (markReadNotification != null) {
      return markReadNotification(this);
    }
    return orElse();
  }
}

abstract class _MarkReadNotification implements NotificationEvent {
  const factory _MarkReadNotification(final String uuid) =
      _$MarkReadNotificationImpl;

  String get uuid;
  @JsonKey(ignore: true)
  _$$MarkReadNotificationImplCopyWith<_$MarkReadNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkReadAllImplCopyWith<$Res> {
  factory _$$MarkReadAllImplCopyWith(
          _$MarkReadAllImpl value, $Res Function(_$MarkReadAllImpl) then) =
      __$$MarkReadAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MarkReadAllImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$MarkReadAllImpl>
    implements _$$MarkReadAllImplCopyWith<$Res> {
  __$$MarkReadAllImplCopyWithImpl(
      _$MarkReadAllImpl _value, $Res Function(_$MarkReadAllImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MarkReadAllImpl with DiagnosticableTreeMixin implements _MarkReadAll {
  const _$MarkReadAllImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationEvent.markReadAllNotification()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'NotificationEvent.markReadAllNotification'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MarkReadAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize) getNotifications,
    required TResult Function(String uuid) markReadNotification,
    required TResult Function() markReadAllNotification,
    required TResult Function(bool isConnected) showOfflinePopupEvent,
  }) {
    return markReadAllNotification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int pageSize)? getNotifications,
    TResult? Function(String uuid)? markReadNotification,
    TResult? Function()? markReadAllNotification,
    TResult? Function(bool isConnected)? showOfflinePopupEvent,
  }) {
    return markReadAllNotification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize)? getNotifications,
    TResult Function(String uuid)? markReadNotification,
    TResult Function()? markReadAllNotification,
    TResult Function(bool isConnected)? showOfflinePopupEvent,
    required TResult orElse(),
  }) {
    if (markReadAllNotification != null) {
      return markReadAllNotification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNotification value) getNotifications,
    required TResult Function(_MarkReadNotification value) markReadNotification,
    required TResult Function(_MarkReadAll value) markReadAllNotification,
    required TResult Function(ShowOfflinePopupEvent value)
        showOfflinePopupEvent,
  }) {
    return markReadAllNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNotification value)? getNotifications,
    TResult? Function(_MarkReadNotification value)? markReadNotification,
    TResult? Function(_MarkReadAll value)? markReadAllNotification,
    TResult? Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
  }) {
    return markReadAllNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNotification value)? getNotifications,
    TResult Function(_MarkReadNotification value)? markReadNotification,
    TResult Function(_MarkReadAll value)? markReadAllNotification,
    TResult Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    required TResult orElse(),
  }) {
    if (markReadAllNotification != null) {
      return markReadAllNotification(this);
    }
    return orElse();
  }
}

abstract class _MarkReadAll implements NotificationEvent {
  const factory _MarkReadAll() = _$MarkReadAllImpl;
}

/// @nodoc
abstract class _$$ShowOfflinePopupEventImplCopyWith<$Res> {
  factory _$$ShowOfflinePopupEventImplCopyWith(
          _$ShowOfflinePopupEventImpl value,
          $Res Function(_$ShowOfflinePopupEventImpl) then) =
      __$$ShowOfflinePopupEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class __$$ShowOfflinePopupEventImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$ShowOfflinePopupEventImpl>
    implements _$$ShowOfflinePopupEventImplCopyWith<$Res> {
  __$$ShowOfflinePopupEventImplCopyWithImpl(_$ShowOfflinePopupEventImpl _value,
      $Res Function(_$ShowOfflinePopupEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
  }) {
    return _then(_$ShowOfflinePopupEventImpl(
      null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShowOfflinePopupEventImpl
    with DiagnosticableTreeMixin
    implements ShowOfflinePopupEvent {
  const _$ShowOfflinePopupEventImpl(this.isConnected);

  @override
  final bool isConnected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationEvent.showOfflinePopupEvent(isConnected: $isConnected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NotificationEvent.showOfflinePopupEvent'))
      ..add(DiagnosticsProperty('isConnected', isConnected));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowOfflinePopupEventImpl &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowOfflinePopupEventImplCopyWith<_$ShowOfflinePopupEventImpl>
      get copyWith => __$$ShowOfflinePopupEventImplCopyWithImpl<
          _$ShowOfflinePopupEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize) getNotifications,
    required TResult Function(String uuid) markReadNotification,
    required TResult Function() markReadAllNotification,
    required TResult Function(bool isConnected) showOfflinePopupEvent,
  }) {
    return showOfflinePopupEvent(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int pageSize)? getNotifications,
    TResult? Function(String uuid)? markReadNotification,
    TResult? Function()? markReadAllNotification,
    TResult? Function(bool isConnected)? showOfflinePopupEvent,
  }) {
    return showOfflinePopupEvent?.call(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize)? getNotifications,
    TResult Function(String uuid)? markReadNotification,
    TResult Function()? markReadAllNotification,
    TResult Function(bool isConnected)? showOfflinePopupEvent,
    required TResult orElse(),
  }) {
    if (showOfflinePopupEvent != null) {
      return showOfflinePopupEvent(isConnected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNotification value) getNotifications,
    required TResult Function(_MarkReadNotification value) markReadNotification,
    required TResult Function(_MarkReadAll value) markReadAllNotification,
    required TResult Function(ShowOfflinePopupEvent value)
        showOfflinePopupEvent,
  }) {
    return showOfflinePopupEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNotification value)? getNotifications,
    TResult? Function(_MarkReadNotification value)? markReadNotification,
    TResult? Function(_MarkReadAll value)? markReadAllNotification,
    TResult? Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
  }) {
    return showOfflinePopupEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNotification value)? getNotifications,
    TResult Function(_MarkReadNotification value)? markReadNotification,
    TResult Function(_MarkReadAll value)? markReadAllNotification,
    TResult Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    required TResult orElse(),
  }) {
    if (showOfflinePopupEvent != null) {
      return showOfflinePopupEvent(this);
    }
    return orElse();
  }
}

abstract class ShowOfflinePopupEvent implements NotificationEvent {
  const factory ShowOfflinePopupEvent(final bool isConnected) =
      _$ShowOfflinePopupEventImpl;

  bool get isConnected;
  @JsonKey(ignore: true)
  _$$ShowOfflinePopupEventImplCopyWith<_$ShowOfflinePopupEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<Notification> notifications, bool isOnline)
        success,
    required TResult Function(String uuid) markedReadNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Notification> notifications, bool isOnline)? success,
    TResult? Function(String uuid)? markedReadNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Notification> notifications, bool isOnline)? success,
    TResult Function(String uuid)? markedReadNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationLoadingState value) loading,
    required TResult Function(NotificationErrorState value) error,
    required TResult Function(NotificationSuccessState value) success,
    required TResult Function(NotificationMarkedReadState value)
        markedReadNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationLoadingState value)? loading,
    TResult? Function(NotificationErrorState value)? error,
    TResult? Function(NotificationSuccessState value)? success,
    TResult? Function(NotificationMarkedReadState value)?
        markedReadNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationLoadingState value)? loading,
    TResult Function(NotificationErrorState value)? error,
    TResult Function(NotificationSuccessState value)? success,
    TResult Function(NotificationMarkedReadState value)? markedReadNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NotificationLoadingStateImplCopyWith<$Res> {
  factory _$$NotificationLoadingStateImplCopyWith(
          _$NotificationLoadingStateImpl value,
          $Res Function(_$NotificationLoadingStateImpl) then) =
      __$$NotificationLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationLoadingStateImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res,
        _$NotificationLoadingStateImpl>
    implements _$$NotificationLoadingStateImplCopyWith<$Res> {
  __$$NotificationLoadingStateImplCopyWithImpl(
      _$NotificationLoadingStateImpl _value,
      $Res Function(_$NotificationLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotificationLoadingStateImpl
    with DiagnosticableTreeMixin
    implements NotificationLoadingState {
  const _$NotificationLoadingStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'NotificationState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<Notification> notifications, bool isOnline)
        success,
    required TResult Function(String uuid) markedReadNotification,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Notification> notifications, bool isOnline)? success,
    TResult? Function(String uuid)? markedReadNotification,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Notification> notifications, bool isOnline)? success,
    TResult Function(String uuid)? markedReadNotification,
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
    required TResult Function(NotificationLoadingState value) loading,
    required TResult Function(NotificationErrorState value) error,
    required TResult Function(NotificationSuccessState value) success,
    required TResult Function(NotificationMarkedReadState value)
        markedReadNotification,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationLoadingState value)? loading,
    TResult? Function(NotificationErrorState value)? error,
    TResult? Function(NotificationSuccessState value)? success,
    TResult? Function(NotificationMarkedReadState value)?
        markedReadNotification,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationLoadingState value)? loading,
    TResult Function(NotificationErrorState value)? error,
    TResult Function(NotificationSuccessState value)? success,
    TResult Function(NotificationMarkedReadState value)? markedReadNotification,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NotificationLoadingState implements NotificationState {
  const factory NotificationLoadingState() = _$NotificationLoadingStateImpl;
}

/// @nodoc
abstract class _$$NotificationErrorStateImplCopyWith<$Res> {
  factory _$$NotificationErrorStateImplCopyWith(
          _$NotificationErrorStateImpl value,
          $Res Function(_$NotificationErrorStateImpl) then) =
      __$$NotificationErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$NotificationErrorStateImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$NotificationErrorStateImpl>
    implements _$$NotificationErrorStateImplCopyWith<$Res> {
  __$$NotificationErrorStateImplCopyWithImpl(
      _$NotificationErrorStateImpl _value,
      $Res Function(_$NotificationErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$NotificationErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotificationErrorStateImpl
    with DiagnosticableTreeMixin
    implements NotificationErrorState {
  const _$NotificationErrorStateImpl(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationErrorStateImplCopyWith<_$NotificationErrorStateImpl>
      get copyWith => __$$NotificationErrorStateImplCopyWithImpl<
          _$NotificationErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<Notification> notifications, bool isOnline)
        success,
    required TResult Function(String uuid) markedReadNotification,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Notification> notifications, bool isOnline)? success,
    TResult? Function(String uuid)? markedReadNotification,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Notification> notifications, bool isOnline)? success,
    TResult Function(String uuid)? markedReadNotification,
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
    required TResult Function(NotificationLoadingState value) loading,
    required TResult Function(NotificationErrorState value) error,
    required TResult Function(NotificationSuccessState value) success,
    required TResult Function(NotificationMarkedReadState value)
        markedReadNotification,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationLoadingState value)? loading,
    TResult? Function(NotificationErrorState value)? error,
    TResult? Function(NotificationSuccessState value)? success,
    TResult? Function(NotificationMarkedReadState value)?
        markedReadNotification,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationLoadingState value)? loading,
    TResult Function(NotificationErrorState value)? error,
    TResult Function(NotificationSuccessState value)? success,
    TResult Function(NotificationMarkedReadState value)? markedReadNotification,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class NotificationErrorState implements NotificationState {
  const factory NotificationErrorState(final String error) =
      _$NotificationErrorStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$NotificationErrorStateImplCopyWith<_$NotificationErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationSuccessStateImplCopyWith<$Res> {
  factory _$$NotificationSuccessStateImplCopyWith(
          _$NotificationSuccessStateImpl value,
          $Res Function(_$NotificationSuccessStateImpl) then) =
      __$$NotificationSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Notification> notifications, bool isOnline});
}

/// @nodoc
class __$$NotificationSuccessStateImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res,
        _$NotificationSuccessStateImpl>
    implements _$$NotificationSuccessStateImplCopyWith<$Res> {
  __$$NotificationSuccessStateImplCopyWithImpl(
      _$NotificationSuccessStateImpl _value,
      $Res Function(_$NotificationSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
    Object? isOnline = null,
  }) {
    return _then(_$NotificationSuccessStateImpl(
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notification>,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NotificationSuccessStateImpl
    with DiagnosticableTreeMixin
    implements NotificationSuccessState {
  const _$NotificationSuccessStateImpl(
      {required final List<Notification> notifications, this.isOnline = true})
      : _notifications = notifications;

  final List<Notification> _notifications;
  @override
  List<Notification> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  @JsonKey()
  final bool isOnline;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationState.success(notifications: $notifications, isOnline: $isOnline)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationState.success'))
      ..add(DiagnosticsProperty('notifications', notifications))
      ..add(DiagnosticsProperty('isOnline', isOnline));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationSuccessStateImpl &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_notifications), isOnline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationSuccessStateImplCopyWith<_$NotificationSuccessStateImpl>
      get copyWith => __$$NotificationSuccessStateImplCopyWithImpl<
          _$NotificationSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<Notification> notifications, bool isOnline)
        success,
    required TResult Function(String uuid) markedReadNotification,
  }) {
    return success(notifications, isOnline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Notification> notifications, bool isOnline)? success,
    TResult? Function(String uuid)? markedReadNotification,
  }) {
    return success?.call(notifications, isOnline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Notification> notifications, bool isOnline)? success,
    TResult Function(String uuid)? markedReadNotification,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(notifications, isOnline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationLoadingState value) loading,
    required TResult Function(NotificationErrorState value) error,
    required TResult Function(NotificationSuccessState value) success,
    required TResult Function(NotificationMarkedReadState value)
        markedReadNotification,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationLoadingState value)? loading,
    TResult? Function(NotificationErrorState value)? error,
    TResult? Function(NotificationSuccessState value)? success,
    TResult? Function(NotificationMarkedReadState value)?
        markedReadNotification,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationLoadingState value)? loading,
    TResult Function(NotificationErrorState value)? error,
    TResult Function(NotificationSuccessState value)? success,
    TResult Function(NotificationMarkedReadState value)? markedReadNotification,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class NotificationSuccessState implements NotificationState {
  const factory NotificationSuccessState(
      {required final List<Notification> notifications,
      final bool isOnline}) = _$NotificationSuccessStateImpl;

  List<Notification> get notifications;
  bool get isOnline;
  @JsonKey(ignore: true)
  _$$NotificationSuccessStateImplCopyWith<_$NotificationSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationMarkedReadStateImplCopyWith<$Res> {
  factory _$$NotificationMarkedReadStateImplCopyWith(
          _$NotificationMarkedReadStateImpl value,
          $Res Function(_$NotificationMarkedReadStateImpl) then) =
      __$$NotificationMarkedReadStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uuid});
}

/// @nodoc
class __$$NotificationMarkedReadStateImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res,
        _$NotificationMarkedReadStateImpl>
    implements _$$NotificationMarkedReadStateImplCopyWith<$Res> {
  __$$NotificationMarkedReadStateImplCopyWithImpl(
      _$NotificationMarkedReadStateImpl _value,
      $Res Function(_$NotificationMarkedReadStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
  }) {
    return _then(_$NotificationMarkedReadStateImpl(
      null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotificationMarkedReadStateImpl
    with DiagnosticableTreeMixin
    implements NotificationMarkedReadState {
  const _$NotificationMarkedReadStateImpl(this.uuid);

  @override
  final String uuid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationState.markedReadNotification(uuid: $uuid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NotificationState.markedReadNotification'))
      ..add(DiagnosticsProperty('uuid', uuid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationMarkedReadStateImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationMarkedReadStateImplCopyWith<_$NotificationMarkedReadStateImpl>
      get copyWith => __$$NotificationMarkedReadStateImplCopyWithImpl<
          _$NotificationMarkedReadStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<Notification> notifications, bool isOnline)
        success,
    required TResult Function(String uuid) markedReadNotification,
  }) {
    return markedReadNotification(uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Notification> notifications, bool isOnline)? success,
    TResult? Function(String uuid)? markedReadNotification,
  }) {
    return markedReadNotification?.call(uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Notification> notifications, bool isOnline)? success,
    TResult Function(String uuid)? markedReadNotification,
    required TResult orElse(),
  }) {
    if (markedReadNotification != null) {
      return markedReadNotification(uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationLoadingState value) loading,
    required TResult Function(NotificationErrorState value) error,
    required TResult Function(NotificationSuccessState value) success,
    required TResult Function(NotificationMarkedReadState value)
        markedReadNotification,
  }) {
    return markedReadNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationLoadingState value)? loading,
    TResult? Function(NotificationErrorState value)? error,
    TResult? Function(NotificationSuccessState value)? success,
    TResult? Function(NotificationMarkedReadState value)?
        markedReadNotification,
  }) {
    return markedReadNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationLoadingState value)? loading,
    TResult Function(NotificationErrorState value)? error,
    TResult Function(NotificationSuccessState value)? success,
    TResult Function(NotificationMarkedReadState value)? markedReadNotification,
    required TResult orElse(),
  }) {
    if (markedReadNotification != null) {
      return markedReadNotification(this);
    }
    return orElse();
  }
}

abstract class NotificationMarkedReadState implements NotificationState {
  const factory NotificationMarkedReadState(final String uuid) =
      _$NotificationMarkedReadStateImpl;

  String get uuid;
  @JsonKey(ignore: true)
  _$$NotificationMarkedReadStateImplCopyWith<_$NotificationMarkedReadStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
