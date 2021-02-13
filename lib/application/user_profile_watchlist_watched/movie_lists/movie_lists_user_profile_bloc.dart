import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:explovid/domain/models/firestore_models/firestore_movie_watched_details.dart';
import 'package:explovid/domain/models/firestore_models/firestore_movie_watchlist_details.dart';
import 'package:explovid/domain/models/movie_details/movie_details.dart';
import 'package:explovid/domain/user_profile_db/user_profile_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'movie_lists_user_profile_event.dart';
part 'movie_lists_user_profile_state.dart';

part 'movie_lists_user_profile_bloc.freezed.dart';

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
        _movieWatchedSubscription?.cancel();
        _movieWatchedSubscription = _userProfileRepository.getMovieWatched().listen(
              (movieWatched) => add(MovieListsUserProfileEvent.movieWatchedUpdated(movieWatched)),
            );
      },
      movieWatchlistUpdated: (e) async* {
        yield state.copyWith(
          isLoading: false,
          movieWatchlist: e.moviesWatchlist,
        );
      },
      movieWatchedUpdated: (e) async* {
        yield state.copyWith(
          isLoading: false,
          movieWatched: e.moviesWatched,
        );
      },
      addMovieToWatchlistPressed: (e) async* {
        _userProfileRepository.addMovieToWatchlist(e.movieDetails);
      },
      removeMovieFromWatchlistPressed: (e) async* {
        _userProfileRepository.removeMovieFromWatchlist(e.movieDetails, e.timestamp);
      },
      addMovieToWatchedPressed: (e) async* {
        _userProfileRepository.addMovieToWatched(e.movieDetails, e.review, e.rating);
      },
      removeMovieFromWatchedPressed: (e) async* {
        _userProfileRepository.removeMovieFromWatched(e.movieDetails, e.review, e.rating, e.timestamp);
      },
    );
  }
}
