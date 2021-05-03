import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:explovid/data/user_profile_db/current_user_profile_db/user_feedback_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'report_bloc.freezed.dart';
part 'report_event.dart';
part 'report_state.dart';

class ReportBloc extends Bloc<ReportEvent, ReportState> {
  final UserFeedbackRepository _userFeedbackRepository;
  ReportBloc(this._userFeedbackRepository) : super(ReportState.initial());

  @override
  Stream<ReportState> mapEventToState(
    ReportEvent event,
  ) async* {
    yield* event.map(
      reportUserPressed: (e) async* {
        yield state.copyWith(
          errorMessage: '',
          numberToForceUpdateState: 1,
        );
        String returnVal = await _userFeedbackRepository.reportUser(
          reportedUserUid: e.reportedUserUid,
          reportMessage: e.reportMessage,
        );
        yield state.copyWith(
          errorMessage: returnVal,
          numberToForceUpdateState: state.numberToForceUpdateState + 1,
        );
        yield state.copyWith(
          errorMessage: '',
          numberToForceUpdateState: state.numberToForceUpdateState + 1,
        );
      },
      reportPostPressed: (e) async* {
        yield state.copyWith(
          errorMessage: '',
          numberToForceUpdateState: 1,
        );
        String returnVal = await _userFeedbackRepository.reportPost(
          reportedUserUid: e.reportedUserUid,
          reportMessage: e.reportMessage,
          reportedPostText: e.reportedPostText,
          reportedPostUid: e.reportedPostUid,
        );
        yield state.copyWith(
          errorMessage: returnVal,
          numberToForceUpdateState: state.numberToForceUpdateState + 1,
        );
        yield state.copyWith(
          errorMessage: '',
          numberToForceUpdateState: state.numberToForceUpdateState + 1,
        );
      },
      reportCommentPressed: (e) async* {
        yield state.copyWith(
          errorMessage: '',
          numberToForceUpdateState: 1,
        );
        String returnVal = await _userFeedbackRepository.reportComment(
          reportedUserUid: e.reportedUserUid,
          reportMessage: e.reportMessage,
          reportedPostUid: e.reportedPostUid,
          reportedCommentText: e.reportedCommentText,
          reportedCommentUid: e.reportedCommentUid,
        );
        yield state.copyWith(
          errorMessage: returnVal,
          numberToForceUpdateState: state.numberToForceUpdateState + 1,
        );
        yield state.copyWith(
          errorMessage: '',
          numberToForceUpdateState: state.numberToForceUpdateState + 1,
        );
      },
    );
  }
}
