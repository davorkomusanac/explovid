import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:explovid/domain/models/movie_search/movie_search_results.dart';
import 'package:explovid/domain/models/movie_search/movie_summary.dart';
import 'package:explovid/domain/movie_db/movie_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_search_event.dart';
part 'movie_search_state.dart';

part 'movie_search_bloc.freezed.dart';

class MovieSearchBloc extends Bloc<MovieSearchEvent, MovieSearchState> {
  final MovieRepository movieRepository;
  MovieSearchResults results;

  MovieSearchBloc(this.movieRepository) : super(MovieSearchState.initial());

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
          isControllerEmpty: false,
          searchPageNum: 1,
        );
        if (e.title.trim().isNotEmpty) {
          results = await movieRepository.searchMovie(e.title.trim());
          if (results.errorMessage == "No results found.") {
            yield state.copyWith(
              errorMessage: "No results found.",
              isSearching: false,
              isSearchCompleted: false,
            );
          } else if (results.errorMessage.isEmpty) {
            yield state.copyWith(
              title: e.title.trim(),
              errorMessage: '',
              isSearching: false,
              isSearchCompleted: true,
              movieSearchResults: results,
            );
          } else {
            yield state.copyWith(
              title: e.title.trim(),
              isSearching: false,
              isSearchCompleted: false,
              errorMessage: results.errorMessage,
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
          isControllerEmpty: true,
          searchPageNum: 1,
        );
      },
      nextResultPageCalled: (e) async* {
        if (state.searchPageNum < results.totalPages) {
          //increase SearchPageNum
          var newMovieResults = await movieRepository.searchMovie(state.title, state.searchPageNum + 1);
          for (var movie in newMovieResults.movieSummaries) {
            results.movieSummaries.add(movie);
          }
          yield state.copyWith(
            searchPageNum: state.searchPageNum + 1,
          );
        }
      },
    );
  }
}
