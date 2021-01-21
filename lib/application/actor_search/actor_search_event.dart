part of 'actor_search_bloc.dart';

@freezed
abstract class ActorSearchEvent with _$ActorSearchEvent {
  const factory ActorSearchEvent.searchNameChanged(String name) = _SearchNameChanged;
  const factory ActorSearchEvent.deleteSearchPressed() = _DeleteSearchPressed;
  const factory ActorSearchEvent.nextResultPageCalled() = _NextResultPageCalled;
  const factory ActorSearchEvent.getPopularActorsCalled() = _GetPopularActorsCalled;
  const factory ActorSearchEvent.nextPopularActorsPageCalled() = _NextPopularActorsPageCalled;
}
