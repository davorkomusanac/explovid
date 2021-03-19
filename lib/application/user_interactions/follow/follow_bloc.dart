import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
        bool isFollowingResult = await _userActionsRepository.isFollowingUser(otherUserUid: e.otherUserUid);
        yield state.copyWith(
          isFollowing: isFollowingResult,
          isSubmitting: false,
          errorMessage: '',
        );
      },
      followUserPressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
        );
        String result = await _userActionsRepository.followUser(otherUserUid: e.otherUserUid);
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
        String result = await _userActionsRepository.unfollowUser(otherUserUid: e.otherUserUid);
        yield state.copyWith(
          isSubmitting: false,
          isFollowing: result.isEmpty ? false : true,
          errorMessage: result,
        );
      },
      showFollowersPressed: (e) async* {
        yield state.copyWith(
          isLoadingFollowList: true,
        );
        //Need to get the timestamp so that pagination is possible (startAfter requires the timestamp)
        List<dynamic> followersListWithTime = await _userActionsRepository.showFollowersList(profileOwnerUid: e.profileOwnerUid);
        List<OurUser> followersList = followersListWithTime[0];
        Timestamp time = followersListWithTime[1];
        yield state.copyWith(
          isLoadingFollowList: false,
          followers: followersList,
          followersLastInListTimestamp: time,
          isThereMoreFollowersPageToLoad: followersList.length < 15 ? false : true,
        );
      },
      showFollowingPressed: (e) async* {
        yield state.copyWith(
          isLoadingFollowList: true,
        );
        List<dynamic> followingListWithTime = await _userActionsRepository.showFollowingList(profileOwnerUid: e.profileOwnerUid);
        List<OurUser> followingList = followingListWithTime[0];
        Timestamp time = followingListWithTime[1];
        yield state.copyWith(
          isLoadingFollowList: false,
          following: followingList,
          followingLastInListTimestamp: time,
          isThereMoreFollowingPageToLoad: followingList.length < 15 ? false : true,
        );
      },
      nextPageShowFollowersPressed: (e) async* {
        Timestamp time = Timestamp.now();
        bool isThereMore = false;
        if (state.isThereMoreFollowersPageToLoad) {
          List<dynamic> nextPageFollowersWithTimestamp = await _userActionsRepository.showFollowersListNextPage(
            profileOwnerUid: e.profileOwnerUid,
            lastUserTimestamp: state.followersLastInListTimestamp,
          );
          List<OurUser> nextPageFollowersList = nextPageFollowersWithTimestamp[0];
          time = nextPageFollowersWithTimestamp[1];
          isThereMore = nextPageFollowersList.length < 15 ? false : true;
          for (OurUser user in nextPageFollowersList) {
            state.followers.add(user);
          }
        }
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          followersLastInListTimestamp: time,
          isThereMoreFollowersPageToLoad: isThereMore,
        );
      },
      nextPageShowFollowingPressed: (e) async* {
        Timestamp time = Timestamp.now();
        bool isThereMore = false;
        if (state.isThereMoreFollowingPageToLoad) {
          List<dynamic> nextPageFollowingWithTimestamp = await _userActionsRepository.showFollowingListNextPage(
            profileOwnerUid: e.profileOwnerUid,
            lastUserTimestamp: state.followingLastInListTimestamp,
          );
          List<OurUser> nextPageFollowingList = nextPageFollowingWithTimestamp[0];
          time = nextPageFollowingWithTimestamp[1];
          isThereMore = nextPageFollowingList.length < 15 ? false : true;
          for (OurUser user in nextPageFollowingList) {
            state.following.add(user);
          }
        }
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          followingLastInListTimestamp: time,
          isThereMoreFollowingPageToLoad: isThereMore,
        );
      },
    );
  }
}
