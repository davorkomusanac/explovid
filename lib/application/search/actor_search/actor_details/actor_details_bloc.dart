import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:explovid/data/search_db/actor_db/actor_repository.dart';
import 'package:explovid/data/models/actor_details/actor_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'actor_details_event.dart';
part 'actor_details_state.dart';

part 'actor_details_bloc.freezed.dart';

class ActorDetailsBloc extends Bloc<ActorDetailsEvent, ActorDetailsState> {
  final ActorRepository _actorRepository;

  ActorDetailsBloc(this._actorRepository) : super(ActorDetailsState.initial());

  @override
  Stream<ActorDetailsState> mapEventToState(
    ActorDetailsEvent event,
  ) async* {
    yield* event.map(
      actorDetailsPressed: (e) async* {
        yield state.copyWith(
          isSearching: true,
          errorMessage: "",
        );
        var actorDetailsResult = await _actorRepository.getActorDetails(e.id);
        if (actorDetailsResult.errorMessage.isNotEmpty) {
          yield state.copyWith(
            isSearching: false,
            errorMessage: actorDetailsResult.errorMessage,
          );
        } else {
          yield state.copyWith(
            isSearching: false,
            errorMessage: "",
            actorDetails: actorDetailsResult,
          );
        }
      },
    );
  }
}
