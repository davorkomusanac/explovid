part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @required String emailAddress,
    @required String password,
    @required String confirmation,
    @required String fullName,
    @required String errorMessage,
    @required bool isAuthStateChanged,
    @required bool isSubmitting,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        emailAddress: '',
        password: '',
        confirmation: '',
        fullName: '',
        errorMessage: '',
        isAuthStateChanged: false,
        isSubmitting: false,
      );
}

/// maybe put \n at errorMessage so that ui doesn't move when error message appears?
