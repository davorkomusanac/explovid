part of 'actor_details_bloc.dart';

@freezed
abstract class ActorDetailsState with _$ActorDetailsState {
  const factory ActorDetailsState({
    @required String errorMessage,
    @required bool isSearching,
    @required ActorDetails actorDetails,
  }) = _ActorDetailsState;

  factory ActorDetailsState.initial() => ActorDetailsState(
        errorMessage: '',
        isSearching: true,
        actorDetails: ActorDetails(),
      );
}
