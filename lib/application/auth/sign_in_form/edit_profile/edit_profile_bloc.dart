import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:explovid/data/auth/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'edit_profile_bloc.freezed.dart';
part 'edit_profile_event.dart';
part 'edit_profile_state.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final AuthRepository _authRepository;

  EditProfileBloc(this._authRepository) : super(EditProfileState.initial());

  @override
  Stream<EditProfileState> mapEventToState(
    EditProfileEvent event,
  ) async* {
    yield* event.map(
      confirmEditProfilePressed: (e) async* {
        if (e.fullName.isNotEmpty) {
          if (e.isUsernameAvailable) {
            yield state.copyWith(
              isSubmitting: true,
              errorMessage: '',
            );
            String result = await _authRepository.editUserInformation(name: e.fullName, username: e.username, bio: e.bio);
            yield state.copyWith(
              isSubmitting: false,
              errorMessage: result,
            );
          } else {
            yield state.copyWith(
              errorMessage: "The chosen username is not available.",
            );
          }
        } else {
          yield state.copyWith(
            errorMessage: "Error! Your name cannot be empty.",
          );
        }
      },
    );
  }
}
