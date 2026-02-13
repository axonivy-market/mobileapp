// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationEvent implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'NotificationEvent'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotificationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationEvent()';
  }
}

/// @nodoc
class $NotificationEventCopyWith<$Res> {
  $NotificationEventCopyWith(
      NotificationEvent _, $Res Function(NotificationEvent) __);
}

/// Adds pattern-matching-related methods to [NotificationEvent].
extension NotificationEventPatterns on NotificationEvent {
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
    TResult Function(_GetNotification value)? getNotifications,
    TResult Function(_MarkReadNotification value)? markReadNotification,
    TResult Function(_MarkReadAll value)? markReadAllNotification,
    TResult Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetNotification() when getNotifications != null:
        return getNotifications(_that);
      case _MarkReadNotification() when markReadNotification != null:
        return markReadNotification(_that);
      case _MarkReadAll() when markReadAllNotification != null:
        return markReadAllNotification(_that);
      case ShowOfflinePopupEvent() when showOfflinePopupEvent != null:
        return showOfflinePopupEvent(_that);
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
    required TResult Function(_GetNotification value) getNotifications,
    required TResult Function(_MarkReadNotification value) markReadNotification,
    required TResult Function(_MarkReadAll value) markReadAllNotification,
    required TResult Function(ShowOfflinePopupEvent value)
        showOfflinePopupEvent,
  }) {
    final _that = this;
    switch (_that) {
      case _GetNotification():
        return getNotifications(_that);
      case _MarkReadNotification():
        return markReadNotification(_that);
      case _MarkReadAll():
        return markReadAllNotification(_that);
      case ShowOfflinePopupEvent():
        return showOfflinePopupEvent(_that);
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
    TResult? Function(_GetNotification value)? getNotifications,
    TResult? Function(_MarkReadNotification value)? markReadNotification,
    TResult? Function(_MarkReadAll value)? markReadAllNotification,
    TResult? Function(ShowOfflinePopupEvent value)? showOfflinePopupEvent,
  }) {
    final _that = this;
    switch (_that) {
      case _GetNotification() when getNotifications != null:
        return getNotifications(_that);
      case _MarkReadNotification() when markReadNotification != null:
        return markReadNotification(_that);
      case _MarkReadAll() when markReadAllNotification != null:
        return markReadAllNotification(_that);
      case ShowOfflinePopupEvent() when showOfflinePopupEvent != null:
        return showOfflinePopupEvent(_that);
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
    TResult Function(int page, int pageSize)? getNotifications,
    TResult Function(String uuid)? markReadNotification,
    TResult Function()? markReadAllNotification,
    TResult Function(bool isConnected)? showOfflinePopupEvent,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetNotification() when getNotifications != null:
        return getNotifications(_that.page, _that.pageSize);
      case _MarkReadNotification() when markReadNotification != null:
        return markReadNotification(_that.uuid);
      case _MarkReadAll() when markReadAllNotification != null:
        return markReadAllNotification();
      case ShowOfflinePopupEvent() when showOfflinePopupEvent != null:
        return showOfflinePopupEvent(_that.isConnected);
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
    required TResult Function(int page, int pageSize) getNotifications,
    required TResult Function(String uuid) markReadNotification,
    required TResult Function() markReadAllNotification,
    required TResult Function(bool isConnected) showOfflinePopupEvent,
  }) {
    final _that = this;
    switch (_that) {
      case _GetNotification():
        return getNotifications(_that.page, _that.pageSize);
      case _MarkReadNotification():
        return markReadNotification(_that.uuid);
      case _MarkReadAll():
        return markReadAllNotification();
      case ShowOfflinePopupEvent():
        return showOfflinePopupEvent(_that.isConnected);
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
    TResult? Function(int page, int pageSize)? getNotifications,
    TResult? Function(String uuid)? markReadNotification,
    TResult? Function()? markReadAllNotification,
    TResult? Function(bool isConnected)? showOfflinePopupEvent,
  }) {
    final _that = this;
    switch (_that) {
      case _GetNotification() when getNotifications != null:
        return getNotifications(_that.page, _that.pageSize);
      case _MarkReadNotification() when markReadNotification != null:
        return markReadNotification(_that.uuid);
      case _MarkReadAll() when markReadAllNotification != null:
        return markReadAllNotification();
      case ShowOfflinePopupEvent() when showOfflinePopupEvent != null:
        return showOfflinePopupEvent(_that.isConnected);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GetNotification
    with DiagnosticableTreeMixin
    implements NotificationEvent {
  const _GetNotification(this.page, this.pageSize);

  final int page;
  final int pageSize;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetNotificationCopyWith<_GetNotification> get copyWith =>
      __$GetNotificationCopyWithImpl<_GetNotification>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NotificationEvent.getNotifications'))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('pageSize', pageSize));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetNotification &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, pageSize);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationEvent.getNotifications(page: $page, pageSize: $pageSize)';
  }
}

/// @nodoc
abstract mixin class _$GetNotificationCopyWith<$Res>
    implements $NotificationEventCopyWith<$Res> {
  factory _$GetNotificationCopyWith(
          _GetNotification value, $Res Function(_GetNotification) _then) =
      __$GetNotificationCopyWithImpl;
  @useResult
  $Res call({int page, int pageSize});
}

/// @nodoc
class __$GetNotificationCopyWithImpl<$Res>
    implements _$GetNotificationCopyWith<$Res> {
  __$GetNotificationCopyWithImpl(this._self, this._then);

  final _GetNotification _self;
  final $Res Function(_GetNotification) _then;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? page = null,
    Object? pageSize = null,
  }) {
    return _then(_GetNotification(
      null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      null == pageSize
          ? _self.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _MarkReadNotification
    with DiagnosticableTreeMixin
    implements NotificationEvent {
  const _MarkReadNotification(this.uuid);

  final String uuid;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MarkReadNotificationCopyWith<_MarkReadNotification> get copyWith =>
      __$MarkReadNotificationCopyWithImpl<_MarkReadNotification>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(
          DiagnosticsProperty('type', 'NotificationEvent.markReadNotification'))
      ..add(DiagnosticsProperty('uuid', uuid));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MarkReadNotification &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationEvent.markReadNotification(uuid: $uuid)';
  }
}

/// @nodoc
abstract mixin class _$MarkReadNotificationCopyWith<$Res>
    implements $NotificationEventCopyWith<$Res> {
  factory _$MarkReadNotificationCopyWith(_MarkReadNotification value,
          $Res Function(_MarkReadNotification) _then) =
      __$MarkReadNotificationCopyWithImpl;
  @useResult
  $Res call({String uuid});
}

/// @nodoc
class __$MarkReadNotificationCopyWithImpl<$Res>
    implements _$MarkReadNotificationCopyWith<$Res> {
  __$MarkReadNotificationCopyWithImpl(this._self, this._then);

  final _MarkReadNotification _self;
  final $Res Function(_MarkReadNotification) _then;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? uuid = null,
  }) {
    return _then(_MarkReadNotification(
      null == uuid
          ? _self.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _MarkReadAll with DiagnosticableTreeMixin implements NotificationEvent {
  const _MarkReadAll();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty(
          'type', 'NotificationEvent.markReadAllNotification'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _MarkReadAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationEvent.markReadAllNotification()';
  }
}

/// @nodoc

class ShowOfflinePopupEvent
    with DiagnosticableTreeMixin
    implements NotificationEvent {
  const ShowOfflinePopupEvent(this.isConnected);

  final bool isConnected;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShowOfflinePopupEventCopyWith<ShowOfflinePopupEvent> get copyWith =>
      _$ShowOfflinePopupEventCopyWithImpl<ShowOfflinePopupEvent>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty(
          'type', 'NotificationEvent.showOfflinePopupEvent'))
      ..add(DiagnosticsProperty('isConnected', isConnected));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowOfflinePopupEvent &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationEvent.showOfflinePopupEvent(isConnected: $isConnected)';
  }
}

/// @nodoc
abstract mixin class $ShowOfflinePopupEventCopyWith<$Res>
    implements $NotificationEventCopyWith<$Res> {
  factory $ShowOfflinePopupEventCopyWith(ShowOfflinePopupEvent value,
          $Res Function(ShowOfflinePopupEvent) _then) =
      _$ShowOfflinePopupEventCopyWithImpl;
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class _$ShowOfflinePopupEventCopyWithImpl<$Res>
    implements $ShowOfflinePopupEventCopyWith<$Res> {
  _$ShowOfflinePopupEventCopyWithImpl(this._self, this._then);

  final ShowOfflinePopupEvent _self;
  final $Res Function(ShowOfflinePopupEvent) _then;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isConnected = null,
  }) {
    return _then(ShowOfflinePopupEvent(
      null == isConnected
          ? _self.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$NotificationState implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'NotificationState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotificationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationState()';
  }
}

/// @nodoc
class $NotificationStateCopyWith<$Res> {
  $NotificationStateCopyWith(
      NotificationState _, $Res Function(NotificationState) __);
}

/// Adds pattern-matching-related methods to [NotificationState].
extension NotificationStatePatterns on NotificationState {
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
    TResult Function(NotificationLoadingState value)? loading,
    TResult Function(NotificationErrorState value)? error,
    TResult Function(NotificationSuccessState value)? success,
    TResult Function(NotificationMarkedReadState value)? markedReadNotification,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case NotificationLoadingState() when loading != null:
        return loading(_that);
      case NotificationErrorState() when error != null:
        return error(_that);
      case NotificationSuccessState() when success != null:
        return success(_that);
      case NotificationMarkedReadState() when markedReadNotification != null:
        return markedReadNotification(_that);
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
    required TResult Function(NotificationLoadingState value) loading,
    required TResult Function(NotificationErrorState value) error,
    required TResult Function(NotificationSuccessState value) success,
    required TResult Function(NotificationMarkedReadState value)
        markedReadNotification,
  }) {
    final _that = this;
    switch (_that) {
      case NotificationLoadingState():
        return loading(_that);
      case NotificationErrorState():
        return error(_that);
      case NotificationSuccessState():
        return success(_that);
      case NotificationMarkedReadState():
        return markedReadNotification(_that);
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
    TResult? Function(NotificationLoadingState value)? loading,
    TResult? Function(NotificationErrorState value)? error,
    TResult? Function(NotificationSuccessState value)? success,
    TResult? Function(NotificationMarkedReadState value)?
        markedReadNotification,
  }) {
    final _that = this;
    switch (_that) {
      case NotificationLoadingState() when loading != null:
        return loading(_that);
      case NotificationErrorState() when error != null:
        return error(_that);
      case NotificationSuccessState() when success != null:
        return success(_that);
      case NotificationMarkedReadState() when markedReadNotification != null:
        return markedReadNotification(_that);
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
    TResult Function(List<Notification> notifications, bool isOnline)? success,
    TResult Function(String uuid)? markedReadNotification,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case NotificationLoadingState() when loading != null:
        return loading();
      case NotificationErrorState() when error != null:
        return error(_that.error);
      case NotificationSuccessState() when success != null:
        return success(_that.notifications, _that.isOnline);
      case NotificationMarkedReadState() when markedReadNotification != null:
        return markedReadNotification(_that.uuid);
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
    required TResult Function(List<Notification> notifications, bool isOnline)
        success,
    required TResult Function(String uuid) markedReadNotification,
  }) {
    final _that = this;
    switch (_that) {
      case NotificationLoadingState():
        return loading();
      case NotificationErrorState():
        return error(_that.error);
      case NotificationSuccessState():
        return success(_that.notifications, _that.isOnline);
      case NotificationMarkedReadState():
        return markedReadNotification(_that.uuid);
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
    TResult? Function(List<Notification> notifications, bool isOnline)? success,
    TResult? Function(String uuid)? markedReadNotification,
  }) {
    final _that = this;
    switch (_that) {
      case NotificationLoadingState() when loading != null:
        return loading();
      case NotificationErrorState() when error != null:
        return error(_that.error);
      case NotificationSuccessState() when success != null:
        return success(_that.notifications, _that.isOnline);
      case NotificationMarkedReadState() when markedReadNotification != null:
        return markedReadNotification(_that.uuid);
      case _:
        return null;
    }
  }
}

/// @nodoc

class NotificationLoadingState
    with DiagnosticableTreeMixin
    implements NotificationState {
  const NotificationLoadingState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'NotificationState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotificationLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationState.loading()';
  }
}

/// @nodoc

class NotificationErrorState
    with DiagnosticableTreeMixin
    implements NotificationState {
  const NotificationErrorState(this.error);

  final String error;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationErrorStateCopyWith<NotificationErrorState> get copyWith =>
      _$NotificationErrorStateCopyWithImpl<NotificationErrorState>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NotificationState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $NotificationErrorStateCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory $NotificationErrorStateCopyWith(NotificationErrorState value,
          $Res Function(NotificationErrorState) _then) =
      _$NotificationErrorStateCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$NotificationErrorStateCopyWithImpl<$Res>
    implements $NotificationErrorStateCopyWith<$Res> {
  _$NotificationErrorStateCopyWithImpl(this._self, this._then);

  final NotificationErrorState _self;
  final $Res Function(NotificationErrorState) _then;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(NotificationErrorState(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class NotificationSuccessState
    with DiagnosticableTreeMixin
    implements NotificationState {
  const NotificationSuccessState(
      {required final List<Notification> notifications, this.isOnline = true})
      : _notifications = notifications;

  final List<Notification> _notifications;
  List<Notification> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @JsonKey()
  final bool isOnline;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationSuccessStateCopyWith<NotificationSuccessState> get copyWith =>
      _$NotificationSuccessStateCopyWithImpl<NotificationSuccessState>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NotificationState.success'))
      ..add(DiagnosticsProperty('notifications', notifications))
      ..add(DiagnosticsProperty('isOnline', isOnline));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationSuccessState &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_notifications), isOnline);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationState.success(notifications: $notifications, isOnline: $isOnline)';
  }
}

/// @nodoc
abstract mixin class $NotificationSuccessStateCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory $NotificationSuccessStateCopyWith(NotificationSuccessState value,
          $Res Function(NotificationSuccessState) _then) =
      _$NotificationSuccessStateCopyWithImpl;
  @useResult
  $Res call({List<Notification> notifications, bool isOnline});
}

/// @nodoc
class _$NotificationSuccessStateCopyWithImpl<$Res>
    implements $NotificationSuccessStateCopyWith<$Res> {
  _$NotificationSuccessStateCopyWithImpl(this._self, this._then);

  final NotificationSuccessState _self;
  final $Res Function(NotificationSuccessState) _then;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? notifications = null,
    Object? isOnline = null,
  }) {
    return _then(NotificationSuccessState(
      notifications: null == notifications
          ? _self._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notification>,
      isOnline: null == isOnline
          ? _self.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class NotificationMarkedReadState
    with DiagnosticableTreeMixin
    implements NotificationState {
  const NotificationMarkedReadState(this.uuid);

  final String uuid;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationMarkedReadStateCopyWith<NotificationMarkedReadState>
      get copyWith => _$NotificationMarkedReadStateCopyWithImpl<
          NotificationMarkedReadState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty(
          'type', 'NotificationState.markedReadNotification'))
      ..add(DiagnosticsProperty('uuid', uuid));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationMarkedReadState &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationState.markedReadNotification(uuid: $uuid)';
  }
}

/// @nodoc
abstract mixin class $NotificationMarkedReadStateCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory $NotificationMarkedReadStateCopyWith(
          NotificationMarkedReadState value,
          $Res Function(NotificationMarkedReadState) _then) =
      _$NotificationMarkedReadStateCopyWithImpl;
  @useResult
  $Res call({String uuid});
}

/// @nodoc
class _$NotificationMarkedReadStateCopyWithImpl<$Res>
    implements $NotificationMarkedReadStateCopyWith<$Res> {
  _$NotificationMarkedReadStateCopyWithImpl(this._self, this._then);

  final NotificationMarkedReadState _self;
  final $Res Function(NotificationMarkedReadState) _then;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? uuid = null,
  }) {
    return _then(NotificationMarkedReadState(
      null == uuid
          ? _self.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
