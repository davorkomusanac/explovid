part of 'other_user_profile_information_bloc.dart';

@freezed
abstract class OtherUserProfileInformationEvent with _$OtherUserProfileInformationEvent {
  const factory OtherUserProfileInformationEvent.otherUserProfileLoaded(OurUser ourUser) = _OtherUserProfileLoaded;
}
