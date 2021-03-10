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
  const factory MovieListsUserProfileEvent.addMovieToWatchlistPressed(MovieDetails movieDetails) = _AddMovieToWatchlistPressed;
  const factory MovieListsUserProfileEvent.removeMovieFromWatchlistPressed(MovieDetails movieDetails) =
      _RemoveMovieFromWatchlistPressed;
  const factory MovieListsUserProfileEvent.addMovieToWatchedPressed(
      MovieDetails movieDetails, String review, num rating, bool isSpoiler) = _AddMovieToWatchedPressed;
  const factory MovieListsUserProfileEvent.removeMovieFromWatchedPressed(MovieDetails movieDetails) =
      _RemoveMovieFromWatchedPressed;
  const factory MovieListsUserProfileEvent.nextMovieWatchlistPageCalled() = _NextMovieWatchlistPageCalled;
  const factory MovieListsUserProfileEvent.nextMovieWatchedPageCalled() = _NextMovieWatchedPageCalled;
}