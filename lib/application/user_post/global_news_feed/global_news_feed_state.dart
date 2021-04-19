part of 'global_news_feed_bloc.dart';

@freezed
abstract class GlobalNewsFeedState with _$GlobalNewsFeedState {
  const factory GlobalNewsFeedState({
    @required bool isLoadingReviews,
    @required List<OurUserPost> reviews,
    //pagination
    @required Timestamp reviewLastInListTimestamp,
    @required int nextPage,
    @required bool isThereMoreReviewsToLoad,
    //Refresh indicator
    @required bool isRefreshingReviews,
  }) = _GlobalNewsFeedState;

  factory GlobalNewsFeedState.initial() => GlobalNewsFeedState(
        isLoadingReviews: true,
        reviews: [],
        reviewLastInListTimestamp: Timestamp.now(),
        nextPage: 1,
        isThereMoreReviewsToLoad: true,
        isRefreshingReviews: false,
      );
}
