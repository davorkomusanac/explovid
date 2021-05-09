part of 'tv_show_lists_user_profile_bloc.dart';

@freezed
abstract class TvShowListsUserProfileEvent with _$TvShowListsUserProfileEvent {
  const factory TvShowListsUserProfileEvent.loadTvShowToListInitial() = _LoadTvShowToListInitial;
  const factory TvShowListsUserProfileEvent.tvShowWatchlistUpdated(
    List<FirestoreTvShowWatchlistDetails> tvShowWatchlist,
  ) = _TvShowWatchlistUpdated;
  const factory TvShowListsUserProfileEvent.tvShowWatchedUpdated(
    List<FirestoreTvShowWatchedDetails> tvShowWatched,
  ) = _TvShowWatchedUpdated;
  //watchlist
  const factory TvShowListsUserProfileEvent.addTvShowToWatchlistPressed({
    @required int tmdbId,
    @required String title,
    @required String posterPath,
  }) = _AddTvShowToWatchlistPressed;
  const factory TvShowListsUserProfileEvent.removeTvShowFromWatchlistPressed({
    @required int tmdbId,
    @required String title,
  }) = _RemoveTvShowFromWatchlistPressed;
  //watched
  const factory TvShowListsUserProfileEvent.addTvShowToWatchedPressed({
    @required int tmdbId,
    @required String title,
    @required String posterPath,
    @required String review,
    @required num rating,
    @required bool isSpoiler,
  }) = _AddTvShowToWatchedPressed;
  const factory TvShowListsUserProfileEvent.removeTvShowFromWatchedPressed({
    @required String tvShowTitle,
    @required int tvShowId,
  }) = _RemoveTvShowFromWatchedPressed;
  const factory TvShowListsUserProfileEvent.updateTvShowWatchedReviewPressed({
    @required String tvShowTitle,
    @required int tvShowId,
    @required String review,
    @required num rating,
    @required bool isSpoiler,
  }) = _UpdateTvShowWatchedReviewPressed;
  //pagination
  const factory TvShowListsUserProfileEvent.nextTvShowWatchlistPageCalled() = _NextTvShowWatchlistPageCalled;
  const factory TvShowListsUserProfileEvent.nextTvShowWatchedPageCalled() = _NextTvShowWatchedPageCalled;
}
