part of 'user_news_feed_bloc.dart';

@freezed
abstract class UserNewsFeedEvent with _$UserNewsFeedEvent {
  const factory UserNewsFeedEvent.loadReviewsPressed() = _LoadReviewsPressed;
  const factory UserNewsFeedEvent.loadReviewsPressedNextPage() = _LoadReviewsPressedNextPage;
  const factory UserNewsFeedEvent.refreshReviewsPressed() = _RefreshReviewsPressed;
}
