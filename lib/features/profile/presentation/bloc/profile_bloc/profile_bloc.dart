import 'package:axon_ivy/features/profile/domain/entities/profile/profile.dart';
import 'package:axon_ivy/features/profile/domain/repositories/profile_repository_interface.dart';
import 'package:axon_ivy/shared/storage/shared_preference.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepositoryInterface _profileRepository;

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
