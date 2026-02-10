part of 'login_bloc.dart';

enum LoginStatus { init, loading, error, success }

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') url,
    @Default('') username,
    @Default('') password,
    @Default(LoginStatus.init) status,
    String? invalidUrlMessage,
    String? invalidUsernameMessage,
    String? invalidPasswordMessage,
    Failure? error,
  }) = _Initial;
}
