import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:explovid/domain/actor_db/actor_repository.dart';
import 'package:explovid/domain/models/actor_search/actor_search_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'actor_search_event.dart';
part 'actor_search_state.dart';

part 'actor_search_bloc.freezed.dart';

class ActorSearchBloc extends Bloc<ActorSearchEvent, ActorSearchState> {
  final ActorRepository _actorRepository;
  ActorSearchResults _results;

  ActorSearchBloc(this._actorRepository) : super(ActorSearchState.initial());

  @override
  Stream<ActorSearchState> mapEventToState(
    ActorSearchEvent event,
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
          _results = await _actorRepository.searchActor(e.name.trim());
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
              actorSearchResults: _results,
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
          actorSearchResults: ActorSearchResults(totalResults: 0),
          searchPageNum: 1,
        );
      },
      nextResultPageCalled: (e) async* {
        if (state.searchPageNum < _results.totalPages) {
          //increase SearchPageNum
          var newActorResults = await _actorRepository.searchActor(state.name, state.searchPageNum + 1);
          for (var actor in newActorResults.actorSummaries) {
            _results.actorSummaries.add(actor);
          }
          yield state.copyWith(
            searchPageNum: state.searchPageNum + 1,
          );
        }
      },
    );
  }
}
