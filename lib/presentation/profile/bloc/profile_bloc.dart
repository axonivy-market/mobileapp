import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/data/models/profile/profile.dart';
import 'package:axon_ivy/data/repositories/profile/profile_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository _profileRepository;

  ProfileBloc(this._profileRepository) : super(const ProfileState.initial()) {
    on<fetchProfileEvent>(_fetchProfileInfo);
  }

  Future<void> _fetchProfileInfo(event, Emitter emitter) async {
    try {
      final profileInfo = await _profileRepository.getProfileInfo();

      profileInfo.fold(
        (l) {
          debugPrint(l.message);
        },
        (r) {
          SharedPrefs.setProfileInfo(r);
          emitter(ProfileState.profileInfo(r));
        },
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
