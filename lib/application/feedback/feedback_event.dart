part of 'feedback_bloc.dart';

@freezed
abstract class FeedbackEvent with _$FeedbackEvent {
  const factory FeedbackEvent.feedbackMessageChanged(String feedback) = _FeedbackMessageChanged;
  const factory FeedbackEvent.feedbackTypeChanged() = _FeedbackTypeChanged;
  const factory FeedbackEvent.submitPressed() = _SubmitPressed;
}
