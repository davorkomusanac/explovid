part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @required String emailAddress,
    @required String password,
    @required String fullName,
    @required String errorMessage,
    @required bool isAuthStateChanged,
    @required bool isSubmitting,
    @required String snackBarMessageForPasswordReset,
    @required bool isUserTypingUsername,
    @required bool isUsernameAvailable,
    @required String username,
    @required String usernameErrorMessage,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        emailAddress: '',
        password: '',
        fullName: '',
        errorMessage: '',
        isAuthStateChanged: false,
        isSubmitting: false,
        snackBarMessageForPasswordReset: '',
        isUserTypingUsername: true,
        isUsernameAvailable: false,
        username: '',
        usernameErrorMessage: '',
      );
}
