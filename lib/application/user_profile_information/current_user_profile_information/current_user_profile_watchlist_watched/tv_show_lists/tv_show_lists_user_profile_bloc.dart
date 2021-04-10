import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:explovid/data/models/firestore_models/firestore_tv_show_watched_details.dart';
import 'package:explovid/data/models/firestore_models/firestore_tv_show_watchlist_details.dart';
import 'package:explovid/data/models/tv_show_details/tv_show_details.dart';
import 'package:explovid/data/user_profile_db/current_user_profile_db/user_profile_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'tv_show_lists_user_profile_bloc.freezed.dart';
part 'tv_show_lists_user_profile_event.dart';
part 'tv_show_lists_user_profile_state.dart';

class TvShowListsUserProfileBloc extends Bloc<TvShowListsUserProfileEvent, TvShowListsUserProfileState> {
  final UserProfileRepository _userProfileRepository;
  StreamSubscription _tvShowWatchlistSubscription;
  StreamSubscription _tvShowWatchedSubscription;

  TvShowListsUserProfileBloc(this._userProfileRepository) : super(TvShowListsUserProfileState.initial());

  @override
  Future<void> close() {
    _tvShowWatchlistSubscription?.cancel();
    _tvShowWatchedSubscription?.cancel();
    return super.close();
  }

  @override
  Stream<TvShowListsUserProfileState> mapEventToState(
    TvShowListsUserProfileEvent event,
  ) async* {
    yield* event.map(
      loadTvShowToListInitial: (e) async* {
        _tvShowWatchlistSubscription?.cancel();
        _tvShowWatchlistSubscription = _userProfileRepository.getTvShowWatchlist().listen(
              (tvShowWatchlist) => add(TvShowListsUserProfileEvent.tvShowWatchlistUpdated(tvShowWatchlist)),
            );
        var tvShowWatchlistTitles = await _userProfileRepository.getListWithAllTvShowsNamesInWatchlist();
        var tvShowWatchedTitles = await _userProfileRepository.getListWithAllTvShowsNamesInWatched();
        _tvShowWatchedSubscription?.cancel();
        _tvShowWatchedSubscription = _userProfileRepository.getTvShowWatched().listen(
              (tvShowWatched) => add(TvShowListsUserProfileEvent.tvShowWatchedUpdated(tvShowWatched)),
            );
        yield state.copyWith(
          tvShowWatchlistArrayTitlesOnly: tvShowWatchlistTitles,
          tvShowWatchedArrayTitlesOnly: tvShowWatchedTitles,
        );
      },
      tvShowWatchlistUpdated: (e) async* {
        yield state.copyWith(
          isLoading: false,
          tvShowWatchlist: e.tvShowWatchlist,
          isThereMoreTvShowWatchlistPageToLoad: e.tvShowWatchlist.length < 18 ? false : true,
        );
      },
      tvShowWatchedUpdated: (e) async* {
        yield state.copyWith(
          isLoading: false,
          tvShowWatched: e.tvShowWatched,
          isThereMoreTvShowWatchedPageToLoad: e.tvShowWatched.length < 18 ? false : true,
        );
      },
      addTvShowToWatchlistPressed: (e) async* {
        yield state.copyWith(
          isSubmittingWatchlist: true,
        );
        String returnVal = await _userProfileRepository.addTvShowToWatchlist(e.tvShowDetails);
        if (returnVal.isEmpty)
          state.tvShowWatchlistArrayTitlesOnly.add(e.tvShowDetails.name + "_" + e.tvShowDetails.id.toString());
        //forcing State to update (nextPage has no other function)
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          isSubmittingWatchlist: false,
          errorMessage: returnVal,
        );
      },
      removeTvShowFromWatchlistPressed: (e) async* {
        yield state.copyWith(
          isSubmittingWatchlist: true,
        );
        int indexNumberOfTvShow;
        String returnVal = await _userProfileRepository.removeTvShowFromWatchlist(e.tvShowDetails);
        if (returnVal.isEmpty) {
          for (int i = 0; i < state.tvShowWatchlist.length; i++) {
            if (state.tvShowWatchlist[i].name == e.tvShowDetails.name && state.tvShowWatchlist[i].id == e.tvShowDetails.id)
              indexNumberOfTvShow = i;
          }
          if (indexNumberOfTvShow != null) state.tvShowWatchlist.removeAt(indexNumberOfTvShow);
          state.tvShowWatchlistArrayTitlesOnly.remove(e.tvShowDetails.name + "_" + e.tvShowDetails.id.toString());
        }
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          isSubmittingWatchlist: false,
          errorMessage: returnVal,
        );
      },
      addTvShowToWatchedPressed: (e) async* {
        yield state.copyWith(
          isSubmittingWatched: true,
        );
        String returnVal = await _userProfileRepository.addTvShowToWatched(e.tvShowDetails, e.review, e.rating, e.isSpoiler);
        if (returnVal.isEmpty) state.tvShowWatchedArrayTitlesOnly.add(e.tvShowDetails.name + "_" + e.tvShowDetails.id.toString());
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          isSubmittingWatched: false,
          errorMessage: returnVal,
        );
      },
      removeTvShowFromWatchedPressed: (e) async* {
        yield state.copyWith(
          isSubmittingWatched: true,
        );
        int indexNumberOfTvShow;
        String returnVal = "";
        //Changed order of calling, since for watched the postUid is needed for removing.
        for (int i = 0; i < state.tvShowWatched.length; i++) {
          if (state.tvShowWatched[i].name == e.tvShowTitle && state.tvShowWatched[i].id == e.tvShowId) indexNumberOfTvShow = i;
        }
        if (indexNumberOfTvShow != null) {
          returnVal = await _userProfileRepository.removeTvShowFromWatched(
            tvShowTitle: e.tvShowTitle,
            tvShowId: e.tvShowId,
            postUid: state.tvShowWatched[indexNumberOfTvShow].postUid,
          );
          if (returnVal.isEmpty) {
            state.tvShowWatched.removeAt(indexNumberOfTvShow);
            state.tvShowWatchedArrayTitlesOnly.remove(e.tvShowTitle + "_" + e.tvShowId.toString());
          }
        }
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          isSubmittingWatched: false,
          errorMessage: returnVal,
        );
      },
      updateTvShowWatchedReviewPressed: (e) async* {
        yield state.copyWith(
          isSubmittingWatched: true,
        );
        int indexNumberOfTvShow;
        String returnVal = "";
        //Changed order of calling, since for watched the postUid is needed for removing.
        for (int i = 0; i < state.tvShowWatched.length; i++) {
          if (state.tvShowWatched[i].name == e.tvShowTitle && state.tvShowWatched[i].id == e.tvShowId) indexNumberOfTvShow = i;
        }
        if (indexNumberOfTvShow != null) {
          returnVal = await _userProfileRepository.updateTvShowWatchedReview(
            tvShowTitle: e.tvShowTitle,
            tvShowId: e.tvShowId,
            postUid: state.tvShowWatched[indexNumberOfTvShow].postUid,
            review: e.review,
            rating: e.rating,
            isSpoiler: e.isSpoiler,
          );
        }
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          isSubmittingWatched: false,
          errorMessage: returnVal,
        );
      },
      nextTvShowWatchlistPageCalled: (e) async* {
        bool isThereMore = false;
        if (state.isThereMoreTvShowWatchlistPageToLoad) {
          var newTvShowWatchlistPage = await _userProfileRepository.getTvShowWatchlistNextPage(state.tvShowWatchlist.last);
          isThereMore = newTvShowWatchlistPage.length < 18 ? false : true;
          for (var tvShow in newTvShowWatchlistPage) {
            state.tvShowWatchlist.add(tvShow);
          }
        }
        //Added this to state, just so that the state updates
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          isThereMoreTvShowWatchlistPageToLoad: isThereMore,
        );
      },
      nextTvShowWatchedPageCalled: (e) async* {
        bool isThereMore = false;
        if (state.isThereMoreTvShowWatchedPageToLoad) {
          var newTvShowWatchedPage = await _userProfileRepository.getTvShowWatchedNextPage(state.tvShowWatched.last);
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
