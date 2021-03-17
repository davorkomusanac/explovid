import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:explovid/data/models/our_user/our_user.dart';
import 'package:explovid/data/user_profile_db/user_actions_db/user_actions_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'follow_bloc.freezed.dart';
part 'follow_event.dart';
part 'follow_state.dart';

class FollowBloc extends Bloc<FollowEvent, FollowState> {
  final UserActionsRepository _userActionsRepository;
  FollowBloc(this._userActionsRepository) : super(FollowState.initial());

  @override
  Stream<FollowState> mapEventToState(
    FollowEvent event,
  ) async* {
    yield* event.map(
      checkIfFollowingUserPressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
        );
        bool isFollowingResult = await _userActionsRepository.isFollowingUser(otherUser: e.otherUser);
        yield state.copyWith(
          isFollowing: isFollowingResult,
          isSubmitting: false,
        );
      },
      followUserPressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
        );
        String result = await _userActionsRepository.followUser(otherUser: e.otherUser);
        yield state.copyWith(
          isSubmitting: false,
          isFollowing: result.isEmpty ? true : false,
          errorMessage: result,
        );
      },
      unfollowUserPressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
        );
        String result = await _userActionsRepository.unfollowUser(otherUser: e.otherUser);
        yield state.copyWith(
          isSubmitting: false,
          isFollowing: result.isEmpty ? false : true,
          errorMessage: result,
        );
      },
    );
  }
}
