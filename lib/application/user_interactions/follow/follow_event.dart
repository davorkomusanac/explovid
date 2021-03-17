part of 'follow_bloc.dart';

@freezed
abstract class FollowEvent with _$FollowEvent {
  const factory FollowEvent.checkIfFollowingUserPressed({@required OurUser otherUser}) = _CheckIfFollowingUserPressed;
  const factory FollowEvent.followUserPressed({@required OurUser otherUser}) = _FollowUserPressed;
  const factory FollowEvent.unfollowUserPressed({@required OurUser otherUser}) = _UnfollowUserPressed;
}
