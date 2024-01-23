part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = Initial;

  const factory ProfileState.loggedIn(bool isLoggedIn) = LoggedInState;
}
