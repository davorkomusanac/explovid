part of 'follow_bloc.dart';

@freezed
abstract class FollowState with _$FollowState {
  const factory FollowState({
    @required bool isSubmitting,
    @required bool isFollowing,
    @required String errorMessage,
    @required List<OurUser> followers,
    @required List<OurUser> following,
    @required bool isLoadingFollowList,
    //For pagination
    @required Timestamp followersLastInListTimestamp,
    @required Timestamp followingLastInListTimestamp,
    @required int nextPage,
    @required bool isThereMoreFollowersPageToLoad,
    @required bool isThereMoreFollowingPageToLoad,
  }) = _FollowState;

  factory FollowState.initial() => FollowState(
        isSubmitting: false,
        isFollowing: false,
        errorMessage: '',
        followers: <OurUser>[],
        following: <OurUser>[],
        isLoadingFollowList: false,
        followersLastInListTimestamp: Timestamp.now(),
        followingLastInListTimestamp: Timestamp.now(),
        nextPage: 1,
        isThereMoreFollowersPageToLoad: true,
        isThereMoreFollowingPageToLoad: true,
      );
}
