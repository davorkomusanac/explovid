part of 'edit_profile_bloc.dart';

@freezed
abstract class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    @required String fullName,
    @required String username,
    @required String bio,
    @required String errorMessage,
    @required bool isSubmitting,
  }) = _EditProfileState;

  factory EditProfileState.initial() => EditProfileState(
        fullName: '',
        username: '',
        bio: '',
        errorMessage: '',
        isSubmitting: false,
      );
}
