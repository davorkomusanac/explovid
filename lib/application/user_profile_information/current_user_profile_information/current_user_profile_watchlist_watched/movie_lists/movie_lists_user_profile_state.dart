part of 'movie_lists_user_profile_bloc.dart';

@freezed
abstract class MovieListsUserProfileState with _$MovieListsUserProfileState {
  const factory MovieListsUserProfileState({
    @required bool isLoading,
    @required List<FirestoreMovieWatchlistDetails> movieWatchlist,
    @required List<FirestoreMovieWatchedDetails> movieWatched,
    @required int nextPage,
    @required bool isThereMoreMovieWatchlistPageToLoad,
    @required List<String> movieWatchlistArrayTitlesOnly,
    @required bool isSubmittingWatchlist,
    @required String errorMessage,
    @required bool isThereMoreMovieWatchedPageToLoad,
    @required List<String> movieWatchedArrayTitlesOnly,
    @required bool isSubmittingWatched,
  }) = _MovieListsUserProfileState;

  factory MovieListsUserProfileState.initial() => MovieListsUserProfileState(
        isLoading: true,
        movieWatchlist: [],
        movieWatched: [],
        nextPage: 1,
        isThereMoreMovieWatchlistPageToLoad: true,
        movieWatchlistArrayTitlesOnly: [],
        isSubmittingWatchlist: false,
        errorMessage: "",
        isThereMoreMovieWatchedPageToLoad: true,
        movieWatchedArrayTitlesOnly: [],
        isSubmittingWatched: false,
      );
}
