// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent()';
  }
}

/// @nodoc
class $LoginEventCopyWith<$Res> {
  $LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}

/// Adds pattern-matching-related methods to [LoginEvent].
extension LoginEventPatterns on LoginEvent {
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
    TResult Function(_UrlOnChanged value)? urlOnChanged,
    TResult Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_SubmitLogin value)? submitLogin,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UrlOnChanged() when urlOnChanged != null:
        return urlOnChanged(_that);
      case _UsernameOnChanged() when usernameOnChanged != null:
        return usernameOnChanged(_that);
      case _PasswordOnChanged() when passwordOnChanged != null:
        return passwordOnChanged(_that);
      case _SubmitLogin() when submitLogin != null:
        return submitLogin(_that);
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
    required TResult Function(_UrlOnChanged value) urlOnChanged,
    required TResult Function(_UsernameOnChanged value) usernameOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_SubmitLogin value) submitLogin,
  }) {
    final _that = this;
    switch (_that) {
      case _UrlOnChanged():
        return urlOnChanged(_that);
      case _UsernameOnChanged():
        return usernameOnChanged(_that);
      case _PasswordOnChanged():
        return passwordOnChanged(_that);
      case _SubmitLogin():
        return submitLogin(_that);
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
    TResult? Function(_UrlOnChanged value)? urlOnChanged,
    TResult? Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_SubmitLogin value)? submitLogin,
  }) {
    final _that = this;
    switch (_that) {
      case _UrlOnChanged() when urlOnChanged != null:
        return urlOnChanged(_that);
      case _UsernameOnChanged() when usernameOnChanged != null:
        return usernameOnChanged(_that);
      case _PasswordOnChanged() when passwordOnChanged != null:
        return passwordOnChanged(_that);
      case _SubmitLogin() when submitLogin != null:
        return submitLogin(_that);
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
    TResult Function(String value)? urlOnChanged,
    TResult Function(String value)? usernameOnChanged,
    TResult Function(String value)? passwordOnChanged,
    TResult Function(String url, String password, String username)? submitLogin,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UrlOnChanged() when urlOnChanged != null:
        return urlOnChanged(_that.value);
      case _UsernameOnChanged() when usernameOnChanged != null:
        return usernameOnChanged(_that.value);
      case _PasswordOnChanged() when passwordOnChanged != null:
        return passwordOnChanged(_that.value);
      case _SubmitLogin() when submitLogin != null:
        return submitLogin(_that.url, _that.password, _that.username);
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
    required TResult Function(String value) urlOnChanged,
    required TResult Function(String value) usernameOnChanged,
    required TResult Function(String value) passwordOnChanged,
    required TResult Function(String url, String password, String username)
        submitLogin,
  }) {
    final _that = this;
    switch (_that) {
      case _UrlOnChanged():
        return urlOnChanged(_that.value);
      case _UsernameOnChanged():
        return usernameOnChanged(_that.value);
      case _PasswordOnChanged():
        return passwordOnChanged(_that.value);
      case _SubmitLogin():
        return submitLogin(_that.url, _that.password, _that.username);
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
    TResult? Function(String value)? urlOnChanged,
    TResult? Function(String value)? usernameOnChanged,
    TResult? Function(String value)? passwordOnChanged,
    TResult? Function(String url, String password, String username)?
        submitLogin,
  }) {
    final _that = this;
    switch (_that) {
      case _UrlOnChanged() when urlOnChanged != null:
        return urlOnChanged(_that.value);
      case _UsernameOnChanged() when usernameOnChanged != null:
        return usernameOnChanged(_that.value);
      case _PasswordOnChanged() when passwordOnChanged != null:
        return passwordOnChanged(_that.value);
      case _SubmitLogin() when submitLogin != null:
        return submitLogin(_that.url, _that.password, _that.username);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _UrlOnChanged implements LoginEvent {
  const _UrlOnChanged(this.value);

  final String value;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UrlOnChangedCopyWith<_UrlOnChanged> get copyWith =>
      __$UrlOnChangedCopyWithImpl<_UrlOnChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UrlOnChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'LoginEvent.urlOnChanged(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$UrlOnChangedCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$UrlOnChangedCopyWith(
          _UrlOnChanged value, $Res Function(_UrlOnChanged) _then) =
      __$UrlOnChangedCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$UrlOnChangedCopyWithImpl<$Res>
    implements _$UrlOnChangedCopyWith<$Res> {
  __$UrlOnChangedCopyWithImpl(this._self, this._then);

  final _UrlOnChanged _self;
  final $Res Function(_UrlOnChanged) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_UrlOnChanged(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _UsernameOnChanged implements LoginEvent {
  const _UsernameOnChanged(this.value);

  final String value;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UsernameOnChangedCopyWith<_UsernameOnChanged> get copyWith =>
      __$UsernameOnChangedCopyWithImpl<_UsernameOnChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsernameOnChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'LoginEvent.usernameOnChanged(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$UsernameOnChangedCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$UsernameOnChangedCopyWith(
          _UsernameOnChanged value, $Res Function(_UsernameOnChanged) _then) =
      __$UsernameOnChangedCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$UsernameOnChangedCopyWithImpl<$Res>
    implements _$UsernameOnChangedCopyWith<$Res> {
  __$UsernameOnChangedCopyWithImpl(this._self, this._then);

  final _UsernameOnChanged _self;
  final $Res Function(_UsernameOnChanged) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_UsernameOnChanged(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _PasswordOnChanged implements LoginEvent {
  const _PasswordOnChanged(this.value);

  final String value;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PasswordOnChangedCopyWith<_PasswordOnChanged> get copyWith =>
      __$PasswordOnChangedCopyWithImpl<_PasswordOnChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordOnChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'LoginEvent.passwordOnChanged(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$PasswordOnChangedCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$PasswordOnChangedCopyWith(
          _PasswordOnChanged value, $Res Function(_PasswordOnChanged) _then) =
      __$PasswordOnChangedCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$PasswordOnChangedCopyWithImpl<$Res>
    implements _$PasswordOnChangedCopyWith<$Res> {
  __$PasswordOnChangedCopyWithImpl(this._self, this._then);

  final _PasswordOnChanged _self;
  final $Res Function(_PasswordOnChanged) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_PasswordOnChanged(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _SubmitLogin implements LoginEvent {
  const _SubmitLogin(this.url, this.password, this.username);

  final String url;
  final String password;
  final String username;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubmitLoginCopyWith<_SubmitLogin> get copyWith =>
      __$SubmitLoginCopyWithImpl<_SubmitLogin>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubmitLogin &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, password, username);

  @override
  String toString() {
    return 'LoginEvent.submitLogin(url: $url, password: $password, username: $username)';
  }
}

/// @nodoc
abstract mixin class _$SubmitLoginCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$SubmitLoginCopyWith(
          _SubmitLogin value, $Res Function(_SubmitLogin) _then) =
      __$SubmitLoginCopyWithImpl;
  @useResult
  $Res call({String url, String password, String username});
}

/// @nodoc
class __$SubmitLoginCopyWithImpl<$Res> implements _$SubmitLoginCopyWith<$Res> {
  __$SubmitLoginCopyWithImpl(this._self, this._then);

  final _SubmitLogin _self;
  final $Res Function(_SubmitLogin) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = null,
    Object? password = null,
    Object? username = null,
  }) {
    return _then(_SubmitLogin(
      null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$LoginState {
  dynamic get url;
  dynamic get username;
  dynamic get password;
  dynamic get status;
  String? get invalidUrlMessage;
  String? get invalidUsernameMessage;
  String? get invalidPasswordMessage;
  Failure? get error;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginStateCopyWith<LoginState> get copyWith =>
      _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginState &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            (identical(other.invalidUrlMessage, invalidUrlMessage) ||
                other.invalidUrlMessage == invalidUrlMessage) &&
            (identical(other.invalidUsernameMessage, invalidUsernameMessage) ||
                other.invalidUsernameMessage == invalidUsernameMessage) &&
            (identical(other.invalidPasswordMessage, invalidPasswordMessage) ||
                other.invalidPasswordMessage == invalidPasswordMessage) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(status),
      invalidUrlMessage,
      invalidUsernameMessage,
      invalidPasswordMessage,
      error);

  @override
  String toString() {
    return 'LoginState(url: $url, username: $username, password: $password, status: $status, invalidUrlMessage: $invalidUrlMessage, invalidUsernameMessage: $invalidUsernameMessage, invalidPasswordMessage: $invalidPasswordMessage, error: $error)';
  }
}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) _then) =
      _$LoginStateCopyWithImpl;
  @useResult
  $Res call(
      {dynamic url,
      dynamic username,
      dynamic password,
      dynamic status,
      String? invalidUrlMessage,
      String? invalidUsernameMessage,
      String? invalidPasswordMessage,
      Failure? error});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? status = freezed,
    Object? invalidUrlMessage = freezed,
    Object? invalidUsernameMessage = freezed,
    Object? invalidPasswordMessage = freezed,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as dynamic,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as dynamic,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      invalidUrlMessage: freezed == invalidUrlMessage
          ? _self.invalidUrlMessage
          : invalidUrlMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      invalidUsernameMessage: freezed == invalidUsernameMessage
          ? _self.invalidUsernameMessage
          : invalidUsernameMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      invalidPasswordMessage: freezed == invalidPasswordMessage
          ? _self.invalidPasswordMessage
          : invalidPasswordMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Initial value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_Initial value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Initial value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            dynamic url,
            dynamic username,
            dynamic password,
            dynamic status,
            String? invalidUrlMessage,
            String? invalidUsernameMessage,
            String? invalidPasswordMessage,
            Failure? error)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when $default != null:
        return $default(
            _that.url,
            _that.username,
            _that.password,
            _that.status,
            _that.invalidUrlMessage,
            _that.invalidUsernameMessage,
            _that.invalidPasswordMessage,
            _that.error);
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
  TResult when<TResult extends Object?>(
    TResult Function(
            dynamic url,
            dynamic username,
            dynamic password,
            dynamic status,
            String? invalidUrlMessage,
            String? invalidUsernameMessage,
            String? invalidPasswordMessage,
            Failure? error)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return $default(
            _that.url,
            _that.username,
            _that.password,
            _that.status,
            _that.invalidUrlMessage,
            _that.invalidUsernameMessage,
            _that.invalidPasswordMessage,
            _that.error);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            dynamic url,
            dynamic username,
            dynamic password,
            dynamic status,
            String? invalidUrlMessage,
            String? invalidUsernameMessage,
            String? invalidPasswordMessage,
            Failure? error)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial() when $default != null:
        return $default(
            _that.url,
            _that.username,
            _that.password,
            _that.status,
            _that.invalidUrlMessage,
            _that.invalidUsernameMessage,
            _that.invalidPasswordMessage,
            _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements LoginState {
  const _Initial(
      {this.url = '',
      this.username = '',
      this.password = '',
      this.status = LoginStatus.init,
      this.invalidUrlMessage,
      this.invalidUsernameMessage,
      this.invalidPasswordMessage,
      this.error});

  @override
  @JsonKey()
  final dynamic url;
  @override
  @JsonKey()
  final dynamic username;
  @override
  @JsonKey()
  final dynamic password;
  @override
  @JsonKey()
  final dynamic status;
  @override
  final String? invalidUrlMessage;
  @override
  final String? invalidUsernameMessage;
  @override
  final String? invalidPasswordMessage;
  @override
  final Failure? error;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            (identical(other.invalidUrlMessage, invalidUrlMessage) ||
                other.invalidUrlMessage == invalidUrlMessage) &&
            (identical(other.invalidUsernameMessage, invalidUsernameMessage) ||
                other.invalidUsernameMessage == invalidUsernameMessage) &&
            (identical(other.invalidPasswordMessage, invalidPasswordMessage) ||
                other.invalidPasswordMessage == invalidPasswordMessage) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(status),
      invalidUrlMessage,
      invalidUsernameMessage,
      invalidPasswordMessage,
      error);

  @override
  String toString() {
    return 'LoginState(url: $url, username: $username, password: $password, status: $status, invalidUrlMessage: $invalidUrlMessage, invalidUsernameMessage: $invalidUsernameMessage, invalidPasswordMessage: $invalidPasswordMessage, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) =
      __$InitialCopyWithImpl;
  @override
  @useResult
  $Res call(
      {dynamic url,
      dynamic username,
      dynamic password,
      dynamic status,
      String? invalidUrlMessage,
      String? invalidUsernameMessage,
      String? invalidPasswordMessage,
      Failure? error});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? status = freezed,
    Object? invalidUrlMessage = freezed,
    Object? invalidUsernameMessage = freezed,
    Object? invalidPasswordMessage = freezed,
    Object? error = freezed,
  }) {
    return _then(_Initial(
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as dynamic,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as dynamic,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      invalidUrlMessage: freezed == invalidUrlMessage
          ? _self.invalidUrlMessage
          : invalidUrlMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      invalidUsernameMessage: freezed == invalidUsernameMessage
          ? _self.invalidUsernameMessage
          : invalidUsernameMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      invalidPasswordMessage: freezed == invalidPasswordMessage
          ? _self.invalidPasswordMessage
          : invalidPasswordMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

// dart format on
