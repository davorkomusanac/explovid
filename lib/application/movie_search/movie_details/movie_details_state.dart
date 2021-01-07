part of 'movie_details_bloc.dart';

@freezed
abstract class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState({
    @required String errorMessage,
    @required bool isSearching,
    @required MovieDetails movieDetails,
  }) = _MovieDetailsState;

  factory MovieDetailsState.initial() => MovieDetailsState(
        errorMessage: '',
        isSearching: true,
        movieDetails: MovieDetails(),
      );
}
