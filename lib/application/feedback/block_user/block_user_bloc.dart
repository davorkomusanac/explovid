import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:explovid/data/user_profile_db/current_user_profile_db/user_feedback_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'block_user_bloc.freezed.dart';
part 'block_user_event.dart';
part 'block_user_state.dart';

class BlockUserBloc extends Bloc<BlockUserEvent, BlockUserState> {
  final UserFeedbackRepository _userFeedbackRepository;
  BlockUserBloc(this._userFeedbackRepository) : super(BlockUserState.initial());

  @override
  Stream<BlockUserState> mapEventToState(
    BlockUserEvent event,
  ) async* {
    yield* event.map(
      loadInitialListOfBlockedUsersPressed: (e) async* {
        yield state.copyWith(
          errorMessage: '',
          numberToForceUpdateState: 1,
        );

        List<dynamic> result = await _userFeedbackRepository.getBlockedUsers();
        List<String> blockedUsers = result[0];
        List<String> usersBlockedBy = result[1];

        yield state.copyWith(
          numberToForceUpdateState: state.numberToForceUpdateState + 1,
          blockedUsers: blockedUsers,
          usersBlockedBy: usersBlockedBy,
        );
      },
      blockUserPressed: (e) async* {
        yield state.copyWith(
          errorMessage: '',
          numberToForceUpdateState: 1,
        );

        String returnVal = await _userFeedbackRepository.blockUser(
          blockedUserUid: e.blockedUserUid,
        );
        if (returnVal == 'User is blocked, until you unblock him') {
          state.blockedUsers.add(e.blockedUserUid);
        }

        yield state.copyWith(
          errorMessage: returnVal,
          numberToForceUpdateState: state.numberToForceUpdateState + 1,
        );
      },
      unblockUserPressed: (e) async* {
        yield state.copyWith(
          errorMessage: '',
          numberToForceUpdateState: 1,
        );

        String returnVal = await _userFeedbackRepository.unblockUser(
          blockedUserUid: e.blockedUserUid,
        );
        if (returnVal == 'User is successfully unblocked') {
          state.blockedUsers.remove(e.blockedUserUid);
        }

        yield state.copyWith(
          errorMessage: returnVal,
          numberToForceUpdateState: state.numberToForceUpdateState + 1,
        );
      },
    );
  }
}
