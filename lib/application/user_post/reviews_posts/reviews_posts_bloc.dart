import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:explovid/data/models/our_user_post/our_user_post.dart';
import 'package:explovid/data/user_profile_db/user_actions_db/user_actions_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'reviews_posts_bloc.freezed.dart';
part 'reviews_posts_event.dart';
part 'reviews_posts_state.dart';

class ReviewsPostsBloc extends Bloc<ReviewsPostsEvent, ReviewsPostsState> {
  final UserActionsRepository _userActionsRepository;
  ReviewsPostsBloc(this._userActionsRepository) : super(ReviewsPostsState.initial());

  @override
  Stream<ReviewsPostsState> mapEventToState(
    ReviewsPostsEvent event,
  ) async* {
    yield* event.map(
      loadReviewsPressed: (e) async* {
        yield state.copyWith(
          isLoadingReviews: true,
        );
        List<dynamic> result = e.isOfTypeMovie
            ? await _userActionsRepository.showMovieReviews(
                movieTitle: e.title,
                movieId: e.tmdbId,
              )
            : await _userActionsRepository.showTvShowReviews(
                tvShowName: e.title,
                tvShowId: e.tmdbId,
              );
        List<OurUserPost> reviews = result[0];
        Timestamp time = result[1];

        yield state.copyWith(
          isLoadingReviews: false,
          reviews: reviews,
          reviewLastInListTimestamp: time,
          isThereMoreReviewsToLoad: reviews.length < 15 ? false : true,
        );
      },
      loadReviewsPressedNextPage: (e) async* {
        Timestamp time = Timestamp.now();
        bool isThereMore = false;
        if (state.isThereMoreReviewsToLoad) {
          List<dynamic> result = e.isOfTypeMovie
              ? await _userActionsRepository.showMovieReviewsNextPage(
                  movieTitle: e.title,
                  movieId: e.tmdbId,
                  lastReviewTimestamp: state.reviewLastInListTimestamp,
                )
              : await _userActionsRepository.showTvShowReviewsNextPage(
                  tvShowName: e.title,
                  tvShowId: e.tmdbId,
                  lastReviewTimestamp: state.reviewLastInListTimestamp,
                );

          List<OurUserPost> reviews = result[0];
          time = result[1];
          isThereMore = reviews.length < 15 ? false : true;

          for (var review in reviews) state.reviews.add(review);
        }
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          reviewLastInListTimestamp: time,
          isThereMoreReviewsToLoad: isThereMore,
        );
      },
      loadCurrentUserReviewPressed: (e) async* {
        yield state.copyWith(
          isLoadingCurrentUserReview: true,
        );
        OurUserPost review = e.isOfTypeMovie
            ? await _userActionsRepository.showUserMovieReview(
                movieTitle: e.title,
                movieId: e.tmdbId,
              )
            : await _userActionsRepository.showUserTvShowReview(
                tvShowName: e.title,
                tvShowId: e.tmdbId,
              );
        yield state.copyWith(
          isLoadingCurrentUserReview: false,
          currentUserReview: review,
        );
      },
    );
  }
}
