part of 'block_user_bloc.dart';

@freezed
abstract class BlockUserEvent with _$BlockUserEvent {
  const factory BlockUserEvent.loadInitialListOfBlockedUsersPressed() = _LoadInitialListOfBlockedUsersPressed;
  const factory BlockUserEvent.blockUserPressed({
    @required String blockedUserUid,
  }) = _BlockUserPressed;
  const factory BlockUserEvent.unblockUserPressed({
    @required String blockedUserUid,
  }) = _UnblockUserPressed;
}
