part of 'movie_lists_user_profile_bloc.dart';

@freezed
abstract class MovieListsUserProfileEvent with _$MovieListsUserProfileEvent {
  const factory MovieListsUserProfileEvent.loadMovieToListInitial() = _LoadMovieToListInitial;
  const factory MovieListsUserProfileEvent.moviesUpdated(List<FirestoreMovieDetails> movies) = _MoviesUpdated;
  const factory MovieListsUserProfileEvent.addMovieToWatchlistPressed(MovieDetails movieDetails) = _AddMovieToWatchlistPressed;
  const factory MovieListsUserProfileEvent.removeMovieFromWatchlistPressed(MovieDetails movieDetails, Timestamp timestamp) =
      _RemoveMovieFromWatchlistPressed;
  const factory MovieListsUserProfileEvent.addMovieToWatchedPressed(MovieDetails movieDetails) = _AddMovieToWatchedPressed;
  const factory MovieListsUserProfileEvent.removeMovieFromWatchedPressed(MovieDetails movieDetails) =
      _RemoveMovieFromWatchedPressed;
}
