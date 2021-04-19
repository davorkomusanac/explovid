import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:explovid/data/models/our_user_post/our_user_post.dart';
import 'package:explovid/data/user_profile_db/user_actions_db/user_actions_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'global_news_feed_bloc.freezed.dart';
part 'global_news_feed_event.dart';
part 'global_news_feed_state.dart';

class GlobalNewsFeedBloc extends Bloc<GlobalNewsFeedEvent, GlobalNewsFeedState> {
  final UserActionsRepository _userActionsRepository;
  GlobalNewsFeedBloc(this._userActionsRepository) : super(GlobalNewsFeedState.initial());

  @override
  Stream<GlobalNewsFeedState> mapEventToState(
    GlobalNewsFeedEvent event,
  ) async* {
    yield* event.map(
      loadReviewsPressed: (e) async* {
        yield state.copyWith(
          isLoadingReviews: true,
        );
        List<dynamic> result = await _userActionsRepository.showGlobalReviews();
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
        //Limit reviews length to 1000 to stop bad actors from making too many reads?
        Timestamp time = Timestamp.now();
        bool isThereMore = false;
        if (state.isThereMoreReviewsToLoad && state.reviews.length < 1000) {
          List<dynamic> result = await _userActionsRepository.showGlobalReviewsNextPage(
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
      refreshReviewsPressed: (e) async* {
        //TODO Change from reloading list to maybe just getting one and checking if there is a difference and then load?
        yield state.copyWith(
          isRefreshingReviews: true,
        );

        List<dynamic> result = await _userActionsRepository.showGlobalReviews();
        List<OurUserPost> reviews = result[0];
        Timestamp time = result[1];

        yield state.copyWith(
          isRefreshingReviews: false,
          reviews: reviews,
          reviewLastInListTimestamp: time,
          isThereMoreReviewsToLoad: reviews.length < 15 ? false : true,
        );
      },
    );
  }
}
