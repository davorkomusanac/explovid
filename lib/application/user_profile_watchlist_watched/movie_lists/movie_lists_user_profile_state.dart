part of 'movie_lists_user_profile_bloc.dart';

@freezed
abstract class MovieListsUserProfileState with _$MovieListsUserProfileState {
  const factory MovieListsUserProfileState({
    @required bool isLoading,
    @required List<FirestoreMovieWatchlistDetails> movieWatchlist,
    @required List<FirestoreMovieWatchedDetails> movieWatched,
  }) = _MovieListsUserProfileState;

  factory MovieListsUserProfileState.initial() => MovieListsUserProfileState(
        isLoading: true,
        movieWatchlist: [],
        movieWatched: [],
      );
}
