import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:explovid/domain/models/firestore_models/firestore_movie_details.dart';
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

  MovieListsUserProfileBloc(this._userProfileRepository) : super(MovieListsUserProfileState.initial());

  @override
  Future<void> close() {
    _movieWatchlistSubscription?.cancel();
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
              (movieWatchlist) => add(MovieListsUserProfileEvent.moviesUpdated(movieWatchlist)),
            );
      },
      moviesUpdated: (e) async* {
        yield state.copyWith(
          isLoading: false,
          movieWatchlist: e.movies,
        );
      },
      addMovieToWatchlistPressed: (e) async* {
        _userProfileRepository.addMovieToWatchlist(e.movieDetails);
      },
      removeMovieFromWatchlistPressed: (e) async* {
        _userProfileRepository.removeMovieFromWatchlist(e.movieDetails, e.timestamp);
      },
      addMovieToWatchedPressed: (e) async* {},
      removeMovieFromWatchedPressed: (e) async* {},
    );
  }
}
