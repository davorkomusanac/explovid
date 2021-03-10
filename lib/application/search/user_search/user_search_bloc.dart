import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:explovid/data/models/our_user/our_user.dart';
import 'package:explovid/data/user_profile_db/user_actions_db/user_actions_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'user_search_event.dart';
part 'user_search_state.dart';
part 'user_search_bloc.freezed.dart';

class UserSearchBloc extends Bloc<UserSearchEvent, UserSearchState> {
  UserActionsRepository _userActionsRepository;
  UserSearchBloc(this._userActionsRepository) : super(UserSearchState.initial());

  @override
  Stream<UserSearchState> mapEventToState(
    UserSearchEvent event,
  ) async* {
    yield* event.map(
      searchUsernameChanged: (e) async* {
        yield state.copyWith(
          usernameSearchTerm: e.username.trim(),
          errorMessage: '',
          isSearching: e.username.trim().isEmpty ? false : true,
          isSearchCompleted: false,
          isThereMoreUserSearchPageToLoad: true,
        );
        if (e.username.trim().isNotEmpty) {
          List<OurUser> searchResults = await _userActionsRepository.searchUsersWithUsername(
            usernameSearchTerm: e.username.trim(),
          );
          if (searchResults.isEmpty) {
            yield state.copyWith(
              errorMessage: "No user found. Try again.",
              isSearching: false,
              isSearchCompleted: false,
            );
          } else {
            yield state.copyWith(
              usernameSearchTerm: e.username.trim(),
              errorMessage: '',
              isSearching: false,
              isSearchCompleted: true,
              isThereMoreUserSearchPageToLoad: searchResults.length < 10 ? false : true,
              userSearchResults: searchResults,
            );
          }
        }
      },
      deleteSearchPressed: (e) async* {
        yield state.copyWith(
          usernameSearchTerm: '',
          errorMessage: '',
          isSearching: false,
          isSearchCompleted: false,
          isThereMoreUserSearchPageToLoad: false,
          userSearchResults: <OurUser>[],
          nextPage: 1,
        );
      },
      nextSearchResultPageCalled: (e) async* {
        bool isThereMore = false;
        if (state.isThereMoreUserSearchPageToLoad) {
          var newSearchUsernamePage = await _userActionsRepository.getSearchUsersWithUsernameNextPage(
            usernameSearchTerm: state.usernameSearchTerm,
            lastUserInList: state.userSearchResults.last,
          );
          isThereMore = newSearchUsernamePage.length < 10 ? false : true;
          for (OurUser searchUserResult in newSearchUsernamePage) {
            state.userSearchResults.add(searchUserResult);
          }
        }
        yield state.copyWith(
          nextPage: state.nextPage + 1,
          isThereMoreUserSearchPageToLoad: isThereMore,
        );
      },
    );
  }
}
