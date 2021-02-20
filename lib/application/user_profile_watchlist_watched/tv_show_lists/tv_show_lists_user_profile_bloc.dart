import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:explovid/domain/models/firestore_models/firestore_tv_show_watched_details.dart';
import 'package:explovid/domain/models/firestore_models/firestore_tv_show_watchlist_details.dart';
import 'package:explovid/domain/models/tv_show_details/tv_show_details.dart';
import 'package:explovid/domain/user_profile_db/user_profile_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'tv_show_lists_user_profile_event.dart';
part 'tv_show_lists_user_profile_state.dart';

part 'tv_show_lists_user_profile_bloc.freezed.dart';

class TvShowListsUserProfileBloc extends Bloc<TvShowListsUserProfileEvent, TvShowListsUserProfileState> {
  final UserProfileRepository _userProfileRepository;
  StreamSubscription _tvShowWatchlistSubscription;
  StreamSubscription _tvShowWatchedSubscription;

  TvShowListsUserProfileBloc(this._userProfileRepository) : super(TvShowListsUserProfileState.initial());

  @override
  Future<void> close() {
    _tvShowWatchlistSubscription?.cancel();
    _tvShowWatchedSubscription?.cancel();
    return super.close();
  }

  @override
  Stream<TvShowListsUserProfileState> mapEventToState(
    TvShowListsUserProfileEvent event,
  ) async* {
    yield* event.map(
      loadTvShowToListInitial: (e) async* {
        _tvShowWatchlistSubscription?.cancel();
        _tvShowWatchlistSubscription = _userProfileRepository.getTvShowWatchlist().listen(
              (tvShowWatchlist) => add(TvShowListsUserProfileEvent.tvShowWatchlistUpdated(tvShowWatchlist)),
            );
        _tvShowWatchedSubscription?.cancel();
        _tvShowWatchedSubscription = _userProfileRepository.getTvShowWatched().listen(
              (tvShowWatched) => add(TvShowListsUserProfileEvent.tvShowWatchedUpdated(tvShowWatched)),
            );
      },
      tvShowWatchlistUpdated: (e) async* {
        yield state.copyWith(
          isLoading: false,
          tvShowWatchlist: e.tvShowWatchlist,
        );
      },
      tvShowWatchedUpdated: (e) async* {
        yield state.copyWith(
          isLoading: false,
          tvShowWatched: e.tvShowWatched,
        );
      },
      addTvShowToWatchlistPressed: (e) async* {
        _userProfileRepository.addTvShowToWatchlist(e.tvShowDetails);
      },
      removeTvShowFromWatchlistPressed: (e) async* {
        _userProfileRepository.removeTvShowFromWatchlist(e.tvShowDetails);
      },
      addTvShowToWatchedPressed: (e) async* {
        _userProfileRepository.addTvShowToWatched(e.tvShowDetails, e.review, e.rating, e.isSpoiler);
      },
      removeTvShowFromWatchedPressed: (e) async* {
        _userProfileRepository.removeTvShowFromWatched(e.tvShowDetails);
      },
    );
  }
}
