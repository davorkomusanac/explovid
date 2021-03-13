import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:explovid/data/auth/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'delete_account_bloc.freezed.dart';
part 'delete_account_event.dart';
part 'delete_account_state.dart';

class DeleteAccountBloc extends Bloc<DeleteAccountEvent, DeleteAccountState> {
  final AuthRepository _authRepository;

  DeleteAccountBloc(this._authRepository) : super(DeleteAccountState.initial());

  @override
  Stream<DeleteAccountState> mapEventToState(
    DeleteAccountEvent event,
  ) async* {
    yield* event.map(
      checkAuthProvider: (e) async* {
        String authProvider = _authRepository.getAuthProvider();
        yield state.copyWith(
          isRegisteredWithEmailAndPassword: authProvider == "password" ? true : false,
        );
      },
      resetPasswordPressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          snackBarPasswordResetResult: '',
        );
        String email = _authRepository.getUserEmail();
        String result = await _authRepository.resetPassword(email);
        yield state.copyWith(
          isSubmitting: false,
          snackBarPasswordResetResult: result,
        );
      },
      deleteAccountPressed: (e) async* {
        String password = e.password ?? "";
        yield state.copyWith(
          isSubmitting: true,
          errorMessage: "",
        );
        String result = await _authRepository.deleteCurrentUser(password: password);
        yield state.copyWith(
          isSubmitting: false,
          errorMessage: result,
        );
      },
    );
  }
}
