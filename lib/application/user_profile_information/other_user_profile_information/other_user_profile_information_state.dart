part of 'other_user_profile_information_bloc.dart';

@freezed
abstract class OtherUserProfileInformationState with _$OtherUserProfileInformationState {
  const factory OtherUserProfileInformationState({
    @required bool isSearching,
    @required OurUser ourUser,
  }) = _OtherUserProfileInformationState;

  factory OtherUserProfileInformationState.initial() => OtherUserProfileInformationState(
        isSearching: true,
        ourUser: OurUser(
          uid: '',
          email: '',
          fullName: '',
          username: '',
          profilePhotoUrl: '',
          bio: '',
          followers: 0,
          following: 0,
          watchedLength: 0,
          watchlistLength: 0,
        ),
      );
}
