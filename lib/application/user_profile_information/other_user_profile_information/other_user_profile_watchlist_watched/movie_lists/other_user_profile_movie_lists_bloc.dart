import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:explovid/data/models/firestore_models/firestore_movie_watched_details.dart';
import 'package:explovid/data/models/firestore_models/firestore_movie_watchlist_details.dart';
import 'package:explovid/data/user_profile_db/other_user_profile_db/other_user_profile_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'other_user_profile_movie_lists_event.dart';
part 'other_user_profile_movie_lists_state.dart';
part 'other_user_profile_movie_lists_bloc.freezed.dart';

class OtherUserProfileMovieListsBloc extends Bloc<OtherUserProfileMovieListsEvent, OtherUserProfileMovieListsState> {
  final OtherUserProfileRepository _userProfileRepository;

  OtherUserProfileMovieListsBloc(this._userProfileRepository) : super(OtherUserProfileMovieListsState.initial());

  @override
  Stream<OtherUserProfileMovieListsState> mapEventToState(
    OtherUserProfileMovieListsEvent event,
  ) async* {
    yield* event.map(
      loadMovieToListInitial: (e) async* {
        var watchlist = await _userProfileRepository.getMovieWatchlist(userUid: e.userUid);
        var watched = await _userProfileRepository.getMovieWatched(userUid: e.userUid);

        yield state.copyWith(
          isLoading: false,
          movieWatchlist: watchlist,
          movieWatched: watched,
          isThereMoreMovieWatchlistPageToLoad: watchlist.length < 18 ? false : true,
          isThereMoreMovieWatchedPageToLoad: watched.length < 18 ? false : true,
        );
      },
      nextMovieWatchlistPageCalled: (e) async* {
        bool isThereMore = false;
        if (state.isThereMoreMovieWatchlistPageToLoad) {
          var newMovieWatchlistPage = await _userProfileRepository.getMovieWatchlistNextPage(
            userUid: e.userUid,
            lastItemInList: state.movieWatchlist.last,
          );
          isThereMore = newMovieWatchlistPage.length < 18 ? false : true;
          for (var movie in newMovieWatchlistPage) {
            state.movieWatchlist.add(movie);
          }
        }
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          isThereMoreMovieWatchlistPageToLoad: isThereMore,
        );
      },
      nextMovieWatchedPageCalled: (e) async* {
        bool isThereMore = false;
        if (state.isThereMoreMovieWatchedPageToLoad) {
          var newMovieWatchedPage = await _userProfileRepository.getMovieWatchedNextPage(
            userUid: e.userUid,
            lastItemInList: state.movieWatched.last,
          );
          isThereMore = newMovieWatchedPage.length < 18 ? false : true;
          for (var movie in newMovieWatchedPage) {
            state.movieWatched.add(movie);
          }
        }
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          isThereMoreMovieWatchedPageToLoad: isThereMore,
        );
      },
    );
  }
}
