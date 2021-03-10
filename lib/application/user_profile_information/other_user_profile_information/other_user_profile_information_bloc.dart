import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:explovid/data/models/our_user/our_user.dart';
import 'package:explovid/data/user_profile_db/other_user_profile_db/other_user_profile_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'other_user_profile_information_event.dart';
part 'other_user_profile_information_state.dart';
part 'other_user_profile_information_bloc.freezed.dart';

class OtherUserProfileInformationBloc extends Bloc<OtherUserProfileInformationEvent, OtherUserProfileInformationState> {
  final OtherUserProfileRepository _userProfileRepository;

  OtherUserProfileInformationBloc(this._userProfileRepository) : super(OtherUserProfileInformationState.initial());

  @override
  Stream<OtherUserProfileInformationState> mapEventToState(
    OtherUserProfileInformationEvent event,
  ) async* {
    yield* event.map(
      otherUserProfileLoaded: (e) async* {
        var user = await _userProfileRepository.getUserProfileInformation(userUid: e.ourUser.uid);
        yield state.copyWith(
          isSearching: false,
          ourUser: user,
        );
      },
    );
  }
}
