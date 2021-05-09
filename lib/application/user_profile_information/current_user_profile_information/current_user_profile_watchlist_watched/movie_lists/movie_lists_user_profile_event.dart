part of 'movie_lists_user_profile_bloc.dart';

@freezed
abstract class MovieListsUserProfileEvent with _$MovieListsUserProfileEvent {
  const factory MovieListsUserProfileEvent.loadMovieToListInitial() = _LoadMovieToListInitial;
  const factory MovieListsUserProfileEvent.movieWatchlistUpdated(
    List<FirestoreMovieWatchlistDetails> moviesWatchlist,
  ) = _MovieWatchlistUpdated;
  const factory MovieListsUserProfileEvent.movieWatchedUpdated(
    List<FirestoreMovieWatchedDetails> moviesWatched,
  ) = _MovieWatchedUpdated;
  //watchlist
  const factory MovieListsUserProfileEvent.addMovieToWatchlistPressed({
    @required int tmdbId,
    @required String title,
    @required String posterPath,
  }) = _AddMovieToWatchlistPressed;
  const factory MovieListsUserProfileEvent.removeMovieFromWatchlistPressed({
    @required int tmdbId,
    @required String title,
  }) = _RemoveMovieFromWatchlistPressed;
  //watched
  const factory MovieListsUserProfileEvent.addMovieToWatchedPressed({
    @required int tmdbId,
    @required String title,
    @required String posterPath,
    @required String review,
    @required num rating,
    @required bool isSpoiler,
  }) = _AddMovieToWatchedPressed;
  const factory MovieListsUserProfileEvent.removeMovieFromWatchedPressed({
    @required String movieTitle,
    @required int movieId,
  }) = _RemoveMovieFromWatchedPressed;
  const factory MovieListsUserProfileEvent.updateMovieWatchedReviewPressed({
    @required String movieTitle,
    @required int movieId,
    @required String review,
    @required num rating,
    @required bool isSpoiler,
  }) = _UpdateMovieWatchedReviewPressed;
  //Pagination
  const factory MovieListsUserProfileEvent.nextMovieWatchlistPageCalled() = _NextMovieWatchlistPageCalled;
  const factory MovieListsUserProfileEvent.nextMovieWatchedPageCalled() = _NextMovieWatchedPageCalled;
}
