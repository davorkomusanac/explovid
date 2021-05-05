part of 'block_user_bloc.dart';

@freezed
abstract class BlockUserState with _$BlockUserState {
  const factory BlockUserState({
    @required String errorMessage,
    @required int numberToForceUpdateState,
    @required List<String> blockedUsers,
    @required List<String> usersBlockedBy,
  }) = _BlockUserState;

  factory BlockUserState.initial() => BlockUserState(
        errorMessage: '',
        numberToForceUpdateState: 1,
        blockedUsers: <String>[],
        usersBlockedBy: <String>[],
      );
}
