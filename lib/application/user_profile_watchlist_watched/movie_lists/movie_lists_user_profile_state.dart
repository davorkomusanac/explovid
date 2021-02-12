part of 'movie_lists_user_profile_bloc.dart';

@freezed
abstract class MovieListsUserProfileState with _$MovieListsUserProfileState {
  const factory MovieListsUserProfileState({
    @required bool isLoading,
    @required List<FirestoreMovieDetails> movieWatchlist,
    @required List<FirestoreMovieDetails> movieWatched,
  }) = _MovieListsUserProfileState;

  factory MovieListsUserProfileState.initial() => MovieListsUserProfileState(
        isLoading: true,
        movieWatchlist: [],
        movieWatched: [],
      );
}
