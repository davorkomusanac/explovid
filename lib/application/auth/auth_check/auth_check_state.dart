part of 'auth_check_bloc.dart';

@freezed
abstract class AuthCheckState with _$AuthCheckState {
  const factory AuthCheckState.initial() = _Initial;
  const factory AuthCheckState.authenticated() = _Authenticated;
  const factory AuthCheckState.unauthenticated() = _Unauthenticated;
  const factory AuthCheckState.emailNotVerified() = _EmailNotVerified;
  const factory AuthCheckState.usernameNotGiven() = _UsernameNotGiven;
}
