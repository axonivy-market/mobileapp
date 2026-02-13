part of 'login_bloc.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.urlOnChanged(String value) = _UrlOnChanged;
  const factory LoginEvent.usernameOnChanged(String value) = _UsernameOnChanged;
  const factory LoginEvent.passwordOnChanged(String value) = _PasswordOnChanged;
  const factory LoginEvent.submitLogin(
      String url, String password, String username) = _SubmitLogin;
}
