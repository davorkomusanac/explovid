part of 'current_user_profile_information_bloc.dart';

@freezed
abstract class CurrentUserProfileInformationEvent with _$CurrentUserProfileInformationEvent {
  const factory CurrentUserProfileInformationEvent.loadCurrentUserProfilePressed() = _LoadCurrentUserProfilePressed;
  const factory CurrentUserProfileInformationEvent.currentUserProfileLoaded(OurUser ourUser) = _CurrentUserProfileLoaded;
  const factory CurrentUserProfileInformationEvent.uploadProfilePhotoPressed() = _UploadProfilePhotoPressed;
}
