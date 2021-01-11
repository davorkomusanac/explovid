part of 'movie_search_bloc.dart';

@freezed
abstract class MovieSearchState with _$MovieSearchState {
  const factory MovieSearchState({
    @required String title,
    @required String errorMessage,
    @required bool isSearching,
    @required bool isSearchCompleted,
    @required MovieSearchResults movieSearchResults,
    @required int searchPageNum,
    @required bool isSearchPageDoublePressed,
  }) = _MovieSearchState;

  factory MovieSearchState.initial() => MovieSearchState(
        title: '',
        errorMessage: '',
        isSearching: false,
        isSearchCompleted: false,
        movieSearchResults: MovieSearchResults(totalResults: 0),
        searchPageNum: 1,
        isSearchPageDoublePressed: false,
      );
}
