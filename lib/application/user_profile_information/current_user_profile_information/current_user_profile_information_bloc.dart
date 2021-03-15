import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:explovid/data/models/our_user/our_user.dart';
import 'package:explovid/data/user_profile_db/current_user_profile_db/user_profile_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'current_user_profile_information_bloc.freezed.dart';
part 'current_user_profile_information_event.dart';
part 'current_user_profile_information_state.dart';

class CurrentUserProfileInformationBloc extends Bloc<CurrentUserProfileInformationEvent, CurrentUserProfileInformationState> {
  final UserProfileRepository _userProfileRepository;
  StreamSubscription _streamSubscription;

  CurrentUserProfileInformationBloc(this._userProfileRepository) : super(CurrentUserProfileInformationState.initial());

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }

  @override
  Stream<CurrentUserProfileInformationState> mapEventToState(
    CurrentUserProfileInformationEvent event,
  ) async* {
    yield* event.map(
      loadCurrentUserProfilePressed: (e) async* {
        _streamSubscription?.cancel();
        _streamSubscription = _userProfileRepository.getCurrentUserProfileInformation().listen(
              (ourUser) => add(CurrentUserProfileInformationEvent.currentUserProfileLoaded(ourUser)),
            );
      },
      currentUserProfileLoaded: (e) async* {
        yield state.copyWith(
          isSearching: false,
          ourUser: e.ourUser,
        );
      },
      uploadProfilePhotoPressed: (e) async* {
        yield state.copyWith(
          errorMessage: '',
          isUploadingPhoto: true,
        );
        String result = await _userProfileRepository.uploadProfilePhoto();
        yield state.copyWith(
          errorMessage: result,
          isUploadingPhoto: false,
        );
      },
    );
  }
}
