import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:explovid/domain/models/tv_show_search/tv_show_search_results.dart';
import 'package:explovid/domain/tv_show_db/tv_show_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'tv_show_search_event.dart';
part 'tv_show_search_state.dart';

part 'tv_show_search_bloc.freezed.dart';

class TvShowSearchBloc extends Bloc<TvShowSearchEvent, TvShowSearchState> {
  final TvShowRepository _tvShowRepository;
  TvShowSearchResults _results;

  TvShowSearchBloc(this._tvShowRepository) : super(TvShowSearchState.initial());

  @override
  Stream<TvShowSearchState> mapEventToState(
    TvShowSearchEvent event,
  ) async* {
    yield* event.map(
      searchNameChanged: (e) async* {
        yield state.copyWith(
          name: e.name.trim(),
          errorMessage: '',
          isSearching: e.name.trim().isEmpty ? false : true,
          isSearchCompleted: false,
          searchPageNum: 1,
        );
        if (e.name.trim().isNotEmpty) {
          _results = await _tvShowRepository.searchTvShow(e.name.trim());
          if (_results.errorMessage == "No results found.") {
            yield state.copyWith(
              errorMessage: "No results found.",
              isSearching: false,
              isSearchCompleted: false,
            );
          } else if (_results.errorMessage.isEmpty) {
            yield state.copyWith(
              name: e.name.trim(),
              errorMessage: '',
              isSearching: false,
              isSearchCompleted: true,
              tvShowSearchResults: _results,
            );
          } else {
            yield state.copyWith(
              name: e.name.trim(),
              isSearching: false,
              isSearchCompleted: false,
              errorMessage: _results.errorMessage,
            );
          }
        }
      },
      deleteSearchPressed: (e) async* {
        yield state.copyWith(
          name: '',
          errorMessage: '',
          isSearching: false,
          isSearchCompleted: false,
          tvShowSearchResults: TvShowSearchResults(totalResults: 0),
          searchPageNum: 1,
        );
      },
      nextResultPageCalled: (e) async* {
        if (state.searchPageNum < _results.totalPages) {
          //increase SearchPageNum
          var newTvShowResults = await _tvShowRepository.searchTvShow(state.name, state.searchPageNum + 1);
          for (var tvShow in newTvShowResults.tvShowSummaries) {
            _results.tvShowSummaries.add(tvShow);
          }
          yield state.copyWith(
            searchPageNum: state.searchPageNum + 1,
          );
        }
      },
    );
  }
}
