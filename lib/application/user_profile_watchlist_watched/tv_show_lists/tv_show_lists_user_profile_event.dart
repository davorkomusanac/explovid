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
  const factory TvShowListsUserProfileEvent.addTvShowToWatchlistPressed(TvShowDetails tvShowDetails) =
      _AddTvShowToWatchlistPressed;
  //timestamp needed since Firebase doesn't allow removing from Array by index, only by value
  const factory TvShowListsUserProfileEvent.removeTvShowFromWatchlistPressed(TvShowDetails tvShowDetails) =
      _RemoveTvShowFromWatchlistPressed;
  const factory TvShowListsUserProfileEvent.addTvShowToWatchedPressed(
      TvShowDetails tvShowDetails, String review, num rating, bool isSpoiler) = _AddTvShowToWatchedPressed;
  const factory TvShowListsUserProfileEvent.removeTvShowFromWatchedPressed(TvShowDetails tvShowDetails) =
      _RemoveTvShowFromWatchedPressed;
}
