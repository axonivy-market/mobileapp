part of 'logged_in_cubit.dart';

@freezed
class LoggedInState with _$LoggedInState {
  const factory LoggedInState.initial() = Initial;

  const factory LoggedInState.loggedIn(bool isLoggedIn) = LoggedInSuccessState;
}
