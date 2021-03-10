part of 'other_user_profile_tv_show_lists_bloc.dart';

@freezed
abstract class OtherUserProfileTvShowListsState with _$OtherUserProfileTvShowListsState {
  const factory OtherUserProfileTvShowListsState({
    @required bool isLoading,
    @required List<FirestoreTvShowWatchlistDetails> tvShowWatchlist,
    @required List<FirestoreTvShowWatchedDetails> tvShowWatched,
    @required int nextPage,
    @required bool isThereMoreTvShowWatchlistPageToLoad,
    @required bool isThereMoreTvShowWatchedPageToLoad,
  }) = _OtherUserProfileTvShowListsState;

  factory OtherUserProfileTvShowListsState.initial() => OtherUserProfileTvShowListsState(
    isLoading: true,
    tvShowWatchlist: [],
    tvShowWatched: [],
    nextPage: 1,
    isThereMoreTvShowWatchlistPageToLoad: true,
    isThereMoreTvShowWatchedPageToLoad: true,
  );
}
