import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const ProfileState.initial()) {
    on<LoggedInEvent>(_isLoggedIn);
  }

  Future<void> _isLoggedIn(event, Emitter emitter) async {
    if (event is LoggedInEvent) {
      emitter(LoggedInState(event.isLogged));
    }
  }
}
