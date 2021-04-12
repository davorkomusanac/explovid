part of 'reviews_posts_bloc.dart';

@freezed
abstract class ReviewsPostsState with _$ReviewsPostsState {
  const factory ReviewsPostsState({
    @required bool isLoadingReviews,
    @required List<OurUserPost> reviews,
    //pagination
    @required Timestamp reviewLastInListTimestamp,
    @required int nextPage,
    @required bool isThereMoreReviewsToLoad,
    //Current User Review for Movie or Tv Show opened
    @required bool isLoadingCurrentUserReview,
    @required OurUserPost currentUserReview,
  }) = _ReviewsPostsState;

  factory ReviewsPostsState.initial() => ReviewsPostsState(
        isLoadingReviews: true,
        reviews: [],
        reviewLastInListTimestamp: Timestamp.now(),
        nextPage: 1,
        isThereMoreReviewsToLoad: true,
        isLoadingCurrentUserReview: true,
        currentUserReview: OurUserPost(
            tmdbId: 0,
            title: '',
            posterPath: '',
            isOfTypeMovie: false,
            isSpoiler: true,
            review: '',
            rating: 0,
            postUid: '',
            postOwnerUid: '',
            postCreationDate: Timestamp.now(),
            numberOfLikes: 0,
            numberOfComments: 0),
      );
}
