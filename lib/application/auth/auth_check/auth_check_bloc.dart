import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:explovid/constants.dart';
import 'package:explovid/domain/auth/auth_repository.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_check_event.dart';
part 'auth_check_state.dart';
part 'auth_check_bloc.freezed.dart';

class AuthCheckBloc extends Bloc<AuthCheckEvent, AuthCheckState> {
  final AuthRepository _authRepository;

  AuthCheckBloc(this._authRepository) : super(const AuthCheckState.initial());

  @override
  Stream<AuthCheckState> mapEventToState(
    AuthCheckEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final bool = _authRepository.isUserSignedIn();
        if (bool) {
          yield const AuthCheckState.authenticated();
        } else {
          yield const AuthCheckState.unauthenticated();
        }
      },
      signOutPressed: (e) async* {
        String returnValue = await _authRepository.signOut();
        if (returnValue == kSuccess) {
          yield const AuthCheckState.unauthenticated();
        } else {
          print("There was an error signing out!");
        }
      },
    );
  }
}
