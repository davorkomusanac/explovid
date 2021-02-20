part of 'tv_show_lists_user_profile_bloc.dart';

@freezed
abstract class TvShowListsUserProfileState with _$TvShowListsUserProfileState {
  const factory TvShowListsUserProfileState({
    @required bool isLoading,
    @required List<FirestoreTvShowWatchlistDetails> tvShowWatchlist,
    @required List<FirestoreTvShowWatchedDetails> tvShowWatched,
  }) = _TvShowListsUserProfileState;

  factory TvShowListsUserProfileState.initial() => TvShowListsUserProfileState(
        isLoading: true,
        tvShowWatchlist: [],
        tvShowWatched: [],
      );
}
