part of 'feedback_bloc.dart';

@freezed
abstract class FeedbackState with _$FeedbackState {
  const factory FeedbackState({
    @required String feedbackMessage,
    @required String errorMessage,
    @required bool isFeedbackTypeFeature,
    @required bool isSubmitting,
  }) = _FeedbackState;

  factory FeedbackState.initial() => FeedbackState(
        feedbackMessage: '',
        errorMessage: '',
        isFeedbackTypeFeature: true,
        isSubmitting: false,
      );
}
