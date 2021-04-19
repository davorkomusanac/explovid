part of 'user_news_feed_bloc.dart';

@freezed
abstract class UserNewsFeedState with _$UserNewsFeedState {
  const factory UserNewsFeedState({
    @required bool isLoadingReviews,
    @required List<OurUserPost> reviews,
    //pagination
    @required Timestamp reviewLastInListTimestamp,
    @required int nextPage,
    @required bool isThereMoreReviewsToLoad,
    //Refresh indicator
    @required bool isRefreshingReviews,
  }) = _UserNewsFeedState;

  factory UserNewsFeedState.initial() => UserNewsFeedState(
        isLoadingReviews: true,
        reviews: [],
        reviewLastInListTimestamp: Timestamp.now(),
        nextPage: 1,
        isThereMoreReviewsToLoad: true,
        isRefreshingReviews: false,
      );
}
