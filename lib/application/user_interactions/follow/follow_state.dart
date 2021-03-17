part of 'follow_bloc.dart';

@freezed
abstract class FollowState with _$FollowState {
  const factory FollowState({
    @required bool isSubmitting,
    @required bool isFollowing,
    @required String errorMessage,
  }) = _FollowState;

  factory FollowState.initial() => FollowState(
        isSubmitting: false,
        isFollowing: false,
        errorMessage: '',
      );
}
