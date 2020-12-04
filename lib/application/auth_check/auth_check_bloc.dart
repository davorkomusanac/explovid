import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_check_event.dart';
part 'auth_check_state.dart';
part 'auth_check_bloc.freezed.dart';

class AuthCheckBloc extends Bloc<AuthCheckEvent, AuthCheckState> {
  AuthCheckBloc() : super(const AuthCheckState.initial());

  @override
  Stream<AuthCheckState> mapEventToState(
    AuthCheckEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        //TODO Implement auth and login // Currently a random int just to check if bloc is working correctly
        Random random = Random();
        await Future.delayed(Duration(seconds: 1));

        /// Throw random Auth Status
        if (random.nextBool()) {
          yield AuthCheckState.authenticated();
        } else {
          yield AuthCheckState.unauthenticated();
        }
      },
    );
  }
}
