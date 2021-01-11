import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:explovid/domain/models/movie_search/movie_search_results.dart';
import 'package:explovid/domain/movie_db/movie_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_search_event.dart';
part 'movie_search_state.dart';

part 'movie_search_bloc.freezed.dart';

class MovieSearchBloc extends Bloc<MovieSearchEvent, MovieSearchState> {
  final MovieRepository _movieRepository;
  MovieSearchResults _results;

  MovieSearchBloc(this._movieRepository) : super(MovieSearchState.initial());

  @override
  Stream<MovieSearchState> mapEventToState(
    MovieSearchEvent event,
  ) async* {
    yield* event.map(
      searchTitleChanged: (e) async* {
        yield state.copyWith(
          title: e.title.trim(),
          errorMessage: '',
          isSearching: e.title.trim().isEmpty ? false : true,
          isSearchCompleted: false,
          searchPageNum: 1,
        );
        if (e.title.trim().isNotEmpty) {
          _results = await _movieRepository.searchMovie(e.title.trim());
          if (_results.errorMessage == "No results found.") {
            yield state.copyWith(
              errorMessage: "No results found.",
              isSearching: false,
              isSearchCompleted: false,
            );
          } else if (_results.errorMessage.isEmpty) {
            yield state.copyWith(
              title: e.title.trim(),
              errorMessage: '',
              isSearching: false,
              isSearchCompleted: true,
              movieSearchResults: _results,
            );
          } else {
            yield state.copyWith(
              title: e.title.trim(),
              isSearching: false,
              isSearchCompleted: false,
              errorMessage: _results.errorMessage,
            );
          }
        }
      },
      deleteSearchPressed: (e) async* {
        yield state.copyWith(
          title: '',
          errorMessage: '',
          isSearching: false,
          isSearchCompleted: false,
          movieSearchResults: MovieSearchResults(totalResults: 0),
          searchPageNum: 1,
        );
      },
      changeIsSearchPageDoublePressed: (e) async* {
        yield state.copyWith(
          isSearchPageDoublePressed: false,
        );
      },
      searchPageDoublePressed: (e) async* {
        yield state.copyWith(
          title: '',
          errorMessage: '',
          isSearching: false,
          isSearchCompleted: false,
          movieSearchResults: MovieSearchResults(totalResults: 0),
          searchPageNum: 1,
          isSearchPageDoublePressed: true,
        );
      },
      nextResultPageCalled: (e) async* {
        if (state.searchPageNum < _results.totalPages) {
          //increase SearchPageNum
          var newMovieResults = await _movieRepository.searchMovie(state.title, state.searchPageNum + 1);
          for (var movie in newMovieResults.movieSummaries) {
            _results.movieSummaries.add(movie);
          }
          yield state.copyWith(
            searchPageNum: state.searchPageNum + 1,
          );
        }
      },
    );
  }
}
