part of 'current_user_profile_information_bloc.dart';

@freezed
abstract class CurrentUserProfileInformationState with _$CurrentUserProfileInformationState {
  const factory CurrentUserProfileInformationState({
    @required bool isSearching,
    @required OurUser ourUser,
  }) = _CurrentUserProfileInformationState;

  factory CurrentUserProfileInformationState.initial() => CurrentUserProfileInformationState(
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
