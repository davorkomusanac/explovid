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
  const factory TvShowListsUserProfileEvent.addTvShowToWatchlistPressed(TvShowDetails tvShowDetails) =
      _AddTvShowToWatchlistPressed;
  const factory TvShowListsUserProfileEvent.removeTvShowFromWatchlistPressed(TvShowDetails tvShowDetails) =
      _RemoveTvShowFromWatchlistPressed;
  //watched
  const factory TvShowListsUserProfileEvent.addTvShowToWatchedPressed(
      TvShowDetails tvShowDetails, String review, num rating, bool isSpoiler) = _AddTvShowToWatchedPressed;
  const factory TvShowListsUserProfileEvent.removeTvShowFromWatchedPressed({String tvShowTitle, int tvShowId}) =
      _RemoveTvShowFromWatchedPressed;
  const factory TvShowListsUserProfileEvent.updateTvShowWatchedReviewPressed(
      {String tvShowTitle, int tvShowId, String review, num rating, bool isSpoiler}) = _UpdateTvShowWatchedReviewPressed;
  //pagination
  const factory TvShowListsUserProfileEvent.nextTvShowWatchlistPageCalled() = _NextTvShowWatchlistPageCalled;
  const factory TvShowListsUserProfileEvent.nextTvShowWatchedPageCalled() = _NextTvShowWatchedPageCalled;
}
