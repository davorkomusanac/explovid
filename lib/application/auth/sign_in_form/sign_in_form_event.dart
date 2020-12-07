part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  //TextFields values which can be changed during registration/login
  const factory SignInFormEvent.emailChanged(String email) = _EmailChanged;
  const factory SignInFormEvent.passwordChanged(String password) = _PasswordChanged;
  const factory SignInFormEvent.passwordConfirmationChanged(String passwordConfirmation) = _PasswordConfirmationChanged;
  const factory SignInFormEvent.fullNameChanged(String fullName) = _FullNameChanged;
  //Registration and sign in events which can happen
  const factory SignInFormEvent.registerPressed() = _RegisterPressed;
  const factory SignInFormEvent.signInWithEmailAndPasswordPressed() = _SignInWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithGooglePressed() = _SignInWithGooglePressed;
  const factory SignInFormEvent.signInWithApplePressed() = _SignInWithApplePressed;
}
