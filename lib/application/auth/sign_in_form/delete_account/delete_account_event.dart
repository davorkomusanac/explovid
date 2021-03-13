part of 'delete_account_bloc.dart';

@freezed
abstract class DeleteAccountEvent with _$DeleteAccountEvent {
  const factory DeleteAccountEvent.checkAuthProvider() = _CheckAuthProvider;
  const factory DeleteAccountEvent.resetPasswordPressed() = _ResetPasswordPressed;
  const factory DeleteAccountEvent.deleteAccountPressed({String password}) = _DeleteAccountPressed;
}
