part of 'other_user_profile_tv_show_lists_bloc.dart';

@freezed
abstract class OtherUserProfileTvShowListsEvent with _$OtherUserProfileTvShowListsEvent {
  const factory OtherUserProfileTvShowListsEvent.loadTvShowToListInitial({String userUid}) = _LoadTvShowToListInitial;
  const factory OtherUserProfileTvShowListsEvent.nextTvShowWatchlistPageCalled({String userUid}) = _NextTvShowWatchlistPageCalled;
  const factory OtherUserProfileTvShowListsEvent.nextTvShowWatchedPageCalled({String userUid}) = _NextTvShowWatchedPageCalled;
}
