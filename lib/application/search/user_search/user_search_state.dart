part of 'user_search_bloc.dart';

@freezed
abstract class UserSearchState with _$UserSearchState {
  const factory UserSearchState({
    @required String usernameSearchTerm,
    @required String errorMessage,
    @required bool isSearching,
    @required bool isSearchCompleted,
    @required bool isThereMoreUserSearchPageToLoad,
    @required List<OurUser> userSearchResults,
    @required int nextPage,

  }) = _UserSearchState;

  factory UserSearchState.initial() => UserSearchState(
    usernameSearchTerm: '',
    errorMessage: '',
    isSearching: false,
    isSearchCompleted: false,
    isThereMoreUserSearchPageToLoad: true,
    userSearchResults: <OurUser>[],
    nextPage: 1,
  );
}