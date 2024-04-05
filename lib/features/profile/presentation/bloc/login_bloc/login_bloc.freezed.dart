// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) urlOnChanged,
    required TResult Function(String value) usernameOnChanged,
    required TResult Function(String value) passwordOnChanged,
    required TResult Function(String url, String password, String username)
        submitLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? urlOnChanged,
    TResult? Function(String value)? usernameOnChanged,
    TResult? Function(String value)? passwordOnChanged,
    TResult? Function(String url, String password, String username)?
        submitLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? urlOnChanged,
    TResult Function(String value)? usernameOnChanged,
    TResult Function(String value)? passwordOnChanged,
    TResult Function(String url, String password, String username)? submitLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UrlOnChanged value) urlOnChanged,
    required TResult Function(_UsernameOnChanged value) usernameOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_SubmitLogin value) submitLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UrlOnChanged value)? urlOnChanged,
    TResult? Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_SubmitLogin value)? submitLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UrlOnChanged value)? urlOnChanged,
    TResult Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_SubmitLogin value)? submitLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UrlOnChangedImplCopyWith<$Res> {
  factory _$$UrlOnChangedImplCopyWith(
          _$UrlOnChangedImpl value, $Res Function(_$UrlOnChangedImpl) then) =
      __$$UrlOnChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UrlOnChangedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$UrlOnChangedImpl>
    implements _$$UrlOnChangedImplCopyWith<$Res> {
  __$$UrlOnChangedImplCopyWithImpl(
      _$UrlOnChangedImpl _value, $Res Function(_$UrlOnChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UrlOnChangedImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UrlOnChangedImpl implements _UrlOnChanged {
  const _$UrlOnChangedImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginEvent.urlOnChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlOnChangedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlOnChangedImplCopyWith<_$UrlOnChangedImpl> get copyWith =>
      __$$UrlOnChangedImplCopyWithImpl<_$UrlOnChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) urlOnChanged,
    required TResult Function(String value) usernameOnChanged,
    required TResult Function(String value) passwordOnChanged,
    required TResult Function(String url, String password, String username)
        submitLogin,
  }) {
    return urlOnChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? urlOnChanged,
    TResult? Function(String value)? usernameOnChanged,
    TResult? Function(String value)? passwordOnChanged,
    TResult? Function(String url, String password, String username)?
        submitLogin,
  }) {
    return urlOnChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? urlOnChanged,
    TResult Function(String value)? usernameOnChanged,
    TResult Function(String value)? passwordOnChanged,
    TResult Function(String url, String password, String username)? submitLogin,
    required TResult orElse(),
  }) {
    if (urlOnChanged != null) {
      return urlOnChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UrlOnChanged value) urlOnChanged,
    required TResult Function(_UsernameOnChanged value) usernameOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_SubmitLogin value) submitLogin,
  }) {
    return urlOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UrlOnChanged value)? urlOnChanged,
    TResult? Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_SubmitLogin value)? submitLogin,
  }) {
    return urlOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UrlOnChanged value)? urlOnChanged,
    TResult Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_SubmitLogin value)? submitLogin,
    required TResult orElse(),
  }) {
    if (urlOnChanged != null) {
      return urlOnChanged(this);
    }
    return orElse();
  }
}

abstract class _UrlOnChanged implements LoginEvent {
  const factory _UrlOnChanged(final String value) = _$UrlOnChangedImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UrlOnChangedImplCopyWith<_$UrlOnChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsernameOnChangedImplCopyWith<$Res> {
  factory _$$UsernameOnChangedImplCopyWith(_$UsernameOnChangedImpl value,
          $Res Function(_$UsernameOnChangedImpl) then) =
      __$$UsernameOnChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UsernameOnChangedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$UsernameOnChangedImpl>
    implements _$$UsernameOnChangedImplCopyWith<$Res> {
  __$$UsernameOnChangedImplCopyWithImpl(_$UsernameOnChangedImpl _value,
      $Res Function(_$UsernameOnChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UsernameOnChangedImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsernameOnChangedImpl implements _UsernameOnChanged {
  const _$UsernameOnChangedImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginEvent.usernameOnChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsernameOnChangedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsernameOnChangedImplCopyWith<_$UsernameOnChangedImpl> get copyWith =>
      __$$UsernameOnChangedImplCopyWithImpl<_$UsernameOnChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) urlOnChanged,
    required TResult Function(String value) usernameOnChanged,
    required TResult Function(String value) passwordOnChanged,
    required TResult Function(String url, String password, String username)
        submitLogin,
  }) {
    return usernameOnChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? urlOnChanged,
    TResult? Function(String value)? usernameOnChanged,
    TResult? Function(String value)? passwordOnChanged,
    TResult? Function(String url, String password, String username)?
        submitLogin,
  }) {
    return usernameOnChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? urlOnChanged,
    TResult Function(String value)? usernameOnChanged,
    TResult Function(String value)? passwordOnChanged,
    TResult Function(String url, String password, String username)? submitLogin,
    required TResult orElse(),
  }) {
    if (usernameOnChanged != null) {
      return usernameOnChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UrlOnChanged value) urlOnChanged,
    required TResult Function(_UsernameOnChanged value) usernameOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_SubmitLogin value) submitLogin,
  }) {
    return usernameOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UrlOnChanged value)? urlOnChanged,
    TResult? Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_SubmitLogin value)? submitLogin,
  }) {
    return usernameOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UrlOnChanged value)? urlOnChanged,
    TResult Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_SubmitLogin value)? submitLogin,
    required TResult orElse(),
  }) {
    if (usernameOnChanged != null) {
      return usernameOnChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameOnChanged implements LoginEvent {
  const factory _UsernameOnChanged(final String value) =
      _$UsernameOnChangedImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UsernameOnChangedImplCopyWith<_$UsernameOnChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordOnChangedImplCopyWith<$Res> {
  factory _$$PasswordOnChangedImplCopyWith(_$PasswordOnChangedImpl value,
          $Res Function(_$PasswordOnChangedImpl) then) =
      __$$PasswordOnChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$PasswordOnChangedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$PasswordOnChangedImpl>
    implements _$$PasswordOnChangedImplCopyWith<$Res> {
  __$$PasswordOnChangedImplCopyWithImpl(_$PasswordOnChangedImpl _value,
      $Res Function(_$PasswordOnChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$PasswordOnChangedImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordOnChangedImpl implements _PasswordOnChanged {
  const _$PasswordOnChangedImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginEvent.passwordOnChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordOnChangedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordOnChangedImplCopyWith<_$PasswordOnChangedImpl> get copyWith =>
      __$$PasswordOnChangedImplCopyWithImpl<_$PasswordOnChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) urlOnChanged,
    required TResult Function(String value) usernameOnChanged,
    required TResult Function(String value) passwordOnChanged,
    required TResult Function(String url, String password, String username)
        submitLogin,
  }) {
    return passwordOnChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? urlOnChanged,
    TResult? Function(String value)? usernameOnChanged,
    TResult? Function(String value)? passwordOnChanged,
    TResult? Function(String url, String password, String username)?
        submitLogin,
  }) {
    return passwordOnChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? urlOnChanged,
    TResult Function(String value)? usernameOnChanged,
    TResult Function(String value)? passwordOnChanged,
    TResult Function(String url, String password, String username)? submitLogin,
    required TResult orElse(),
  }) {
    if (passwordOnChanged != null) {
      return passwordOnChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UrlOnChanged value) urlOnChanged,
    required TResult Function(_UsernameOnChanged value) usernameOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_SubmitLogin value) submitLogin,
  }) {
    return passwordOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UrlOnChanged value)? urlOnChanged,
    TResult? Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_SubmitLogin value)? submitLogin,
  }) {
    return passwordOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UrlOnChanged value)? urlOnChanged,
    TResult Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_SubmitLogin value)? submitLogin,
    required TResult orElse(),
  }) {
    if (passwordOnChanged != null) {
      return passwordOnChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordOnChanged implements LoginEvent {
  const factory _PasswordOnChanged(final String value) =
      _$PasswordOnChangedImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$PasswordOnChangedImplCopyWith<_$PasswordOnChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitLoginImplCopyWith<$Res> {
  factory _$$SubmitLoginImplCopyWith(
          _$SubmitLoginImpl value, $Res Function(_$SubmitLoginImpl) then) =
      __$$SubmitLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url, String password, String username});
}

/// @nodoc
class __$$SubmitLoginImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$SubmitLoginImpl>
    implements _$$SubmitLoginImplCopyWith<$Res> {
  __$$SubmitLoginImplCopyWithImpl(
      _$SubmitLoginImpl _value, $Res Function(_$SubmitLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? password = null,
    Object? username = null,
  }) {
    return _then(_$SubmitLoginImpl(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubmitLoginImpl implements _SubmitLogin {
  const _$SubmitLoginImpl(this.url, this.password, this.username);

  @override
  final String url;
  @override
  final String password;
  @override
  final String username;

  @override
  String toString() {
    return 'LoginEvent.submitLogin(url: $url, password: $password, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitLoginImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, password, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitLoginImplCopyWith<_$SubmitLoginImpl> get copyWith =>
      __$$SubmitLoginImplCopyWithImpl<_$SubmitLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) urlOnChanged,
    required TResult Function(String value) usernameOnChanged,
    required TResult Function(String value) passwordOnChanged,
    required TResult Function(String url, String password, String username)
        submitLogin,
  }) {
    return submitLogin(url, password, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? urlOnChanged,
    TResult? Function(String value)? usernameOnChanged,
    TResult? Function(String value)? passwordOnChanged,
    TResult? Function(String url, String password, String username)?
        submitLogin,
  }) {
    return submitLogin?.call(url, password, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? urlOnChanged,
    TResult Function(String value)? usernameOnChanged,
    TResult Function(String value)? passwordOnChanged,
    TResult Function(String url, String password, String username)? submitLogin,
    required TResult orElse(),
  }) {
    if (submitLogin != null) {
      return submitLogin(url, password, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UrlOnChanged value) urlOnChanged,
    required TResult Function(_UsernameOnChanged value) usernameOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_SubmitLogin value) submitLogin,
  }) {
    return submitLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UrlOnChanged value)? urlOnChanged,
    TResult? Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_SubmitLogin value)? submitLogin,
  }) {
    return submitLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UrlOnChanged value)? urlOnChanged,
    TResult Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_SubmitLogin value)? submitLogin,
    required TResult orElse(),
  }) {
    if (submitLogin != null) {
      return submitLogin(this);
    }
    return orElse();
  }
}

abstract class _SubmitLogin implements LoginEvent {
  const factory _SubmitLogin(
          final String url, final String password, final String username) =
      _$SubmitLoginImpl;

  String get url;
  String get password;
  String get username;
  @JsonKey(ignore: true)
  _$$SubmitLoginImplCopyWith<_$SubmitLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  dynamic get url => throw _privateConstructorUsedError;
  dynamic get username => throw _privateConstructorUsedError;
  dynamic get password => throw _privateConstructorUsedError;
  dynamic get status => throw _privateConstructorUsedError;
  String? get invalidUrlMessage => throw _privateConstructorUsedError;
  String? get invalidUsernameMessage => throw _privateConstructorUsedError;
  String? get invalidPasswordMessage => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
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
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as dynamic,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as dynamic,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      invalidUrlMessage: freezed == invalidUrlMessage
          ? _value.invalidUrlMessage
          : invalidUrlMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      invalidUsernameMessage: freezed == invalidUsernameMessage
          ? _value.invalidUsernameMessage
          : invalidUsernameMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      invalidPasswordMessage: freezed == invalidPasswordMessage
          ? _value.invalidPasswordMessage
          : invalidPasswordMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
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
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

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
    return _then(_$InitialImpl(
      url: freezed == url ? _value.url! : url,
      username: freezed == username ? _value.username! : username,
      password: freezed == password ? _value.password! : password,
      status: freezed == status ? _value.status! : status,
      invalidUrlMessage: freezed == invalidUrlMessage
          ? _value.invalidUrlMessage
          : invalidUrlMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      invalidUsernameMessage: freezed == invalidUsernameMessage
          ? _value.invalidUsernameMessage
          : invalidUsernameMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      invalidPasswordMessage: freezed == invalidPasswordMessage
          ? _value.invalidPasswordMessage
          : invalidPasswordMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
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

  @override
  String toString() {
    return 'LoginState(url: $url, username: $username, password: $password, status: $status, invalidUrlMessage: $invalidUrlMessage, invalidUsernameMessage: $invalidUsernameMessage, invalidPasswordMessage: $invalidPasswordMessage, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements LoginState {
  const factory _Initial(
      {final dynamic url,
      final dynamic username,
      final dynamic password,
      final dynamic status,
      final String? invalidUrlMessage,
      final String? invalidUsernameMessage,
      final String? invalidPasswordMessage,
      final Failure? error}) = _$InitialImpl;

  @override
  dynamic get url;
  @override
  dynamic get username;
  @override
  dynamic get password;
  @override
  dynamic get status;
  @override
  String? get invalidUrlMessage;
  @override
  String? get invalidUsernameMessage;
  @override
  String? get invalidPasswordMessage;
  @override
  Failure? get error;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
