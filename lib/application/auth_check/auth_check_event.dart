part of 'auth_check_bloc.dart';

@freezed
abstract class AuthCheckEvent with _$AuthCheckEvent {
  const factory AuthCheckEvent.authCheckRequested() = _AuthCheckRequested;

  ///Add new events ? In this bloc or make a new one?
  ///Add sign out event? Sign In and register events in a new bloc?
}
