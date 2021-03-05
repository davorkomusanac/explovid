import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:explovid/constants.dart';
import 'package:explovid/domain/auth/auth_repository.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final AuthRepository _authRepository;

  SignInFormBloc(this._authRepository) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: e.email,
          isAuthStateChanged: false,
          errorMessage: '',
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: e.password,
          isAuthStateChanged: false,
          errorMessage: '',
        );
      },
      passwordConfirmationChanged: (e) async* {
        yield state.copyWith(
          confirmation: e.passwordConfirmation,
          isAuthStateChanged: false,
          errorMessage: '',
        );
      },
      fullNameChanged: (e) async* {
        yield state.copyWith(
          fullName: e.fullName,
          isAuthStateChanged: false,
          errorMessage: '',
        );
      },
      usernameChanged: (e) async* {
        yield state.copyWith(
          isUserTypingUsername: true,
        );
      },
      usernameBeingChecked: (e) async* {
        bool isAvailable = await _authRepository.isUsernameAvailable(e.username.trim());
        if (isAvailable) {
          yield state.copyWith(
            isUsernameAvailable: true,
            isUserTypingUsername: false,
            username: e.username.trim(),
          );
        } else {
          yield state.copyWith(
            isUsernameAvailable: false,
            isUserTypingUsername: false,
          );
        }
      },
      registerUsernamePressed: (e) async* {
        String result = await _authRepository.createUsername(state.username);
        yield state.copyWith(
          usernameErrorMessage: result,
        );
      },
      registerPressed: (e) async* {
        final bool isPasswordLongEnough = state.password.trim().length >= 6;
        final bool isPasswordMatchingConfirmation = state.password.trim() == state.confirmation.trim();
        final bool isFullNameNotEmpty = state.fullName.trim().isNotEmpty;
        final bool isUsernameAvailable = state.isUsernameAvailable;

        //Do basic form validation (no empty strings, long enough, and matching..
        if (isFullNameNotEmpty) {
          if (isPasswordLongEnough) {
            if (isPasswordMatchingConfirmation) {
              if (isUsernameAvailable) {
                //send state to show ProgressIndicator
                yield state.copyWith(
                  isSubmitting: true,
                  isAuthStateChanged: false,
                  errorMessage: '',
                );
                //Try to create user, if successful String result will be = 'success', otherwise it will hold an exception
                final String result = await _authRepository.registerWithEmailAndPassword(
                  email: state.emailAddress.trim(),
                  password: state.password.trim(),
                  fullName: state.fullName.trim(),
                  username: state.username.trim(),
                );
                //if successful notify state listeners to change authState
                if (result == kSuccess) {
                  yield state.copyWith(
                    isSubmitting: false,
                    isAuthStateChanged: true,
                    errorMessage: '',
                  );
                  //if failed, show the exception inside errorMessage
                } else {
                  yield state.copyWith(
                    isSubmitting: false,
                    isAuthStateChanged: false,
                    errorMessage: result,
                  );
                }
              } else {
                //Had to put empty message since snackBar keeps getting called constantly
                yield state.copyWith(errorMessage: "");
              }
            } else {
              yield state.copyWith(errorMessage: "Error! Passwords must match.");
            }
          } else {
            yield state.copyWith(errorMessage: "Error! Your password must be at least 6 characters long");
          }
        } else {
          yield state.copyWith(errorMessage: "Error! Your name cannot be empty");
        }
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        final bool isEmailNotEmpty = state.emailAddress.trim().isNotEmpty;
        final bool isPasswordNotEmpty = state.password.trim().isNotEmpty;

        if (isEmailNotEmpty) {
          if (isPasswordNotEmpty) {
            //send state to show ProgressIndicator
            yield state.copyWith(
              isSubmitting: true,
              isAuthStateChanged: false,
              errorMessage: '',
            );
            //Try to sign in user, if successful String result will be = 'success', otherwise it will hold an exception
            final String result = await _authRepository.signInWithEmailAndPassword(
              email: state.emailAddress.trim(),
              password: state.password.trim(),
            );
            //if successful notify state listeners to change authState
            if (result == kSuccess) {
              yield state.copyWith(
                isSubmitting: false,
                isAuthStateChanged: true,
                errorMessage: '',
              );
              //if failed, show the exception inside errorMessage
            } else {
              yield state.copyWith(
                isSubmitting: false,
                isAuthStateChanged: false,
                errorMessage: result,
              );
            }
          } else {
            yield state.copyWith(
              isAuthStateChanged: false,
              errorMessage: "error! Your password cannot be empty",
            );
          }
        } else {
          yield state.copyWith(
            isAuthStateChanged: false,
            errorMessage: "Error! Your email cannot be empty",
          );
        }
      },
      signInWithGooglePressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          isAuthStateChanged: false,
          errorMessage: '',
        );
        final String result = await _authRepository.signInWithGoogle();
        //if successful notify state listeners to change authState
        if (result == kSuccess) {
          yield state.copyWith(
            isSubmitting: false,
            isAuthStateChanged: true,
            errorMessage: '',
          );
          //if failed, show the exception inside errorMessage
        } else {
          yield state.copyWith(
            isSubmitting: false,
            isAuthStateChanged: false,
            errorMessage: result,
          );
        }
      },
      // ignore: missing_return
      signInWithApplePressed: (e) async* {
        //currently not implemented a Mac is needed for the signInWithApple package
        print("Not implemented yet");
      },
      resetPasswordPressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          snackBarMessageForPasswordReset: '',
        );
        final String result = await _authRepository.resetPassword(e.email);
        yield state.copyWith(
          isSubmitting: false,
          snackBarMessageForPasswordReset: result,
        );
      },
    );
  }
}
