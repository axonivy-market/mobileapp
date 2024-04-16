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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int pageSize)? getNotifications,
    TResult? Function(String uuid)? markReadNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize)? getNotifications,
    TResult Function(String uuid)? markReadNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNotification value) getNotifications,
    required TResult Function(_MarkReadNotification value) markReadNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNotification value)? getNotifications,
    TResult? Function(_MarkReadNotification value)? markReadNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNotification value)? getNotifications,
    TResult Function(_MarkReadNotification value)? markReadNotification,
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
  }) {
    return getNotifications(page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int pageSize)? getNotifications,
    TResult? Function(String uuid)? markReadNotification,
  }) {
    return getNotifications?.call(page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize)? getNotifications,
    TResult Function(String uuid)? markReadNotification,
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
  }) {
    return getNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNotification value)? getNotifications,
    TResult? Function(_MarkReadNotification value)? markReadNotification,
  }) {
    return getNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNotification value)? getNotifications,
    TResult Function(_MarkReadNotification value)? markReadNotification,
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
  }) {
    return markReadNotification(uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int pageSize)? getNotifications,
    TResult? Function(String uuid)? markReadNotification,
  }) {
    return markReadNotification?.call(uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize)? getNotifications,
    TResult Function(String uuid)? markReadNotification,
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
  }) {
    return markReadNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNotification value)? getNotifications,
    TResult? Function(_MarkReadNotification value)? markReadNotification,
  }) {
    return markReadNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNotification value)? getNotifications,
    TResult Function(_MarkReadNotification value)? markReadNotification,
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
mixin _$NotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<Notification> notifications) success,
    required TResult Function(String uuid) markedReadNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Notification> notifications)? success,
    TResult? Function(String uuid)? markedReadNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Notification> notifications)? success,
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
    required TResult Function(List<Notification> notifications) success,
    required TResult Function(String uuid) markedReadNotification,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Notification> notifications)? success,
    TResult? Function(String uuid)? markedReadNotification,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Notification> notifications)? success,
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
    required TResult Function(List<Notification> notifications) success,
    required TResult Function(String uuid) markedReadNotification,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Notification> notifications)? success,
    TResult? Function(String uuid)? markedReadNotification,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Notification> notifications)? success,
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
  $Res call({List<Notification> notifications});
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
  }) {
    return _then(_$NotificationSuccessStateImpl(
      null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notification>,
    ));
  }
}

/// @nodoc

class _$NotificationSuccessStateImpl
    with DiagnosticableTreeMixin
    implements NotificationSuccessState {
  const _$NotificationSuccessStateImpl(final List<Notification> notifications)
      : _notifications = notifications;

  final List<Notification> _notifications;
  @override
  List<Notification> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationState.success(notifications: $notifications)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationState.success'))
      ..add(DiagnosticsProperty('notifications', notifications));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationSuccessStateImpl &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notifications));

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
    required TResult Function(List<Notification> notifications) success,
    required TResult Function(String uuid) markedReadNotification,
  }) {
    return success(notifications);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Notification> notifications)? success,
    TResult? Function(String uuid)? markedReadNotification,
  }) {
    return success?.call(notifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Notification> notifications)? success,
    TResult Function(String uuid)? markedReadNotification,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(notifications);
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
      final List<Notification> notifications) = _$NotificationSuccessStateImpl;

  List<Notification> get notifications;
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
    required TResult Function(List<Notification> notifications) success,
    required TResult Function(String uuid) markedReadNotification,
  }) {
    return markedReadNotification(uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Notification> notifications)? success,
    TResult? Function(String uuid)? markedReadNotification,
  }) {
    return markedReadNotification?.call(uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Notification> notifications)? success,
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
