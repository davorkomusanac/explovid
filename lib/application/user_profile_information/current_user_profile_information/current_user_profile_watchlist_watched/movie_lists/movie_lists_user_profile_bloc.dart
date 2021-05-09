import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:explovid/data/models/firestore_models/firestore_movie_watched_details.dart';
import 'package:explovid/data/models/firestore_models/firestore_movie_watchlist_details.dart';
import 'package:explovid/data/user_profile_db/current_user_profile_db/user_profile_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'movie_lists_user_profile_bloc.freezed.dart';
part 'movie_lists_user_profile_event.dart';
part 'movie_lists_user_profile_state.dart';

class MovieListsUserProfileBloc extends Bloc<MovieListsUserProfileEvent, MovieListsUserProfileState> {
  final UserProfileRepository _userProfileRepository;
  StreamSubscription _movieWatchlistSubscription;
  StreamSubscription _movieWatchedSubscription;

  MovieListsUserProfileBloc(this._userProfileRepository) : super(MovieListsUserProfileState.initial());

  @override
  Future<void> close() {
    _movieWatchlistSubscription?.cancel();
    _movieWatchedSubscription?.cancel();
    return super.close();
  }

  @override
  Stream<MovieListsUserProfileState> mapEventToState(
    MovieListsUserProfileEvent event,
  ) async* {
    yield* event.map(
      loadMovieToListInitial: (e) async* {
        _movieWatchlistSubscription?.cancel();
        _movieWatchlistSubscription = _userProfileRepository.getMovieWatchlist().listen(
              (movieWatchlist) => add(MovieListsUserProfileEvent.movieWatchlistUpdated(movieWatchlist)),
            );
        var movieWatchlistTitles = await _userProfileRepository.getListWithAllMovieTitlesInWatchlist();
        var movieWatchedTitles = await _userProfileRepository.getListWithAllMovieTitlesInWatched();
        _movieWatchedSubscription?.cancel();
        _movieWatchedSubscription = _userProfileRepository.getMovieWatched().listen(
              (movieWatched) => add(MovieListsUserProfileEvent.movieWatchedUpdated(movieWatched)),
            );
        yield state.copyWith(
          movieWatchlistArrayTitlesOnly: movieWatchlistTitles,
          movieWatchedArrayTitlesOnly: movieWatchedTitles,
        );
      },
      movieWatchlistUpdated: (e) async* {
        yield state.copyWith(
          isLoading: false,
          movieWatchlist: e.moviesWatchlist,
          isThereMoreMovieWatchlistPageToLoad: e.moviesWatchlist.length < 18 ? false : true,
        );
      },
      movieWatchedUpdated: (e) async* {
        yield state.copyWith(
          isLoading: false,
          movieWatched: e.moviesWatched,
          isThereMoreMovieWatchedPageToLoad: e.moviesWatched.length < 18 ? false : true,
        );
      },
      addMovieToWatchlistPressed: (e) async* {
        yield state.copyWith(
          isSubmittingWatchlist: true,
          errorMessage: '',
        );
        String returnVal = await _userProfileRepository.addMovieToWatchlist(
          title: e.title,
          tmdbId: e.tmdbId,
          posterPath: e.posterPath,
        );
        if (returnVal.isEmpty) state.movieWatchlistArrayTitlesOnly.add(e.title.replaceAll('/', ' ') + "_" + e.tmdbId.toString());
        //forcing State to update (nextPage has no other function)
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          isSubmittingWatchlist: false,
          errorMessage: returnVal,
        );
      },
      removeMovieFromWatchlistPressed: (e) async* {
        yield state.copyWith(
          isSubmittingWatchlist: true,
          errorMessage: '',
        );
        int indexNumberOfMovie;
        String returnVal = await _userProfileRepository.removeMovieFromWatchlist(
          tmdbId: e.tmdbId,
          title: e.title,
        );
        if (returnVal.isEmpty) {
          for (int i = 0; i < state.movieWatchlist.length; i++) {
            if (state.movieWatchlist[i].title == e.title.replaceAll('/', ' ') && state.movieWatchlist[i].id == e.tmdbId)
              indexNumberOfMovie = i;
          }
          if (indexNumberOfMovie != null) state.movieWatchlist.removeAt(indexNumberOfMovie);
          state.movieWatchlistArrayTitlesOnly.remove(e.title.replaceAll('/', ' ') + "_" + e.tmdbId.toString());
        }
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          isSubmittingWatchlist: false,
          errorMessage: returnVal,
        );
      },
      addMovieToWatchedPressed: (e) async* {
        yield state.copyWith(
          isSubmittingWatched: true,
          errorMessage: '',
        );
        String returnVal = await _userProfileRepository.addMovieToWatched(
          tmdbId: e.tmdbId,
          title: e.title,
          posterPath: e.posterPath,
          review: e.review,
          rating: e.rating,
          isSpoiler: e.isSpoiler,
        );
        if (returnVal.isEmpty) state.movieWatchedArrayTitlesOnly.add(e.title.replaceAll('/', ' ') + "_" + e.tmdbId.toString());
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          isSubmittingWatched: false,
          errorMessage: returnVal,
        );
      },
      removeMovieFromWatchedPressed: (e) async* {
        yield state.copyWith(
          isSubmittingWatched: true,
          errorMessage: '',
        );
        int indexNumberOfMovie;
        String returnVal = "";
        //Changed order of calling, since for watched the postUid is needed for removing.
        for (int i = 0; i < state.movieWatched.length; i++) {
          if (state.movieWatched[i].title == e.movieTitle && state.movieWatched[i].id == e.movieId) indexNumberOfMovie = i;
        }
        if (indexNumberOfMovie != null) {
          returnVal = await _userProfileRepository.removeMovieFromWatched(
            movieTitle: e.movieTitle,
            movieId: e.movieId,
            postUid: state.movieWatched[indexNumberOfMovie].postUid,
          );
          if (returnVal.isEmpty) {
            state.movieWatched.removeAt(indexNumberOfMovie);
            state.movieWatchedArrayTitlesOnly.remove(e.movieTitle.replaceAll('/', ' ') + "_" + e.movieId.toString());
          }
        }
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          isSubmittingWatched: false,
          errorMessage: returnVal,
        );
      },
      updateMovieWatchedReviewPressed: (e) async* {
        yield state.copyWith(
          isSubmittingWatched: true,
        );
        int indexNumberOfMovie;
        String returnVal = "";
        //Changed order of calling, since for watched the postUid is needed for updating.
        for (int i = 0; i < state.movieWatched.length; i++) {
          if (state.movieWatched[i].title == e.movieTitle && state.movieWatched[i].id == e.movieId) indexNumberOfMovie = i;
        }
        if (indexNumberOfMovie != null) {
          returnVal = await _userProfileRepository.updateMovieWatchedReview(
            movieTitle: e.movieTitle,
            movieId: e.movieId,
            postUid: state.movieWatched[indexNumberOfMovie].postUid,
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
      nextMovieWatchlistPageCalled: (e) async* {
        bool isThereMore = false;
        if (state.isThereMoreMovieWatchlistPageToLoad) {
          var newMovieWatchlistPage = await _userProfileRepository.getMovieWatchlistNextPage(state.movieWatchlist.last);
          isThereMore = newMovieWatchlistPage.length < 18 ? false : true;
          for (var movie in newMovieWatchlistPage) {
            state.movieWatchlist.add(movie);
          }
        }
        //Added this to state, just so that the state updates
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          isThereMoreMovieWatchlistPageToLoad: isThereMore,
        );
      },
      nextMovieWatchedPageCalled: (e) async* {
        bool isThereMore = false;
        if (state.isThereMoreMovieWatchedPageToLoad) {
          var newMovieWatchedPage = await _userProfileRepository.getMovieWatchedNextPage(state.movieWatched.last);
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
