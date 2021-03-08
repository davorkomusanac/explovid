part of 'other_user_profile_movie_lists_bloc.dart';

@freezed
abstract class OtherUserProfileMovieListsState with _$OtherUserProfileMovieListsState {
  const factory OtherUserProfileMovieListsState({
    @required bool isLoading,
    @required List<FirestoreMovieWatchlistDetails> movieWatchlist,
    @required List<FirestoreMovieWatchedDetails> movieWatched,
    @required int nextPage,
    @required bool isThereMoreMovieWatchlistPageToLoad,
    @required bool isThereMoreMovieWatchedPageToLoad,
  }) = _OtherUserProfileMovieListsState;

  factory OtherUserProfileMovieListsState.initial() => OtherUserProfileMovieListsState(
        isLoading: true,
        movieWatchlist: [],
        movieWatched: [],
        nextPage: 1,
        isThereMoreMovieWatchlistPageToLoad: true,
        isThereMoreMovieWatchedPageToLoad: true,
      );
}
