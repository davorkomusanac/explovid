part of 'delete_account_bloc.dart';

@freezed
abstract class DeleteAccountState with _$DeleteAccountState {
  const factory DeleteAccountState({
    @required bool isRegisteredWithEmailAndPassword,
    @required String errorMessage,
    @required bool isSubmitting,
    @required String snackBarPasswordResetResult,
  }) = _DeleteAccountState;

  factory DeleteAccountState.initial() => DeleteAccountState(
        isRegisteredWithEmailAndPassword: false,
        errorMessage: '',
        isSubmitting: false,
        snackBarPasswordResetResult: '',
      );
}
