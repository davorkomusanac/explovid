part of 'user_search_bloc.dart';

@freezed
abstract class UserSearchEvent with _$UserSearchEvent {
  const factory UserSearchEvent.searchUsernameChanged(String username) = _SearchUsernameChanged;
  const factory UserSearchEvent.deleteSearchPressed() = _DeleteSearchPressed;
  const factory UserSearchEvent.nextSearchResultPageCalled() = _NextSearchResultPageCalled;
  }

