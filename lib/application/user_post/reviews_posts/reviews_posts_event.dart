part of 'reviews_posts_bloc.dart';

@freezed
abstract class ReviewsPostsEvent with _$ReviewsPostsEvent {
  const factory ReviewsPostsEvent.loadReviewsPressed({
    @required String title,
    @required int tmdbId,
    @required bool isOfTypeMovie,
  }) = _LoadReviewsPressed;
  const factory ReviewsPostsEvent.loadReviewsPressedNextPage({
    @required String title,
    @required int tmdbId,
    @required bool isOfTypeMovie,
  }) = _LoadReviewsPressedNextPage;
  const factory ReviewsPostsEvent.loadCurrentUserReviewPressed({
    @required String title,
    @required int tmdbId,
    @required bool isOfTypeMovie,
  }) = _LoadCurrentUserReviewPressed;
}
