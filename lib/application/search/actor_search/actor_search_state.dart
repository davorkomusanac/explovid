part of 'actor_search_bloc.dart';

@freezed
abstract class ActorSearchState with _$ActorSearchState {
  const factory ActorSearchState({
    @required String name,
    @required String errorMessage,
    @required bool isSearching,
    @required bool isSearchCompleted,
    @required ActorSearchResults actorSearchResults,
    @required int searchPageNum,
    @required ActorSearchResults popularActors,
    @required int popularPageNum,
  }) = _ActorSearchState;

  factory ActorSearchState.initial() => ActorSearchState(
        name: '',
        errorMessage: '',
        isSearching: false,
        isSearchCompleted: false,
        actorSearchResults: ActorSearchResults(totalResults: 0),
        searchPageNum: 1,
        popularActors: ActorSearchResults(totalResults: 0),
        popularPageNum: 1,
      );
}
