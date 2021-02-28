part of 'tv_show_lists_user_profile_bloc.dart';

@freezed
abstract class TvShowListsUserProfileState with _$TvShowListsUserProfileState {
  const factory TvShowListsUserProfileState({
    @required bool isLoading,
    @required List<FirestoreTvShowWatchlistDetails> tvShowWatchlist,
    @required List<FirestoreTvShowWatchedDetails> tvShowWatched,
    @required int nextPage,
    @required bool isThereMoreTvShowWatchlistPageToLoad,
    @required List<String> tvShowWatchlistArrayTitlesOnly,
    @required bool isSubmittingWatchlist,
    @required String errorMessage,
    @required bool isThereMoreTvShowWatchedPageToLoad,
    @required List<String> tvShowWatchedArrayTitlesOnly,
    @required bool isSubmittingWatched,
  }) = _TvShowListsUserProfileState;

  factory TvShowListsUserProfileState.initial() => TvShowListsUserProfileState(
        isLoading: true,
        tvShowWatchlist: [],
        tvShowWatched: [],
        nextPage: 1,
        isThereMoreTvShowWatchlistPageToLoad: true,
        tvShowWatchlistArrayTitlesOnly: [],
        isSubmittingWatchlist: false,
        errorMessage: "",
        isThereMoreTvShowWatchedPageToLoad: true,
        tvShowWatchedArrayTitlesOnly: [],
        isSubmittingWatched: false,
      );
}
