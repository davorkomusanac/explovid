import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:explovid/constants.dart';
import 'package:explovid/data/auth/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_check_event.dart';
part 'auth_check_state.dart';
part 'auth_check_bloc.freezed.dart';

class AuthCheckBloc extends Bloc<AuthCheckEvent, AuthCheckState> {
  final AuthRepository _authRepository;

  AuthCheckBloc(this._authRepository) : super(AuthCheckState.initial());

  @override
  Stream<AuthCheckState> mapEventToState(
    AuthCheckEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final isUserAuth = _authRepository.isUserSignedIn();
        if (isUserAuth) {
          _authRepository.reloadCurrentUser();
          final isUserVerified = _authRepository.isUserVerified();
          if (isUserVerified) {
            final isUsernameGiven = await _authRepository.isUsernameGivenToUser();
            if (isUsernameGiven) {
              yield const AuthCheckState.authenticated();
            } else {
              yield const AuthCheckState.usernameNotGiven();
            }
          } else {
            yield const AuthCheckState.emailNotVerified();
          }
        } else {
          yield AuthCheckState.unauthenticated();
        }
      },
      signOutPressed: (e) async* {
        String returnValue = await _authRepository.signOut();
        if (returnValue == kSuccess) {
          //Not yielding a state since authCheck is called in initState in SplashPage and it will perform the authentication
        } else {
          print("There was an error signing out!");
        }
      },
    );
  }
}
