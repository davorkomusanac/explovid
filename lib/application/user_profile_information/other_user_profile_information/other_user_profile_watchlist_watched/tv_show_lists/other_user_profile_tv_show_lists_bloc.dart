import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:explovid/data/models/firestore_models/firestore_tv_show_watched_details.dart';
import 'package:explovid/data/models/firestore_models/firestore_tv_show_watchlist_details.dart';
import 'package:explovid/data/user_profile_db/other_user_profile_db/other_user_profile_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'other_user_profile_tv_show_lists_event.dart';
part 'other_user_profile_tv_show_lists_state.dart';
part 'other_user_profile_tv_show_lists_bloc.freezed.dart';

class OtherUserProfileTvShowListsBloc extends Bloc<OtherUserProfileTvShowListsEvent, OtherUserProfileTvShowListsState> {
  final OtherUserProfileRepository _userProfileRepository;

  OtherUserProfileTvShowListsBloc(this._userProfileRepository) : super(OtherUserProfileTvShowListsState.initial());

  @override
  Stream<OtherUserProfileTvShowListsState> mapEventToState(
    OtherUserProfileTvShowListsEvent event,
  ) async* {
    yield* event.map(
      loadTvShowToListInitial: (e) async* {
        var watchlist = await _userProfileRepository.getTvShowWatchlist(userUid: e.userUid);
        var watched = await _userProfileRepository.getTvShowWatched(userUid: e.userUid);
        yield state.copyWith(
          isLoading: false,
          tvShowWatchlist: watchlist,
          tvShowWatched: watched,
        );
      },
      nextTvShowWatchlistPageCalled: (e) async* {
        bool isThereMore = false;
        if (state.isThereMoreTvShowWatchlistPageToLoad) {
          var newTvShowWatchlistPage = await _userProfileRepository.getTvShowWatchlistNextPage(
            userUid: e.userUid,
            lastItemInList: state.tvShowWatchlist.last,
          );
          isThereMore = newTvShowWatchlistPage.length < 18 ? false : true;
          for (var tvShow in newTvShowWatchlistPage) {
            state.tvShowWatchlist.add(tvShow);
          }
        }
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          isThereMoreTvShowWatchlistPageToLoad: isThereMore,
        );
      },
      nextTvShowWatchedPageCalled: (e) async* {
        bool isThereMore = false;
        if (state.isThereMoreTvShowWatchedPageToLoad) {
          var newTvShowWatchedPage = await _userProfileRepository.getTvShowWatchedNextPage(
            userUid: e.userUid,
            lastItemInList: state.tvShowWatched.last,
          );
          isThereMore = newTvShowWatchedPage.length < 18 ? false : true;
          for (var tvShow in newTvShowWatchedPage) {
            state.tvShowWatched.add(tvShow);
          }
        }
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          isThereMoreTvShowWatchedPageToLoad: isThereMore,
        );
      },
    );
  }
}
