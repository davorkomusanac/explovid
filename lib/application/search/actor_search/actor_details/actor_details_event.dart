part of 'actor_details_bloc.dart';

@freezed
abstract class ActorDetailsEvent with _$ActorDetailsEvent {
  const factory ActorDetailsEvent.actorDetailsPressed(int id) = _ActorDetailsPressed;
}
