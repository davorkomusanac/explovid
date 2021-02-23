import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:explovid/domain/user_profile_db/user_feedback_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'feedback_event.dart';
part 'feedback_state.dart';

part 'feedback_bloc.freezed.dart';

class FeedbackBloc extends Bloc<FeedbackEvent, FeedbackState> {
  UserFeedbackRepository _userFeedbackRepository;

  FeedbackBloc(this._userFeedbackRepository) : super(FeedbackState.initial());

  @override
  Stream<FeedbackState> mapEventToState(
    FeedbackEvent event,
  ) async* {
    yield* event.map(
      feedbackMessageChanged: (e) async* {
        yield state.copyWith(
          feedbackMessage: e.feedback,
          errorMessage: '',
        );
      },
      feedbackTypeChanged: (e) async* {
        yield state.copyWith(
          isFeedbackTypeFeature: !state.isFeedbackTypeFeature,
          errorMessage: '',
        );
      },
      submitPressed: (e) async* {
        String returnVal = "";
        yield state.copyWith(
          isSubmitting: true,
          errorMessage: '',
        );
        if (state.isFeedbackTypeFeature) {
          returnVal = await _userFeedbackRepository.addFeatureFeedback(state.feedbackMessage);
        } else {
          returnVal = await _userFeedbackRepository.addBugFeedback(state.feedbackMessage);
        }
        yield state.copyWith(
          feedbackMessage: "",
          isSubmitting: false,
          errorMessage: returnVal,
        );
      },
    );
  }
}
