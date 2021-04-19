part of 'global_news_feed_bloc.dart';

@freezed
abstract class GlobalNewsFeedEvent with _$GlobalNewsFeedEvent {
  const factory GlobalNewsFeedEvent.loadReviewsPressed() = _LoadReviewsPressed;
  const factory GlobalNewsFeedEvent.loadReviewsPressedNextPage() = _LoadReviewsPressedNextPage;
  const factory GlobalNewsFeedEvent.refreshReviewsPressed() = _RefreshReviewsPressed;
}
