part of 'follow_bloc.dart';

@freezed
abstract class FollowEvent with _$FollowEvent {
  const factory FollowEvent.checkIfFollowingUserPressed({@required String otherUserUid}) = _CheckIfFollowingUserPressed;
  const factory FollowEvent.followUserPressed({@required String otherUserUid}) = _FollowUserPressed;
  const factory FollowEvent.unfollowUserPressed({@required String otherUserUid}) = _UnfollowUserPressed;
  //Show Followers and Following (both applicable on OtherUser profile and CurrentUser profile page
  const factory FollowEvent.showFollowersPressed({@required String profileOwnerUid}) = _ShowFollowersPressed;
  const factory FollowEvent.showFollowingPressed({@required String profileOwnerUid}) = _ShowFollowingPressed;
  //Pagination
  const factory FollowEvent.nextPageShowFollowersPressed({@required String profileOwnerUid}) = _NextPageShowFollowersPressed;
  const factory FollowEvent.nextPageShowFollowingPressed({@required String profileOwnerUid}) = _NextPageShowFollowingPressed;
}
